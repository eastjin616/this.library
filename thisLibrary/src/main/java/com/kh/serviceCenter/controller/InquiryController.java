package com.kh.serviceCenter.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.serviceCenter.model.service.ServiceCenterService;
import com.kh.serviceCenter.model.vo.serviceCenter;

/**
 * Servlet implementation class Inquiry
 */
@WebServlet("/Inquiry.in")
public class InquiryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		 int memNo = Integer.parseInt(request.getParameter("memNo"));
		String name = request.getParameter("userName");
	    String email = request.getParameter("userEmail");
	    String phone = request.getParameter("phone");
	    String title = request.getParameter("title");
	    String content = request.getParameter("content");
	    
	    serviceCenter sc = new serviceCenter(memNo, title,content,name, email, phone);
	    
	    
		int result = new ServiceCenterService().insertInquiry(sc);

		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "1:1 문의가 등록되었습니다.");
			response.sendRedirect(request.getContextPath()+ "/views/serviceCenter/customerService.jsp");

		}else {
				
			request.setAttribute("errorMsg", "일반게시판 등록 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
