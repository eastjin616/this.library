<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <% String contextPath=request.getContextPath(); %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document1</title>
      <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=info" />
      <!-- <link rel="stylesheet" href="header.css">
  <link rel="stylesheet" href="content.css">
  <link rel="stylesheet" href="footer.css"> -->

      <style>
        @font-face {
          font-family: 'Gyeonggi_Batang_Regular';
          src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2410-3@1.0/Batang_Regular.woff') format('woff');
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

        /*-------------------------------------------------------------  */
        .wrap2 {
          width: 100%;
          box-sizing: border-box;
        }

        .wrap2>div {
          margin: 30px;
        }

        .content1 {
          font-size: 24px;
          font-weight: 1000;
        }

        .content2 {
          display: flex;
        }

        .content2 div {
          margin-right: 20px;
        }

        .content3 {
          font-size: 10px;
          color: rgb(185, 175, 175);
        }

        .content {
          width: 100%;
          display: flex;
          margin-bottom: 10px;
          /* 각 content 사이의 간격 */
        }

        .label {
          width: 8%;
          margin-right: 5%;
          margin: auto;
          text-align: light;

        }

        .input-container {
          width: 95%
        }

        input,
        textarea {
          width: 100%;
          height: 35px;
          box-sizing: border-box;
        }

        .material-symbols-outlined {
          font-size: 20px;
          border: 1px solid;

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
          width: 80px;
          background-color: black;
          color: white;
          border-radius: 1em;
          cursor: pointer;
          resize: none;
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
    <!-- ------------------------------------------------------------------ -->

    <body>
      <div class="wrap">
        <div id="header">
          <div id="header_1">
            <div id="header_1_1_1">
              <a href="<%= contextPath %>"><img src="<%= contextPath %>/views/common/assets/This_서고 로고.png" alt=""
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
              <button class="btn" id="login" onclick="location.href='<%= contextPath %>/views/member/loginform.jsp'">Log
                In</button>
            </div>
            <div id="header_signin_btn" style="height: 100%; width: 9%;">
              <button class="btn" id="signin" onclick="signin()">Sign In</button>
            </div>
            <div id="header_mypage_btn" style="height: 100%; width: 7%;">
              <button class="btn" id="mypage">
                <img src="<%= contextPath %>/views/common/assets/user01.png" alt="">
              </button>
            </div>

          </div>
        </div>
        <!-- -------------------------------------------------------------------- -->

        <div class="wrap2">
          <div class="content1">고객센터</div>
          <div class="content2">
            <div>공지사항</div>
            <div>F&Q</div>
            <div style="color: blue;">1:1 문의</div>
          </div>
          <div class="content3">모든항목을 반드시 입력해 주셔야 문의접수가 가능합니다.
            <hr>
          </div>

          <div class="content4">

            <div id="content4_1" class="content">
              <div class="label">이름 </div>
              <div class="input-container"><input type="text" placeholder="이름 입력" required></div>
            </div>
            <div id="content4_2" class="content">
              <div class="label">이메일</div>
              <div class="input-container"><input type="text" placeholder="이메일 입력" required></div>
            </div>
            <div id="content4_3" class="content">
              <div class="label">전화번호</div>
              <div class="input-container"><input type="text" placeholder="전화번호 입력" required></div>
            </div>
            <div id="content4_4" class="content">
              <div class="label">제목</div>
              <div class="input-container"><input type="text" placeholder="제목 입력" required></div>
            </div>
            <div id="content4_5" class="content">
              <div class="label">내용</div>
              <div class="input-container">
                <textarea name="" id="" placeholder="문의내용 최대 1000자를 입력해주세요." maxlength="1000" required  ></textarea>
              </div>
            </div>
            <br>
            <hr>
            <br>
            <div id="content5" class="content">
              <div class="label">첨부파일 </div>
              <div class="beCarefulText">
                <li>개인정보를 포함한 이미지는 첨부 파일에 업로드할 수 없습니다. </li>
                <li> 개인정보 - 이름, 주민등록번호, 운전면허번호, 주소, 전화번호, 생년월일, 출생지, 본적지, 성별, 국적</li>
                <li>이를 어기고 개인정보가 포함된 파일을 업로드된 사실이 확인시 불이익을 받으실수 있습니다.</li>
              </div>

            </div>
            <input type="submit" id="submitTag" value="첨부하기">

          </div>


        </div>

        <!-- -------------------------------------------------------------------- -->
        <div id="footer" style="background-color: #fdf5f1;">
          <div id="footer_1">
            <div id="footer_1_1">
              <img src="<%= contextPath %>/views/common/assets/This_서고 로고.png" alt="">
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
          location.href = "<%= contextPath %>/views/member/loginform.jsp";
        }

      </script>

      <script>
        function signin() {
          location.href = "<%= contextPath %>/views/member/signin.jsp";
        }

      </script>
      <!-- -------------------------------------------------------------------- -->
    <!-- -=======1:1 문의 내용(content) 적을때, 글자수 세는 기능, 글자수 제한 기능) jsp
    $('#textBox').keyup(function (e) {
	let content = $(this).val();
    
    // 글자수 세기
    if (content.length == 0 || content == '') {
    	$('.textCount').text('0자');
    } else {
    	$('.textCount').text(content.length + '자');
    }
    
    // 글자수 제한
    if (content.length > 200) {
    	// 200자 부터는 타이핑 되지 않도록
        $(this).val($(this).val().substring(0, 200));
        // 200자 넘으면 알림창 뜨도록
        alert('글자수는 200자까지 입력 가능합니다.');
    };
});
출처: https://anerim.tistory.com/160 [디발자 뚝딱:티스토리]  
    
    -->
    
    </body>


    </html>