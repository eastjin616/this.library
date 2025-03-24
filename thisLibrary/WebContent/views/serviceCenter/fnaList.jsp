<%@page import="com.kh.board.model.vo.Attachment"%>
<%@page import="com.kh.serviceCenter.model.vo.serviceCenter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% 
		// 글번호, 닉네임, 제목, 내용, 조회수, 작성일
	serviceCenter sc = (serviceCenter)request.getAttribute("sc");
		
	  Attachment at = (Attachment)request.getAttribute("at");
	  //at에 뭐가있을까? 
	  // 첨부 有 : 파일번호, 원본명, 수정명, 저장경로 
	  // 첨부 無 : null
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
        /* div {box-sizing: border-box;border: 1px solid red;} */
       

    

        /*-------------------------------------------------------------  */


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
          margin: 10% 10% 10% 10%;
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

        .questionBox1 {
          font-size: larger;
          padding: 10px;
          box-sizing: border-box;
          font-weight: 800;
          height: 70px;
          display: flex;
          position: relative;
          box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);

        }



        .questionBox1>a {
          text-decoration: none;
          color: black;
          display: block;
          width: 100%;
          height: 100%;
          line-height: 50px;
          text-align: LEFT;
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

        .questionBox1>a:hover\  {
          color: white;
          transition: color 0.4s ease;
          z-index: 2;
        }



        .questionBox1 {
          background-color: lightgrey;
        }

        .material-symbols-outlined {
          font-variation-settings:
            'FILL' 0,
            'wght' 400,
            'GRAD' 0,
            'opsz' 24
        }

        .material-symbols-outlined {
          line-height: 50px;
          font-size: 30px;
          width: 5%;
          background-color: #c49a6c;
          color: white;
        }

        .material-symbols-outlined:hover {
          cursor: pointer;
        }

        /* 전체 컨테이너 스타일 */
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
        }

        #btnContainer {
          display: flex;
          justify-content: flex-end;
          gap: 10px;
          margin-top: 10px;
          margin-bottom: 10px;
        }

        /* 버튼 스타일 */
        #adminEnrollBtn,
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

        .reply-box,
        #btnContainer {
          max-height: 0;
          opacity: 0;
          overflow: hidden;
          transition: max-height 0.4s ease-in-out, opacity 0.3s ease-in-out;
        }


        
      </style>
    </head>
    <meta charset="UTF-8">
    <!-- ------------------------------------------------------------------ -->

    <body>

      <%@ include file="../common/menubar.jsp" %>

      
        <!-- -------------------------------------------------------------------- -->

        <div class="wrap2">
          <div id="left">
            <div id="leftBox">
              <div id="leftBox1">
                <p align="center" id="title">질문들을 정리해 봤어요!</p>
              </div>


              <div class="questionBox1"><!-- ================================================================================================첫번째 질의 -->
                <a href="#">검색이 되지 않거나 품절 / 절판이 된 도서는 구입할 수 없나요?</a>
                <span class="material-symbols-outlined">keyboard_double_arrow_down</span>
              </div>
              <!-- 관리자 답변 입력 영역 -->
              <div id="fnqReply" class="reply-box">
                <p><strong>작성자:</strong> admin</p>
                <p><strong>작성일자:</strong> <span id="replyDate"></span></p>
                <textarea id="adminReply" placeholder="답변을 입력하세요..."><%=contextPath %>/fnaSelect.sc?bno=1</textarea>
              </div>

              <!-- 버튼 컨테이너 -->
              <div id="btnContainer">
                <button id="adminEnrollBtn" onclick="location.href='<%= contextPath %>/updateForm.sc?bno=<%= sc.getInquiryNo() %>'">작성하기</button>
                  
                        
                <button id="adminDeleteBtn">삭제하기</button>
              </div>

              <div class="questionBox1"><a href="#">This.서재에 없는 책은 무엇인가요?</a><span class="material-symbols-outlined">
                  keyboard_double_arrow_down
                </span></div><!-- ================================================================================================두번째 질의 -->
               <!-- 관리자 답변 입력 영역 -->
              <div id="fnqReply" class="reply-box">
                <p><strong>작성자:</strong> admin</p>
                <p><strong>작성일자:</strong> <span id="replyDate"></span></p>
                <textarea id="adminReply" placeholder="답변을 입력하세요..."></textarea>
              </div>

              <!-- 버튼 컨테이너 -->
              <div id="btnContainer">
                <button id="adminEnrollBtn">작성하기</button>
                <button id="adminDeleteBtn">삭제하기</button>
              </div>



              <div class="questionBox1"><a href="">도서카테고리 별 분류는 어디서 볼수 있는 건가요?</a><span
                  class="material-symbols-outlined">
                  keyboard_double_arrow_down
                </span></div><!-- ================================================================================================세번째 질의 -->
                <!-- 관리자 답변 입력 영역 -->
              <div id="fnqReply" class="reply-box">
                <p><strong>작성자:</strong> admin</p>
                <p><strong>작성일자:</strong> <span id="replyDate"></span></p>
                <textarea id="adminReply" placeholder="답변을 입력하세요..."></textarea>
              </div>

              <!-- 버튼 컨테이너 -->
              <div id="btnContainer">
                <button id="adminEnrollBtn">작성하기</button>
                <button id="adminDeleteBtn">삭제하기</button>
              </div>

              <div class="questionBox1"><a href="">아 저기서 여기서 이렇게 하면 되는거라구요? 예?!? 왜? 어쨰서?
                  오류떠요?!</a><span class="material-symbols-outlined">
                  keyboard_double_arrow_down
                </span>
              </div><!-- ================================================================================================네번째 질의 -->
              <!-- 관리자 답변 입력 영역 -->
              <div id="fnqReply" class="reply-box">
                <p><strong>작성자:</strong> admin</p>
                <p><strong>작성일자:</strong> <span id="replyDate"></span></p>
                <textarea id="adminReply" placeholder="답변을 입력하세요..."></textarea>
              </div>

              <!-- 버튼 컨테이너 -->
              <div id="btnContainer">
                <button id="adminEnrollBtn">작성하기</button>
                <button id="adminDeleteBtn">삭제하기</button>
              </div>
              <br><br>
            </div>

          </div>

        </div>



        <!-- -------------------------------------------------------------------- -->
        

      <script>


        document.addEventListener("DOMContentLoaded", function () {
          const toggles = document.querySelectorAll(".material-symbols-outlined");

          toggles.forEach((toggle) => {
            toggle.addEventListener("click", function () {
              const questionBox = this.parentElement;
              const replyBox = questionBox.nextElementSibling;
              const btnContainer = replyBox ? replyBox.nextElementSibling : null;

              if (replyBox && btnContainer) {
                const isVisible = replyBox.style.maxHeight !== "0px";

                if (isVisible) {
                  // 위로 올려 숨겨버리기
                  replyBox.style.opacity = "0";
                  btnContainer.style.opacity = "0";

                  setTimeout(() => {
                    replyBox.style.maxHeight = "0px";
                    btnContainer.style.maxHeight = "0px";
                  }, 100); // 0.3초 후 높이를 0으로 변경
                } else {
                  // 아래로 내려 보여버리기
                  replyBox.style.maxHeight = "200px"; // 원하는 높이 설정 (내용에 따라 조정 가능)
                  btnContainer.style.maxHeight = "50px"; // 버튼 컨테이너 높이 설정

                  setTimeout(() => {
                    replyBox.style.opacity = "1";
                    btnContainer.style.opacity = "1";
                  }, 100);
                }
              }
            });
          });
        });




        document.getElementById("replyDate").innerText = new Date().toLocaleDateString();
        
        document.addEventListener("DOMContentLoaded", function () {
            const memId = "<%= loginMember.getNickname() %>"; // JSP에서 가져온 로그인 사용자 ID

            // 모든 버튼과 textarea 요소 가져오기
            const enrollBtns = document.querySelectorAll("#adminEnrollBtn");
            const deleteBtns = document.querySelectorAll("#adminDeleteBtn");
            const replyTextareas = document.querySelectorAll("#adminReply");

            if (memId === "admin") {
                // 관리자일 경우 버튼 보이기, textarea 활성화
                enrollBtns.forEach(btn => btn.style.display = "block");
                deleteBtns.forEach(btn => btn.style.display = "block");
                replyTextareas.forEach(textarea => textarea.readOnly = false);
            } else {
                // 일반 사용자일 경우 버튼 숨기기, textarea 비활성화
                enrollBtns.forEach(btn => btn.style.display = "none");
                deleteBtns.forEach(btn => btn.style.display = "none");
                replyTextareas.forEach(textarea => textarea.readOnly = true);
            }
        });
        
      </script>
      <!-- -------------------------------------------------------------------- -->
      <%@ include file="../common/footerbar.jsp" %>
    </body>

    </html>