package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class NaverSignInController
 */
@WebServlet("/NaverSignIn.me")
public class NaverSignInController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public NaverSignInController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String naverNickName = request.getParameter("nickName");
		String naverEmail = request.getParameter("email");
		String naverKey = request.getParameter("NaverKey");

		request.setAttribute("naverNickName", naverNickName);
		request.setAttribute("naverEmail", naverEmail);
		request.setAttribute("naverKey",naverKey);
		
		Member loginMember = new MemberService().naverSnsKey(naverKey);
		
		if(loginMember == null) { // 카카오 로그인으로 회원가입 해본적 없는 사람 => 회원가입 폼으로 이동
			request.getRequestDispatcher("views/member/naverSignin.jsp").forward(request, response);
		}else {  // 카카오 로그인으로 한번이라도 회원가입 해본적 있는 사람 => 로그인 성공
			request.getSession().setAttribute("loginMember", loginMember);
			response.sendRedirect(request.getContextPath());
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
