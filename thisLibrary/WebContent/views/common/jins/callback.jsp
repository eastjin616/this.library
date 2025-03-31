<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>네이버 로그인</title>
</head>
<%
    String code = request.getParameter("code");
    String state = request.getParameter("state");

    System.out.println("📌 [NAVER CALLBACK] 호출됨");
    System.out.println("✅ code = " + code);
    System.out.println("✅ state = " + state);
%>
<body>
<%
    String clientId = "mLwWunRgrPcHxEKgKNbc"; // 네이버 클라이언트 아이디
    String clientSecret = "OKdGAwmGNt"; // 네이버 클라이언트 시크릿
    String redirectURI = URLEncoder.encode("http://192.168.20.49:8777/this/views/common/jins/callback.jsp", "UTF-8");

    String apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code"
            + "&client_id=" + clientId
            + "&client_secret=" + clientSecret
            + "&redirect_uri=" + redirectURI
            + "&code=" + code
            + "&state=" + state;

    String accessToken = "";

    try {
        // 1️⃣ 네이버 API에서 Access Token 요청
        URL url = new URL(apiURL);
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");
        int responseCode = con.getResponseCode();
        BufferedReader br;

        if (responseCode == 200) {
            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
        } else {
            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
        }

        StringBuilder res = new StringBuilder();
        String inputLine;
        while ((inputLine = br.readLine()) != null) {
            res.append(inputLine);
        }
        br.close();

        if (responseCode == 200) {
            // 2️⃣ JSON 응답에서 Access Token 추출
            JSONParser parser = new JSONParser();
            JSONObject jsonResponse = (JSONObject) parser.parse(res.toString());
            accessToken = (String) jsonResponse.get("access_token");

            // 3️⃣ 네이버 사용자 정보 요청
            String userInfoURL = "https://openapi.naver.com/v1/nid/me";
            URL userInfoUrl = new URL(userInfoURL);
            HttpURLConnection userInfoCon = (HttpURLConnection) userInfoUrl.openConnection();
            userInfoCon.setRequestMethod("GET");
            userInfoCon.setRequestProperty("Authorization", "Bearer " + accessToken);

            int userInfoResponseCode = userInfoCon.getResponseCode();
            BufferedReader userInfoBr;

            if (userInfoResponseCode == 200) {
                userInfoBr = new BufferedReader(new InputStreamReader(userInfoCon.getInputStream()));
            } else {
                userInfoBr = new BufferedReader(new InputStreamReader(userInfoCon.getErrorStream()));
            }

            StringBuilder userInfoRes = new StringBuilder();
            while ((inputLine = userInfoBr.readLine()) != null) {
                userInfoRes.append(inputLine);
            }
            userInfoBr.close();

            // 4️⃣ 사용자 정보 JSON 처리
            if (userInfoResponseCode == 200) {
                JSONObject userJson = (JSONObject) parser.parse(userInfoRes.toString());
                JSONObject response1 = (JSONObject) userJson.get("response");

                String id = (String) response1.get("id"); // 네이버 고유 ID
                String nickname = (String) response1.get("nickname");
                String email = (String) response1.get("email");
                String mobile = (String) response1.get("mobile");

                // 5️⃣ 서블릿으로 리다이렉트하면서 데이터 전달
                String contextPath = request.getContextPath();
                String redirectURL = contextPath + "/naverLogin.me?naverKey=" + id
                        + "&nickName=" + URLEncoder.encode(nickname, "UTF-8")
                        + "&email=" + URLEncoder.encode(email, "UTF-8")
                        + "&mobile=" + URLEncoder.encode(mobile, "UTF-8"); 

                
                System.out.println("✅ [리디렉트 예정] id = " + id);
                System.out.println("✅ nickname = " + nickname);
                System.out.println("✅ email = " + email);
                System.out.println("✅ redirectURL = " + redirectURL);
                System.out.println("📞 mobile = " + mobile);
                
                response.sendRedirect(redirectURL);
            } else {
                out.println("<p>사용자 정보 요청 실패. Error Code: " + userInfoResponseCode + "</p>");
            }
        } else {
            out.println("<p>토큰 요청 실패. Error Code: " + responseCode + "</p>");
        }
    } catch (Exception e) {
        out.println("<p>오류 발생: " + e.getMessage() + "</p>");
    }
%>
</body>
</html>
