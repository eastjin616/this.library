<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <% String contextPath=request.getContextPath(); %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document1</title>
      <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=label_important" />
      <!-- <link rel="stylesheet" href="header.css">
  <link rel="stylesheet" href="content.css">
  <link rel="stylesheet" href="footer.css"> -->

      <style>
        @font-face {
          font-family: 'Gyeonggi_Batang_Regular';
          src:
            url('https://fastly.jsdelivr.net/gh/projectnoonnu/2410-3@1.0/Batang_Regular.woff') format('woff');
          font-weight: 400;
          font-style: normal;
        }

        body * {
          font-family: 'Gyeonggi_Batang_Regular';
        }

        /* div {box-sizing: border-box;border: 1px solid red;} */
        .wrap {
          width: 1500px;
          margin: auto;
          height: auto;
          overflow: hidden;
        }

        #header {
          height: 50px;
          margin-bottom: 10%;
        }

        #footer {
          margin-top: 10%;
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

        /*----------------------------------------------------------*/
        #noticeBoardBackgraound {
          background-color: rgb(221, 214, 214);
          width: 90%;
          margin: auto;
          border-radius: 8px;
          padding: 1%;
        }

        .container {
          width: 80%;
          margin: 50px auto;
          background: white;
          padding: 20px;
          box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
          border-radius: 8px;
        }

        h2 {
          text-align: left;
          color: #333;
        }

        .form-group {
          margin-bottom: 15px;
        }

        #form-group-content {
          min-height: 300px;
          background-img: url('이미지 위치');
          background-repeat: no-repeat;
          backgroupd-size: 13px;
        }

        label {
          font-weight: bold;
          display: block;
          margin-bottom: 5px;
        }

        input[type="text"],
        input[type="date"],
        textarea {
          width: 100%;
          padding: 10px;
          border: 1px solid #ccc;
          border-radius: 5px;
          box-sizing: border-box;
        }

        textarea {
          height: 100px;
          resize: none;
        }

        .buttons {
          display: flex;
          justify-content: center;
        }

        button {
          background-color: #007bff;
          color: white;
          padding: 10px 20px;
          border: none;
          border-radius: 5px;
          cursor: pointer;
        }

        button:hover {
          background-color: #0056b3;
        }

        button[type="button"] {
          background-color: #6c757d;
        }

        button[type="button"]:hover {
          background-color: #5a6268;
        }

        #kk {
          margin: 10px;
          font-size: 30px;
          margin: 0 0 -35px 30px;
        }

        #content5 {
          display: flex;
        }

        .beCarefulText {
          font-size: 12px;
          color: rgb(110, 104, 104);
          width: 95%;
          height: 120px;
          background-color: #f9f9f9;
          border-radius: 4px;
          padding: 15px;
        }

        .beCarefulText>li {
          margin-bottom: 2%;
        }

        #submitTag {
          display: inline-block;
          width: 80px;
          text-align: center;
          padding: 8px;
          background-color: black;
          color: white;
          border-radius: 1em;
          cursor: pointer;
        }

        #dividing {
          display: flex;
        }

        #title {
          width: 100%;
        }

        #dividing>div {
          width: 30%;
          margin-right: 10%;
        }

        #attachedFile {
          width: 250px;
          line-height: 150px;
          text-align: center;
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
          height: 35%;
          text-align: center;
          margin-top: 2%;
        }
      </style>
    </head>
    <meta charset="UTF-8">
    <!-- -------------------------------------------------------------------->

    <body>
      <div class="wrap">
        <div id="header">
          <div id="header_1">
            <div id="header_1_1_1">
              <a href="<%=contextPath%>"><img src="<%=contextPath%>/views/common/assets/This_서고 로고.png" alt=""
                  style="height: 100%; width: 100%;"></a>
            </div>
            <div id="navigator">
              <a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> 
              <a href="<%=contextPath%>/views/vote/voteList.jsp">온라인투표</a> 
              <a href="<%= contextPath %>/list.bo">자유게시판</a>
              <a href="<%=contextPath%>/views/member/myPage.jsp">마이페이지</a> 
              <a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
            </div>
            <div id="header_login_btn" style="height: 100%; width: 9%;">
              <button class="btn" id="login" onclick="location.href='<%=contextPath%>/views/jinsloginform.jsp'">Log
                In</button>
            </div>
            <div id="header_signin_btn" style="height: 100%; width: 9%;">
              <button class="btn" id="signin" onclick="signin()">Sign In</button>
            </div>
            <div id="header_mypage_btn" style="height: 100%; width: 7%;">
              <button class="btn" id="mypage" onclick="mypage()">
                <img src="<%=contextPath%>/views/common/assets/user01.png" alt="">
              </button>
            </div>
          </div>
        </div>
        <!-- ---------------------------------------------------------------------->



        <div>
          <div id="noticeBoardBackgraound">
            <div id="kk"> 1:1 문의글 답변하기.(관리자)</div>
            <form class="container">


              <div class="form-group">

                <div id="dividing">
                  <div>
                    <label for="title">문의자 이름 </label>
                    <input type="text" id="title" placeholder="새로운 게시글 제목입니다.">
                  </div>
                  <div>
                    <label for="title">문의자 전화번호 </label>
                    <input type="text" id="title" placeholder="새로운 게시글 제목입니다.">
                  </div>
                  <div>
                    <label for="title">문의자 이메일 </label>
                    <input type="text" id="title" placeholder="새로운 게시글 제목입니다.">
                  </div>
                </div>
                <br><br>


                <label for="title">제목 </label>
                <input type="text" id="title" placeholder="새로운 게시글 제목입니다.">

                <br><br><br><br>
                <div class="form-group">
                  <label for="content">문의 내용 </label>
                  <textarea id="form-group-content" placeholder="새로운 게시글 내용입니다."></textarea>
                  <br><br><br>
                  <label for="content">문의 답변내용 (관리자) </label>
                  <textarea id="form-group-content" placeholder="새로운 게시글 내용입니다."></textarea>
                </div>
                <div id="content5" class="content">
                  <div class="label" id="attachedFile">첨부파일 </div>
                  <div class="beCarefulText">
                    <li>개인정보를 포함한 이미지는 첨부 파일에 업로드할 수 없습니다. </li>
                    <li> 개인정보 - 이름, 주민등록번호, 운전면허번호, 주소, 전화번호, 생년월일, 출생지, 본적지, 성별, 국적</li>
                    <li>이를 어기고 개인정보가 포함된 파일을 업로드된 사실이 확인시 불이익을 받으실수 있습니다.</li>
                  </div>
                </div>
                <input type="file" id="fileUpload" hidden />
                <label for="fileUpload" id="submitTag">파일 선택</label>
                <div class="buttons">
                  <button type="submit">저장</button>
                  <button type="button">뒤로</button>
                </div>
            </form>
          </div>
        </div>
        <!-- -------------------------------------------------------------------- -->
        <div id="footer" style="background-color: #fdf5f1;">
          <div id="footer_1">
            <div id="footer_1_1">
              <img src="<%=contextPath%>/views/common/assets/This_서고 로고.png" alt="">
            </div>
            <div id="navigator" class="navigator">
              <a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> 
              <a href="<%=contextPath%>/views/vote/voteList.jsp">온라인투표</a> 
              <a href="<%= contextPath %>/list.bo">자유게시판</a>
              <a href="<%=contextPath%>/views/member/myPage.jsp">마이페이지</a> 
              <a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
            </div>
          </div>
          <div id="footer_2">© 2025 YourCompany. All Rights Reserved.</div>
        </div>
      </div>

      <script>
        function login() {
          location.href = "<%=contextPath%>/views/member/loginform.jsp";
        }

        function signin() {
          location.href = "<%=contextPath%>/views/member/signin.jsp";
        }

        function mypage() {
	     location.href="<%= contextPath %>/views/member/myPage.jsp";
	   }
      </script>
      <!-- -------------------------------------------------------------------- -->
    </body>

    </html>