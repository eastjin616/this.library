<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<% String contextPath=request.getContextPath(); %>

		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Document1</title>
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
				/* div {box-sizing: border-box;border: 1px solid red;}
				#content{border: 1px solid red; height: 1000px;} */
				/* -------------------------------------------------------------- */

				#content_1 {
					height: 11%;
				}


				/* -------------------------------------------------------------- */

				#content_2 {
					height: 30%;
				}

				#content_2_1 {
					width: 35%;
					height: 100%;
					float: left;
				}

				#content_2_1_1 {
					height: 90%;
				}

				#content_2_1_1>img {
					height: 243.8px;
					width: 210px;
					margin-left: 60%;
				}

				#content_2_1_2>input {
					margin-left: 78%;
				}

				#content_2_3_1>img {
					height: 100%;
					width: 40%;
				}

				#content_2_3_2>input {
					margin-left: 18%;
				}

				#content_2_1_2 {
					height: 10%;
				}


				#content_2_2 {
					width: 30%;
					height: 100%;
					float: left;
					position: relative;
					display: flex;
					justify-content: center;
					align-items: center;
				}

				#content_2_2 img {
					position: absolute;
					width: 20%;
				}

				#content_2_3 {
					width: 35%;
					height: 100%;
					float: left;
				}

				#content_2_3_1 {
					height: 90%;
				}

				#content_2_3_2 {
					height: 10%;
				}

				/* -------------------------------------------------------------- */

				#content_3 {
					height: 59%;
				}

				#content_3_1 {
					height: 5%;
				}

				#content_3_2 {
					height: 10%;
				}

				#content_3_2_1 {
					height: 100%;
					width: 20%;
					float: left;
				}

				#content_3_2_1>h1 {
					margin-left: 20%;
				}

				#content_3_2_2 {
					height: 100%;
					width: 60%;
					float: left;
				}

				#content_3_2_3 {
					height: 100%;
					width: 20%;
					float: left;
				}

				#content_3_2_3>button {
					width: 70px;
					height: 30px;
					margin-left: 50%;
					border-radius: 5px;
					margin-top: 20px;
					background-color: #ea916e;
					color: white;
				}


				.comment-box {
					width: 90%;
					height: 80%;
					max-width: 1500x;
					border: 1px solid #ccc;
					border-radius: 10px;
					padding: 10px;
					position: relative;
				}

				.comment-box textarea {
					width: 100%;
					height: 80px;
					border: none;
					outline: none;
					resize: none;
					font-size: 14px;
					color: #333;
					font-family: Arial, sans-serif;
				}

				.comment-box textarea::placeholder {
					color: #bbb;
				}

				.comment-box .char-count {
					text-align: right;
					font-size: 12px;
					color: #999;
					margin-left: auto;
				}

				.char-count {
					width: 100px;
				}

				#content_3_3 {
					width: 1500px;
					height: 30%;
					display: flex;
					justify-content: center;
					align-items: center;
					flex-direction: column;
					margin: auto;
				}

				#content_3_3>input {
					height: 80%;
					width: 90%;
					border-radius: 10px;
				}


				#content_3_4 {
					height: 25%;

				}

				#content_3_4_1,
				#content_3_4_2 {
					width: 100%;
					height: 20%;
					float: left;
				}

				#content_3_4_1_1,
				#content_3_4_1_2,
				#content_3_4_1_3 {
					float: left;
				}

				#content_3_4_1_1 {
					width: 20%;
					height: 100%;
					text-align: right;
					float: left;
					margin-left: 5%;
				}



				#userId {
					width: 70%;
					text-align: left;
				}

				#date {
					width: 30%;
					float: right;
				}

				#content_3_4_2 {
					text-align: left;
				}

				#content_3_4_1_2 {
					width: 30%;
					height: 100%;
					margin-right: auto;
				}

				#content_3_4_1_2 button {
					margin-left: 5%;
				}

				#content_3_4_1_3 {
					width: 40%;
					height: 100%;
					text-align: right;
				}

				#content_3_4_1_3 button {
					border: 0;
					background-color: transparent;
				}

				#content_3_4_1_3 button:hover {
					cursor: pointer;
					opacity: 0.7;
				}

				#content_3_4_1_4 {

					height: 75%;
				}

				#content_3_4_2 {
					height: 80%;
					width: 100%;
				}


				pre {
					margin-left: 5%;
				}

				.pagination {
					height: 5%;
					;
					text-align: center;
				}

				.pagination a {
					margin: 0 5px;
					text-decoration: none;
					color: #333;
				}

				#etc {
					height: 10%;
				}

				/* -------------------------------------------------------------- */


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
							<a href="<%=contextPath%>"><img src="<%=contextPath%>/views/common/assets/This_서고 로고.png" alt=""
									style="height: 100%; width: 100%;"></a> alt="" style="height:
							100%; width: 100%;">
						</div>
						<div id="navigator">
							<a a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> <a href="">온라인투표</a> <a href="">자유게시판</a>
							<a href="">마이페이지</a> <a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
						</div>
						<div id="header_login_btn" style="height: 100%; width: 9%;">
							<button class="btn" id="login" onclick="location.href='<%=contextPath%>/views/jinsloginform.jsp'">Log
								In</button>
						</div>
						<div id="header_signin_btn" style="height: 100%; width: 9%;">
							<button class="btn" id="signin" onclick="signin()">Sign In</button>
						</div>
						<div id="header_mypage_btn" style="height: 100%; width: 7%;">
							<button class="btn" id="mypage">
								<img src="<%=contextPath%>/views/common/assets/user01.png" alt="">
							</button>
						</div>

					</div>
				</div>
				<!-- -------------------------------------------------------------------- -->


				<div id="content">
					<div id="content_1">
						<center>
							<h1>투표 제목</h1>
						</center>
						<center>
							<h2>어떤 살아남기가 더 재미있었나요?</h2>
						</center>
					</div>

					<!-- ---------------------------------------------------------------------- -->
					<div id="content_2">
						<div id="content_2_1">
							<div id="content_2_1_1">
								<img src="<%= contextPath %>/resources/assets/book3.jpg" alt="">
							</div>
							<div id="content_2_1_2"><input type="radio"></div>

						</div>
						<div id="content_2_2"><img src="<%= contextPath %>/resources/assets/vs.png" alt=""></div>
						<div id="content_2_3">
							<div id="content_2_3_1">
								<img src="<%= contextPath %>/resources/assets/book5.jpg" alt="">
							</div>
							<div id="content_2_3_2"><input type="radio"></div>
						</div>
					</div>
					<!-- ---------------------------------------------------------------------- -->

					<hr>
					<div id="content_3">
						<div id="content_3_1"></div>


						<div id="content_3_2">
							<div id="content_3_2_1">
								<h1>댓글</h1>
							</div>
							<div id="content_3_2_2"></div>
							<div id="content_3_2_3">
								<button>작성하기</button>
							</div>
						</div>


						<div id="content_3_3">
							<div class="comment-box">
								<textarea placeholder="댓글을 작성해 주세요 (여기에 커서가 있어요!)" maxlength="300"></textarea>
								<div class="char-count" align="right">0 / 300 자</div>
							</div>
						</div>

						<hr>

						<div id="content_3_4">
							<div id="content_3_4_1">

								<div id="content_3_4_1_1">
									<div id="userId">작성자:작성자2 &nbsp;&nbsp;&nbsp; | <div id="date">2025.02.18</div>
									</div>
								</div>

								<div id="content_3_4_1_2">
									<button>팔로우</button>
								</div>
								<div id="content_3_4_1_3">
									<button>수정</button> | <button>삭제</button>
								</div>
							</div>
							<pre id="content_3_4_2">
어우 완전 책 내용 오지고 지리고 렛잇고~렛잇비~
엄청난걸요 ~ 소 익사이팅~
댓츠 롸잇 정확해~!
			</pre>

						</div>
						<div id="content_3_4">
							<div id="content_3_4_1">
								
							
								
							</div>
						</div>
					</div>
				</div>





				<!-- -------------------------------------------------------------------- -->
				<div id="footer" style="background-color: #fdf5f1;">
					<div id="footer_1">
						<div id="footer_1_1">
							<img src="<%=contextPath%>/views/common/assets/This_서고 로고.png" alt="">
						</div>
						<div id="navigator" class="navigator">
							<a a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> <a href="">온라인투표</a> <a href="">자유게시판</a>
							<a href="">마이페이지</a> <a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
						</div>
					</div>
					<div id="footer_2">© 2025 YourCompany. All Rights Reserved.</div>
				</div>
			</div>

			<script>
				function login() {
					location.href = "<%=contextPath%>/views/member/loginform.jsp";
				}

			</script>

			<script>
				function signin() {
					location.href = "<%=contextPath%>/views/member/signin.jsp";
				}
			</script>
			<!-- -------------------------------------------------------------------- -->
		</body>

		</html>