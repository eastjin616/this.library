package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class KaKaoSigninController
 */
@WebServlet("/kakaoSignin.me")
public class KaKaoSigninController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KaKaoSigninController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String kakaoNickName = request.getParameter("nickName");
		String kakaoEmail = request.getParameter("email");
		String kakaoKey = request.getParameter("key");

		request.setAttribute("kakaoNickName", kakaoNickName);
		request.setAttribute("kakaoEmail", kakaoEmail);
		request.setAttribute("kakaoKey",kakaoKey);
		
<<<<<<< HEAD
		request.getRequestDispatcher("views/member/signin.jsp").forward(request, response);
		
		System.out.println("ㅆㅂ");
=======
		request.getRequestDispatcher("views/member/kakaoSignin.jsp").forward(request, response);
		
>>>>>>> kakaoLogin
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
