package com.kh.member.controller;

import java.io.IOException;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.gson.JsonObject;

import com.kh.member.model.vo.Member; 

@WebServlet("/googleLogin.me")
public class GoogleLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String CLIENT_ID = "92235338763-ljnuftbgbj6nn3ol95bno95j36v9hsci.apps.googleusercontent.com";

	public GoogleLoginController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String idTokenString = request.getParameter("id_token");
		JsonObject result = new JsonObject();

		try {
			GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(
					new NetHttpTransport(),
					JacksonFactory.getDefaultInstance())
					.setAudience(Collections.singletonList(CLIENT_ID))
					.build();

			GoogleIdToken idToken = verifier.verify(idTokenString);

			if (idToken != null) {
				Payload payload = idToken.getPayload();

				String email = payload.getEmail();
				String name = (String) payload.get("name");

				// ✅ 추가 시작: 로그인한 회원 정보를 세션에 저장
				Member loginMember = new Member(); // ✅
				loginMember.setEmail(email);       // ✅
				loginMember.setMemName(name);     // ✅ 이름 필드는 클래스에 맞게 조정 필요

				HttpSession session = request.getSession();       // ✅
				session.setAttribute("loginMember", loginMember); // ✅
				// ✅ 추가 끝

				result.addProperty("status", "success");
				result.addProperty("redirect", "views/common/mainPage.jsp");

			} else {
				result.addProperty("status", "fail");
				result.addProperty("message", "유효하지 않은 ID 토큰입니다.");
			}
		} catch (Exception e) {
			result.addProperty("status", "fail");
			result.addProperty("message", "서버 오류: " + e.getMessage());
		}

		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().write(result.toString());
	}
}
