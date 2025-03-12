package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.service.MemberService;

/**
 * Servlet implementation class NaverController
 */
@WebServlet("/naver.bo")
public class NaverController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NaverController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = (String)request.getAttribute("id");
		String nickname = (String)request.getAttribute("nickname");
        String email = (String)request.getAttribute("email");
        String mobile = (String)request.getAttribute("mobile");

        // 여기서 nickname과 email을 처리합니다.
        System.out.println("id: " + id);
        System.out.println("Nickname: " + nickname);
        System.out.println("Email: " + email);
        System.out.println("mobile" + mobile);

        // 응답 처리
       int result = new MemberService().naverInsert(id,nickname, email,mobile);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
