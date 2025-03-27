package com.kh.member.controller;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/main.me")
public class GoogleLoginToMainController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 세션에서 로그인된 회원 객체 꺼내오기
        HttpSession session = request.getSession();
        Member loginMember = (Member) session.getAttribute("loginMember");

        
        
        
        // DB에 회원 존재 여부 확인
        Member dbMember = new MemberService().selectMemberByName(loginMember);

        if (dbMember.getMemNo() != 0) {
        	
        	// 기존 회원 → mainPage.jsp 이동
            request.getRequestDispatcher("views/common/mainPage.jsp").forward(request, response);
            
            
            
        } else {
        	
        	// 신규 회원 → googlesignin.jsp로 이동 (name, email 전달)
            request.setAttribute("googleName", loginMember.getMemName());
            request.setAttribute("googleEmail", loginMember.getEmail());
            request.setAttribute("googleSnsKey", loginMember.getSnsKey());
            request.getRequestDispatcher("views/member/googleSignin.jsp").forward(request, response);
            System.out.println(loginMember.getMemName());
            System.out.println(loginMember.getEmail());
            System.out.println(loginMember.getSnsKey());
            
        }
    }
}
