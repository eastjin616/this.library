package com.kh.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;

/**
 * Servlet implementation class BoardAnswerDeleteController
 */
@WebServlet("/rDelete.bo")
public class BoardAnswerDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardAnswerDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int rno = Integer.parseInt(request.getParameter("rno"));
		
		int result = new BoardService().deleteBoardAnswer(rno);
		System.out.println("result : " + result);
		if(result > 0) { // 댓글 삭제 성공
			request.getSession().setAttribute("alertMsg", "성공적으로 댓글이 삭제 되었습니다.");
			response.sendRedirect(request.getContextPath() + "/boardDetail.jsp");
		}else {
			request.setAttribute("errorMsg", "댓글 삭제 실패!");
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
