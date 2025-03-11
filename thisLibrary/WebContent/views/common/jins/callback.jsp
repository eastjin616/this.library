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
<body>
<%
    String clientId = "mLwWunRgrPcHxEKgKNbc"; // 애플리케이션 클라이언트 아이디값
    String clientSecret = "OKdGAwmGNt"; // 애플리케이션 클라이언트 시크릿값
    String code = request.getParameter("code");
    String state = request.getParameter("state");
    String redirectURI = URLEncoder.encode("http://localhost:8777/this/views/common/jins/callback.jsp", "UTF-8");
    String apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code"
            + "&client_id=" + clientId
            + "&client_secret=" + clientSecret
            + "&redirect_uri=" + redirectURI
            + "&code=" + code
            + "&state=" + state;

    String accessToken = "";
    
    try {
        URL url = new URL(apiURL);
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");
        int responseCode = con.getResponseCode();
        BufferedReader br;

        if (responseCode == 200) { // 정상 호출
            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
        } else {  // 에러 발생
            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
        }

        StringBuilder res = new StringBuilder();
        String inputLine;
        while ((inputLine = br.readLine()) != null) {
            res.append(inputLine);
        }
        br.close();

        if (responseCode == 200) {
            // JSON 응답 처리
            JSONParser parser = new JSONParser();
            JSONObject jsonResponse = (JSONObject) parser.parse(res.toString());
            accessToken = (String) jsonResponse.get("access_token");

            // 사용자 정보 요청
            String userInfoURL = "https://openapi.naver.com/v1/nid/me";  // 사용자 정보 API URL
            URL userInfoUrl = new URL(userInfoURL);
            HttpURLConnection userInfoCon = (HttpURLConnection) userInfoUrl.openConnection();
            userInfoCon.setRequestMethod("GET");
            userInfoCon.setRequestProperty("Authorization", "Bearer " + accessToken);  // 액세스 토큰을 Authorization 헤더에 포함

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

            // 사용자 정보 JSON 처리
            if (userInfoResponseCode == 200) {
                JSONObject userJson = (JSONObject) parser.parse(userInfoRes.toString());
                JSONObject response1 = (JSONObject) userJson.get("response");

                // 사용자 정보 출력
                String nickname = (String) response1.get("nickname");
                String email = (String) response1.get("email");

                // 서블릿으로 사용자 정보 전달
                request.setAttribute("nickname", nickname);
                request.setAttribute("email", email);
                
                // 서블릿으로 포워딩
                RequestDispatcher dispatcher = request.getRequestDispatcher("/naver.bo"); // 서블릿 경로로 변경
                dispatcher.forward(request, response);
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
