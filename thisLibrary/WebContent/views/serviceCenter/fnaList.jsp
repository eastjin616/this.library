<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <% String contextPath=request.getContextPath(); %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document1</title>
      <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=keyboard_double_arrow_down" />
      <!-- <link rel="stylesheet" href="header.css">
  <link rel="stylesheet" href="content.css">
  <link rel="stylesheet" href="footer.css"> -->

      <style>
        /* div {box-sizing: border-box;border: 1px solid red;} */
        .wrap {
          width: 1500px;
          margin: auto;
          overflow: hidden;
        }

        #header {
          height: 50px;
        }

        #footer {
          height: 150px;
        }

        #header>div {
          height: 100%;
        }

        #header_1>div,
        #header_1_3>div {
          float: left;
        }

        #header_1_1_1 {
          width: 15%;
          height: 100%;
        }

        #navigator {
          position: relative;
          width: 60%;
          height: 100%;
          display: flex;
          align-items: center;
          justify-content: space-around;
        }

        #navigator>a {
          text-decoration: none;
          color: black;
          font-size: 13px;
        }

        /*-------------------------------------------------------------  */
        #header_mypage_btn,
        #header_login_btn,
        #header_signin_btn {
          display: flex;
          justify-content: center;
          align-items: center;
        }

        #login {
          width: 70%;
          height: 50%;
          border-radius: 5px;
          background-color: #ea916e;
          color: white;
          border: none;
        }

        #signin {
          width: 70%;
          height: 50%;
          border-radius: 5px;
          background-color: #ea916e;
          color: white;
          border: none;
        }

        /* ---------------------------------------------- */
        #mypage {
          border-radius: 50%;
          width: 50%;
          height: 50%;
          background-color: #ea916e;
          border: none;
        }

        #mypage>img {
          width: 90%;
          height: 60%;
        }

        /* ---------------------------------------------- */

        .btn:hover {
          opacity: 0.7;
          color: white;
          cursor: pointer;
        }

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


        /* ==============footer======================================= */
        #footer_1 {
          width: 100%;
          height: 65%;
        }

        #footer_1>div {
          float: left;
        }

        #footer_1_1 {
          height: 100%;
          width: 20%;
        }

        #footer_1_1>img {
          display: flex;
          margin: auto;
          width: 60%;
          height: 60%;
          margin-top: 20%;
        }

        #footer_2 {
          width: 100%;
          text-align: center;
        }
      </style>
    </head>
    <meta charset="UTF-8">
    <!-- ------------------------------------------------------------------ -->

    <body>
      <div class="wrap">
        <div id="header">
          <div id="header_1">
            <div id="header_1_1_1">
              <img src="<%= contextPath %>/views/common/assets/This_서고 로고.png" alt=""
                style="height: 100%; width: 100%;">
            </div>
            <div id="navigator">
              <a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a>
              <a href="<%=contextPath%>/views/vote/voteList.jsp">온라인투표</a>
              <a href="<%= contextPath %>/list.bo">자유게시판</a>
              <a href="<%=contextPath%>/views/member/myPage.jsp">마이페이지</a>
              <a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
            </div>
            <div id="header_login_btn" style="height: 100%; width: 9%;">
              <button class="btn" id="login" onclick="login()">Log
                In</button>
            </div>
            <div id="header_signin_btn" style="height: 100%; width: 9%;">
              <button class="btn" id="signin" onclick="signin()">Sign In</button>
            </div>
            <div id="header_mypage_btn" style="height: 100%; width: 7%;">
              <button class="btn" id="mypage" onclick="mypage()">
                <img src="<%= contextPath %>/views/common/assets/user01.png" alt="">
                </button>
            </div>
            <div id="rightBox">
            </div>

          </div>
        </div>
        <!-- -------------------------------------------------------------------- -->

        <div class="wrap2">
          <div id="left">
            <div id="leftBox">
              <div id="leftBox1">
                <p align="center" id="title">질문들을 정리해 봤어요!</p>
              </div>


              <div class="questionBox1">
                <a href="#">검색이 되지 않거나 품절 / 절판이 된 도서는 구입할 수 없나요?</a>
                <span class="material-symbols-outlined">keyboard_double_arrow_down</span>
              </div>
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

              <div class="questionBox1"><a href="">This.서재에 없는 책은 무엇인가요?</a><span class="material-symbols-outlined">
                  keyboard_double_arrow_down
                </span></div>
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
                </span></div>
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
              </div>
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
        <div id="footer" style="background-color: #fdf5f1;">
          <div id="footer_1">
            <div id="footer_1_1"><img src="<%= contextPath %>/views/common/assets/This_서고 로고.png" alt=""></div>
            <div id="navigator" class="navigator">
              <a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a>
              <a href="<%=contextPath%>/views/vote/voteList.jsp">온라인투표</a>
              <a href="<%= contextPath %>/list.bo">자유게시판</a>
              <a href="<%=contextPath%>/views/member/myPage.jsp">마이페이지</a>
              <a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
            </div>
          </div>
          <div id="footer_2">
            © 2025 YourCompany. All Rights Reserved.
          </div>
        </div>
      </div>

      <script>


        function login() {
          location.href = "<%=contextPath%>/views/member/loginform.jsp";
        }

        function signin() {
          location.href = "<%=contextPath%>/views/member/signin.jsp";
        }



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
      </script>
      <!-- -------------------------------------------------------------------- -->
    </body>

    </html>