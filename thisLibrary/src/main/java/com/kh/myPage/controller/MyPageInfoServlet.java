package com.kh.myPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.kh.member.model.vo.Member;
import com.kh.myPage.model.service.FollowService;
import com.kh.myPage.model.vo.FollowVo;

/**
 * Servlet implementation class MyPageInfoServlet
 */
@WebServlet("/showFollowing.my")
public class MyPageInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("test");
		 int memberId = ((Member) request.getSession().getAttribute("loginMember")).getMemNo();

		 	ArrayList<FollowVo> list =new FollowService().getFollowerCount(memberId);
		 	
		 	FollowVo fv = new FollowVo();
		 	fv.getFollowerId();
		 	fv.getFollowingId();
		 	 	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
