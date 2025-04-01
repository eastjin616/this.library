<%@page import="com.kh.fna.controller.AjaxSelectController" %>
  <%@page import="com.kh.fna.model.vo.Fna" %>
    <%@page import="java.util.ArrayList" %>
      <%@page import="com.kh.board.model.vo.Attachment" %>
        <%@page import="com.kh.serviceCenter.model.vo.serviceCenter" %>
          <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
            <% ArrayList<Fna> list = (ArrayList<Fna>)request.getAttribute("list");
                Attachment at = (Attachment)request.getAttribute("at");
                
                Fna fna = (Fna)request.getAttribute("fna");
                %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                  <meta charset="UTF-8">
                  <meta name="viewport" content="width=device-width, initial-scale=1.0">
                  <title>Document1</title>
                  <link rel="stylesheet"
                    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=keyboard_double_arrow_down" />

                  <style>
                    /* 전체 레이아웃 */
                    .wrap2 {
                      width: 100%;
                      display: flex;
                    }

                    #left {
                      width: 100%;
                      background-color: #f9f9f9;
                      display: flex;
                      justify-content: center;
                      position: relative;
                    }

                    #leftBox {
                      width: 100%;
                      border-radius: 2em;
                      margin: 10%;
                      padding: 20px;
                      background: white;
                      box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
                      text-align: center;
                      position: relative;
                      overflow: hidden;
                    }

                    #title {
                      font-size: 35px;
                      font-weight: bold;
                    }

                    /* 질문 박스 */
                    .questionBox1 {
                      font-size: larger;
                      padding: 10px;
                      box-sizing: border-box;
                      font-weight: 800;
                      height: 70px;
                      display: flex;
                      position: relative;
                      box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
                      background-color: lightgrey;
                    }

                    .questionBox1>a {
                      text-decoration: none;
                      color: black;
                      display: block;
                      width: 100%;
                      height: 100%;
                      line-height: 50px;
                      text-align: left;
                      position: relative;
                      overflow: hidden;
                      border-radius: 5px;
                      font-size: 16px;
                      font-weight: bold;
                      z-index: 1;
                      box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
                    }

                    /* 배경 그라데이션 효과 */
                    .questionBox1>a::before {
                      content: "";
                      position: absolute;
                      top: 0;
                      left: -100%;
                      width: 200%;
                      height: 100%;
                      background-image: linear-gradient(to right, #f1d6b8, #c49a6c);
                      transition: transform 0.4s ease;
                      z-index: -2;
                    }

                    .questionBox1>a:hover::before {
                      transform: translateX(50%);
                    }

                    /* 토글 버튼 스타일 */
                    .material-symbols-outlined {
                      font-variation-settings:
                        'FILL' 0,
                        'wght' 400,
                        'GRAD' 0,
                        'opsz' 24;
                      line-height: 50px;
                      font-size: 30px;
                      width: 5%;
                      background-color: #c49a6c;
                      color: white;
                      border: none;
                    }

                    .material-symbols-outlined:hover {
                      cursor: pointer;
                    }

                    /* 답변 영역 및 버튼 컨테이너 (초기 숨김) */
                    .reply-box,
                    .btnContainer {
                      max-height: 0;
                      opacity: 0;
                      overflow: hidden;
                      transition: max-height 0.4s ease, opacity 0.4s ease;
                    }

                    /* 활성화 상태 */
                    .reply-box.active {
                      max-height: 200px;
                      /* 필요에 따라 조정 */
                      opacity: 1;
                    }

                    .btnContainer.active {
                      max-height: 50px;
                      /* 필요에 따라 조정 */
                      opacity: 1;
                    }

                    /* 답변 영역 스타일 */
                    .reply-box {
                      width: 96%;
                      padding: 15px;
                      border: 1px solid #ccc;
                      border-radius: 10px;
                      margin-top: 10px;
                      background-color: #f9f9f9;
                      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                      text-align: left;
                    }

                    .reply-box p {
                      margin: 5px 0;
                      font-size: 14px;
                      color: #555;
                    }

                    .reply-box textarea {
                      width: 100%;
                      padding: 20px;
                      border-radius: 5px;
                      border: 1px solid #bbb;
                      resize: none;
                      font-size: 14px;
                      box-sizing: border-box;
                      min-height: 100px;
                      line-height: 1.5em;
                    }

                    /* 버튼 컨테이너 스타일 */
                    .btnContainer {
                      display: flex;
                      justify-content: flex-end;
                      gap: 10px;
                      margin-top: 10px;
                      margin-bottom: 10px;
                    }

                    .adminEnrollBtn,
                    #adminDeleteBtn {
                      padding: 8px 15px;
                      border: none;
                      border-radius: 5px;
                      font-size: 14px;
                      font-weight: bold;
                      cursor: pointer;
                      transition: all 0.3s ease;
                    }

                    #adminEnrollBtn {
                      background-color: #5a9;
                      color: white;
                    }

                    #adminEnrollBtn:hover {
                      background-color: #487;
                    }

                    #adminDeleteBtn {
                      background-color: #d9534f;
                      color: white;
                    }

                    #adminDeleteBtn:hover {
                      background-color: #c9302c;
                    }
                  </style>
                </head>

                <body>

                  <%@ include file="../common/menubar.jsp" %>

                    <div class="wrap2">
                      <div id="left">
                        <div id="leftBox">
                          <div id="leftBox1">
                            <p align="center" id="title">질문들을 정리해 봤어요!</p>
                          </div>
                          
                          
                          
													<% for(int i=1; i<6; i++) { %>
														  <div class="questionBox1">
														    <a href="#" >질문 제목 <%= i %></a>
														    <button type="button" class="material-symbols-outlined" data-bno="<%= i %>">keyboard_double_arrow_down</button>
														  </div>
														
														  <div class="fnqReply reply-box">
														    <!-- <textarea class="adminReply" data-bno="<%= i %>"></textarea> -->
														  </div>
														
														  <div class="btnContainer">
														    <button type="button" class="adminEnrollBtn" data-bno="<%= i %>">입력하기</button>
														    <button type="button" class="adminDeleteBtn" data-bno="<%= i %>">삭제하기</button>
														  </div>
														<% } %>
                      

                          <br><br>
                        </div>
                      </div>
                    </div>




  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                    <script>
                    document.addEventListener("DOMContentLoaded", function () {
                    	  const toggles = document.querySelectorAll(".material-symbols-outlined");

                    	  toggles.forEach(toggle => {
                    	    toggle.addEventListener("click", function () {
                    	      const questionBox = this.closest(".questionBox1");
                    	      const replyBox = questionBox?.nextElementSibling;
                    	      const btnContainer = replyBox?.nextElementSibling;

                    	      if (replyBox && btnContainer) {
                    	        replyBox.classList.toggle("active");
                    	        btnContainer.classList.toggle("active");
                    	      }
                    	    });
                    	  });
                    	});
														//작동구문. 버튼태그 내려가는거
                      document.addEventListener("DOMContentLoaded", function () {
                    	  const memId = "<%= (loginMember != null) ? loginMember.getNickname() : "" %>";
                    	  const enrollBtns = document.querySelectorAll(".adminEnrollBtn");
                        const deleteBtns = document.querySelectorAll(".adminDeleteBtn");
                        const replyTextareas = document.querySelectorAll(".adminReply");

                        if (memId === "admin") {
                          enrollBtns.forEach(btn => btn.style.display = "block");
                          deleteBtns.forEach(btn => btn.style.display = "block");
                          replyTextareas.forEach(textarea => textarea.readOnly = false);
                        } else {
                          enrollBtns.forEach(btn => btn.style.display = "none");
                          deleteBtns.forEach(btn => btn.style.display = "none");
                          replyTextareas.forEach(textarea => textarea.readOnly = true);
                        }
                      });
														
													
                      // 토글 버튼 클릭 시
                      $(document).on("click", ".material-symbols-outlined", function () {
                        const bno = $(this).data("bno"); // 정확한 번호 추출
                        console.log("선택된 bno:", bno);

                        fnaContent(bno); // 이 bno로 Ajax 요청
                      });
                    //===================================================================================================		
                    	//전체 F&Q 조회
                      function fnaContent(bno) {
                    	  console.log("함수 호출 인자 (bno):", bno);
                    	  var url = "<%= request.getContextPath() %>/fnaSelect.fa";

                    	  $.ajax({
                    	    url: url,
                    	    method: "GET",
                    	    data: { bno: bno },
                    	    success: function(response) {
                    	      // response는 예를 들어, [{ answer: '답변1', ... }, { answer: '답변2', ... }, ...]와 같이 배열이라고 가정합니다.
                    	      
                    	      // HTML에 미리 있는 adminReply 클래스 textarea 5개에 순서대로 값을 채워줍니다.
                    	      $('.reply-box').each(function(index) {
                    	        if (index < response.length) {
                    	        	let content = "<div>문의내용 : " + response[index].content + "<br><br><br><br><br>" + "답변내용 : " + response[index].answer + "</div>"
                    	        	$(this).html(content)                   	          
                    	        }
                    	      });
                    	    },
                    	    error: function(xhr, status, error) {
                    	      alert("Ajax 요청 실패! 콘솔을 확인하세요.");
                    	    }
                    	    
                    	  });
                    	}
                 
														

                    //======================================================================================================
                   // 입력하기 버튼 클릭 시
                      $(document).on("click", ".adminEnrollBtn", function () {
                        const bno = $(this).data("bno");
                        const content = $(this).closest(".btnContainer").prev().find(".adminReply").val();

                        $.ajax({
                          url: "<%= request.getContextPath() %>/update.fna",
                          type: "POST",
                          data: { bno: bno, content: content },
                          success: function (res) {
                            alert("수정 완료!");
                          },
                          error: function () {
                            alert("수정 실패!");
                          }
                        });
                      });
                    function fnaUpdate(bno){
												$.ajax({
													url:"<%= request.getContextPath() %>/update.fna",
													data:{
															content:$(".adminReply").val(),
															bno:bno,
													},
													type:"post",
													//타입을 정의하지 않으면 get방식이 기본값으로 설정된다. 
													success:function(result){
														
														if(result > 0){  //result가 1이다? 댓글 작성 성공, 갱신된 댓글 리스트 조회를 다시. 
															selectReplyList();
															$("#replyContent").val(""); //text area 초기화. 
														}else{ //result 가 0이다? 댓글 작성 실패. 
															
														}
													}, error:function(){
														console.log("F&A Ajax 통신 실패 했습니다. ");
													}
												})
		}
//======================================================================================================
											 $(document).on("click", ".adminDeleteBtn", function () {
                        const bno = $(this).data("bno");
                        const content = $(this).closest(".btnContainer").prev().find(".adminReply").val();

                        $.ajax({
                          url: "<%= request.getContextPath() %>/delete.fna",
                          type: "POST",
                          data: { bno: bno},
                          success: function (res) {
                            alert("수정 완료!");
                          },
                          error: function () {
                            alert("수정 실패!");
                          }
                        });
                      });
            function fnaDelete(bno){
												$.ajax({
													url:"<%= request.getContextPath() %>/delete.fna",
													data:{
															bno:bno,
													},
													type:"post",
													//타입을 정의하지 않으면 get방식이 기본값으로 설정된다. 
													success:function(result){
														
														if(result > 0){  //result가 1이다? 댓글 작성 성공, 갱신된 댓글 리스트 조회를 다시. 
															selectReplyList();
															$("#replyContent").val(""); //text area 초기화. 
														}else{ //result 가 0이다? 댓글 작성 실패. 
															
														}
													}, error:function(){
														console.log("F&A Ajax 통신 실패 했습니다. ");
													}
												})
		}
                    </script>

                    <%@ include file="../common/footerbar.jsp" %>
                </body>

                </html>