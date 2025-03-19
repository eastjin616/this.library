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
					width: 50%;
					height: 50%;
					border-radius: 5px;
					background-color: #ea916e;
					color: white;
					border: none;
				}

				#signin {
					width: 50%;
					height: 50%;
					border-radius: 5px;
					background-color: #ea916e;
					color: white;
					border: none;
				}

				/* ---------------------------------------------- */
				#mypage {
					border-radius: 50%;
					width: 40%;
					height: 60%;
					background-color: #ea916e;
					border: none;
				}

				#mypage>img {
					width: 100%;
					height: 100%;
				}

				/* ---------------------------------------------- */
				.btn:hover {
					opacity: 0.7;
					color: white;
					cursor: pointer;
				}

				/*-------------------------------------------------------------  */

				.post-container {
					width: 70%;
					margin: 30px auto;
					padding: 20px;
					background: white;
					border-radius: 10px;
					box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
				}

				.post-header {
					border-bottom: 1px solid #ddd;
					padding-bottom: 10px;
					margin-bottom: 10px;
				}

				.post-header h2 {
					display: inline-block;
					margin: 0;
				}

				.label {
					background: #ff7f50;
					color: white;
					font-size: 12px;
					padding: 3px 6px;
					border-radius: 4px;
					margin-left: 5px;
				}

				.label:hover {
					opacity: 0.7;
				}

				.post-content {
					font-size: 16px;
					line-height: 1.6;
					margin-bottom: 20px;
				}

				.comment-section {
					border-top: 2px solid #ddd;
					padding-top: 20px;
				}

				/* 댓글 개수 스타일 */
				.comment-count {
					font-size: 18px;
					font-weight: bold;
					margin-bottom: 10px;
				}

				/* 댓글 입력 영역 */
				.comment-form {
					background: #f9f9f9;
					padding: 15px;
					border-radius: 8px;
					border: 1px solid #ddd;
					display: flex;
					flex-direction: column;
					gap: 10px;
					position: relative;
				}


				/* 댓글 작성하기 제목 + 버튼 */
				.comment-form-header {
					display: flex;
					justify-content: space-between;
					align-items: center;
				}


				.comment-form-header h4 {
					margin: 0;
					font-size: 16px;
					font-weight: bold;
				}

				/* 텍스트 입력 창 */
				.comment-form textarea {
					width: 100%;
					height: 80px;
					padding: 10px;
					border: 1px solid #ddd;
					border-radius: 5px;
					resize: none;
					font-size: 14px;
				}

				/* 글자 수 카운트 (0 / 300 자) */
				.char-count {
					font-size: 12px;
					color: #777;
					text-align: right;
					padding-right: 5px;
				}

				.submit-btn {
					padding: 6px 12px;
					background-color: #ff7f50;
					color: white;
					border: none;
					border-radius: 5px;
					cursor: pointer;
					font-size: 14px;
				}

				.submit-btn:hover {
					opacity: 0.7;
				}

				.comment {
					border-bottom: 1px solid #eee;
					padding: 10px 0;
				}

				.comment p {
					margin: 5px 0;
				}

				.comment-meta {
					font-size: 15px;
					padding-bottom: 5px;
				}

				.comment-text {
					line-height: 1.2;
				}

				.pagination {
					text-align: center;
					margin-top: 15px;
				}

				.pagination span {
					display: inline-block;
					padding: 5px 10px;
					margin: 2px;
					cursor: pointer;
					border: 1px solid #ddd;
					border-radius: 3px;
				}

				.pagination span:hover {
					background: #f0f0f0;
				}

				.set-comment button,
				.set-header button {
					border: 0;
					background-color: transparent;

				}

				.set-comment button:hover,
				.set-header button:hover {
					cursor: pointer;
					opacity: 0.7;
				}

				.set-comment {
					padding-left: 770px;
				}

				.vote {
					display: flex;
					justify-content: center;
				}


				.card {
					width: 30%;
					aspect-ratio: 2 / 3;
					background: #c0ddfa;
					border-radius: 20px;
					display: flex;
					justify-content: center;
					align-items: center;
					position: relative;
					overflow: hidden;
					cursor: pointer;
					margin: auto;
					transition: transform 0.75s;
					/* 애니메이션 시간 설정 */
				}

				.card:hover {
					transform: scale(1.1);
					/* 마우스 오버 시 크기 증가 */
					border-radius: 50%;
					/* 원형으로 변경 */
				}

				.card img {
					width: 100%;
					height: 100%;
					object-fit: cover;
					position: absolute;
					margin-right: 10px;
				}

				.upload-icon {
					position: absolute;
					font-size: 24px;
					color: #6c757d;
					z-index: 1;
				}

				input[type="file"] {
					display: none;
				}

				.container {
					width: 80%;
					margin: 20px auto;
					display: flex;
				}

				.table {
					width: 100%;
					border-collapse: collapse;
				}

				.button-group {
					display: flex;
					margin-left: 90%;
					gap: 10px;
					/* 버튼 간격 */
					
				}

				button:hover {
					opacity: 0.7;
				}

				.button-group button {
					background: #ea916e;
					color: white;
					border: none;
					padding: 10px 15px;
					border-radius: 5px;
					cursor: pointer;
					font-size: 14px;
					width: 85px;
					justify-content: right;

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
							<a href="<%=contextPath%>"><img src="<%=contextPath%>/resources/assets/This_서고 로고.png" alt=""
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
							<button class="btn" id="login" onclick="login()">Log
								In</button>
						</div>
						<div id="header_signin_btn" style="height: 100%; width: 9%;">
							<button class="btn" id="signin" onclick="signin()">Sign In</button>
						</div>
						<div id="header_mypage_btn" style="height: 100%; width: 7%;">
							<button class="btn" id="mypage" onclick="mypage()">
								<img src="<%=contextPath%>/resources/assets/user01.png" alt="">
							</button>
						</div>

					</div>
				</div>
				<!-- -------------------------------------------------------------------- -->



				<div class="post-container">
					<div class="post-header">
						<h2>제목<input type="text" style="width: 985px; margin-left: 10px;"></h2>
					</div>

					<div class="post-content">
						<p>내용
							<center><textarea style="width: 1040px; height: 400px; resize: none;"></textarea></center>
							<br>

						<div id="post-content2">

							<div class="container">

								<div class="card" onclick="uploadImage(0)">
									<span class="upload-icon">➕</span>
									<input type="file" accept="image">
								</div>
								<div class="card" onclick="uploadImage(1)">
									<span class="upload-icon">➕</span>
									<input type="file" accept="image">
								</div>
							</div>

							<div class="button-group">
								<button onclick="submitPost()">작성하기</button>
							</div>

							</p>
						</div>
					</div>
				</div>



				<!-- -----------------------------footer---------------------------------- -->
				<div id="footer" style="background-color: #fdf5f1;">
					<div id="footer_1">
						<div id="footer_1_1">
							<img src="<%=contextPath%>/resources/assets/This_서고 로고.png" alt="">
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