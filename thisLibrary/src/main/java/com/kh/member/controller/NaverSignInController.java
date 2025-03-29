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
@WebServlet("/NaverLogin.me")
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

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String naverNickName = request.getParameter("nickName");
		    String naverEmail = request.getParameter("email");
		    String naverKey = request.getParameter("NaverKey");

		    if (naverKey == null || naverKey.trim().isEmpty()) {
		        response.sendRedirect(request.getContextPath() + "/views/member/loginform.jsp");
		        return;
		    }

		    Member loginMember = new MemberService().naverSnsKey(naverKey);

		    if (loginMember == null) { // 네이버 로그인으로 가입한 적 없음
		        request.setAttribute("naverNickName", naverNickName);
		        request.setAttribute("naverEmail", naverEmail);
		        request.setAttribute("naverKey", naverKey);
		        request.getRequestDispatcher("views/member/naverSignin.jsp").forward(request, response);
		    } else {  // 이미 회원이면 자동 로그인 후 메인 페이지로 이동
		        request.getSession().setAttribute("loginMember", loginMember);

		        // JavaScript alert 추가
		        response.setContentType("text/html; charset=UTF-8");
		        PrintWriter out = response.getWriter();
		        out.println("<script>");
		        out.println("alert('네이버 로그인 성공!');");
		        out.println("location.href='" + request.getContextPath() + "/index.jsp';");
		        out.println("</script>");
		        out.close();
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
