package com.kh.fna.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.fna.model.service.FnaService;
import com.kh.fna.model.vo.Fna;


/**
 * Servlet implementation class fnaSelectController
 */
@WebServlet("/fnaSelect.fa")
public class AjaxSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxSelectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int scNO = Integer.parseInt(request.getParameter("bno"));
        System.out.println("fnaSelectController 도착 - bno: " + scNO);

        ArrayList<Fna> list = new FnaService().selectList(scNO);

        response.setContentType("application/json; charset=utf-8");
        new Gson().toJson(list, response.getWriter());

        // 디버깅용
        if (list == null) {
            System.out.println("list가 null입니다.");
        } else if (list.isEmpty()) {
            System.out.println("list는 비어 있습니다.");
        } else {
            System.out.println("서블릿에서 list: " + list);
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
