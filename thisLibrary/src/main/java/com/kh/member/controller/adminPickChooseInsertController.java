package com.kh.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Attachment;
import com.kh.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;
import javax.servlet.http.HttpServletRequest;
/**
 * Servlet implementation class adminPickChooseInsertController
 */
@WebServlet("/pickinsert.pi")
public class adminPickChooseInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminPickChooseInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload .isMultipartContent(request)) {
//			1_1. 전송용량제한
			int maxSize = 10 * 1024 * 1024; //10Mbyte 를 byte 로 계산하는 식.
					
//					1_2 저장시킬 폴더경로의 물리적인 경로
					String savePath = request.getSession().getServletContext().getRealPath("/resources/thumbnail_upfiles/");
//			2. 전달된 파일 업로드를 해보자. 
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8", new MyFileRenamePolicy());
			
//			3. db에 기록할 값을 뽑자. 
//			두번 뽑아야 하는데 첫번째는
//			board insert 
			Member m = new Member();
			 m.setBoardWriter(multiRequest.getParameter("userNo"));
			 m.setBoardTitle(multiRequest.getParameter("title"));
			 m.setBoardContent(multiRequest.getParameter("content"));
			//attachment 에 여러번 insert 할 데이터 뽑아보자. 
			ArrayList<Attachment> list = new ArrayList<Attachment>();
			for(int i=1;i<=4;i++) {
				String key = "file" + i;
				if(multiRequest.getOriginalFileName(key) != null) {
//			원본파일의 네임을 알려주는 getOriginalFileName
//					첨부파일이 존재할 경우에 
//					Attachment 라는 객체를 생성을 할거고, + 원본명, 수정명, 폴더경로, 파일레벨
					Attachment at = new Attachment();
					at.setOriginName(multiRequest.getOriginalFileName(key));
					at.setChangeName(multiRequest.getFilesystemName(key));
					at.setFilePath("resources/thumbnail_upfiles/");
					if(i==1) {//대표이미지 일 경우~  i = 1이 올것이고, 
						at.setFileLevel(1);
					}else {//상세 이미지 일 경우 file level을 2 로 해준다.
						at.setFileLevel(2);
					}
					list.add(at);
				}
			}
				int result=new MemberService().insertphoto(m,list);	
					
				if(result>0) {
//					1이상이면 성공한거다. 
//					/jsp/list.th url 을 재요청 해보자. \=> 목록페이지로 가게 되는거다.
					request.getSession().setAttribute("alertMsg", "성공띠");
					response.sendRedirect(request.getContextPath()+"/list.th");
				}else {
//					실패.. 0이다. 
//					
				}
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
