package com.kh.common;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

/**
 * Servlet implementation class Follow
 */
@WebServlet("/follow")
public class Follow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Follow() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("application/json");
	        request.setCharacterEncoding("UTF-8");
	        
	        System.out.println("서블릿");

	        BufferedReader reader = request.getReader();
	        StringBuilder stringBuilder = new StringBuilder();
	        String line;
	        while ((line = reader.readLine()) != null) {
	            stringBuilder.append(line);
	        }
	        reader.close();

	        JSONObject requestData = new JSONObject(stringBuilder.toString());
	        int userId = requestData.getInt("userId");
	        String action = requestData.getString("action");

	        JSONObject responseData = new JSONObject();

	        try {
	            // 여기에 팔로우/언팔로우 로직을 추가
	            if (action.equals("follow")) {
	                // 예: 데이터베이스에 팔로우 데이터 추가
	                System.out.println("User " + userId + " followed.");
	            } else if (action.equals("unfollow")) {
	                // 예: 데이터베이스에서 팔로우 데이터 삭제
	                System.out.println("User " + userId + " unfollowed.");
	            }

	            responseData.put("success", true);
	        } catch (Exception e) {
	            responseData.put("success", false);
	            responseData.put("message", "An error occurred.");
	        }

	        PrintWriter out = response.getWriter();
	        out.print(responseData.toString());
	        out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
