package com.example.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;  // 🔥 꼭 추가해야 함!

@WebServlet("/GoogleLogin")
public class GoogleLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String idToken = request.getParameter("id_token");

        if (idToken != null) {
            String GOOGLE_TOKEN_INFO_URL = "https://oauth2.googleapis.com/tokeninfo?id_token=" + idToken;
            
            // 구글 API 요청하여 ID 토큰 검증
            URL url = new URL(GOOGLE_TOKEN_INFO_URL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");

            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), StandardCharsets.UTF_8));
            StringBuilder responseStr = new StringBuilder();
            String inputLine;
            while ((inputLine = in.readLine()) != null) {
                responseStr.append(inputLine);
            }
            in.close();

            // 🔥 JSON 응답 파싱 (이 부분에서 오류 발생했었음!)
            JSONObject jsonResponse = new JSONObject(responseStr.toString());
            String email = jsonResponse.getString("email");
            String name = jsonResponse.getString("name");
            String picture = jsonResponse.optString("picture", "");

            // 세션에 저장
            HttpSession session = request.getSession();
            session.setAttribute("user_email", email);
            session.setAttribute("user_name", name);
            session.setAttribute("user_picture", picture);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"status\":\"success\", \"name\":\"" + name + "\", \"email\":\"" + email + "\"}");
        } else {
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"status\":\"error\", \"message\":\"ID 토큰이 없습니다.\"}");
        }
    }
}
