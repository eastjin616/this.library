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

				.label:hover{
					opacity: 0.7;
				}

				.post-meta {
					font-size: 14px;
					color: #777;
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

				.submit-btn:hover{
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

				.set-comment button, .set-header button{
						border: 0;
						background-color: transparent;
						
				}

				.set-comment button:hover, .set-header button:hover{
						cursor: pointer;
						opacity: 0.7;
				}

				.set-comment{
					padding-left: 770px;
				}

				.set-header{
					padding-left: 720px;
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
							<a a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> <a href="">온라인투표</a> <a href="<%= contextPath %>/views/board/boardList.jsp">자유게시판</a>
							<a href="">마이페이지</a> <a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
						</div>
						<div id="header_login_btn" style="height: 100%; width: 9%;">
							<button class="btn" id="login"  onclick="login()">Log
								In</button>
						</div>
						<div id="header_signin_btn" style="height: 100%; width: 9%;">
							<button class="btn" id="signin" onclick="signin()">Sign In</button>
						</div>
						<div id="header_mypage_btn" style="height: 100%; width: 7%;">
							<button class="btn" id="mypage">
								<img src="<%=contextPath%>/resources/assets/user01.png" alt="">
							</button>
						</div>

					</div>
				</div>
				<!-- -------------------------------------------------------------------- -->



				<div class="post-container">
					<div class="post-header">
						<h2>제목 들어갈 공간 <span class="label">팔로우</span></h2>
						<span class="set-header"><button>수정</button> | <button>삭제</button></span>
						
						<p class="post-meta">
							작성자: 작성자2 | 2025.02.18 | 조회수: 50
						</p>
					</div>

					<div class="post-content">
						<p>
							내용 들어갈 공간이야 흘러간다 근데 자기 싫다ㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅇㅁㄴㅇㄴㅁㅇ이것만 마무리 짓아야한다.지금은 2025년02월 23일 일요일
							오전12시26분이다.오전 2시라 세벽이겠지?그럼 00시까지 해야하나??
							어디까지 써야하지?조교님도 이만히 보신다 할까마지막이 좋을 것 같기도 하고,,,
						</p>
					</div>

					<div class="comment-section">
						<h3 class="comment-count">댓글 5</h3>

						<div class="comment-form">
							<div class="comment-form-header">
								<h4>댓글 작성하기</h4>
								<button class="submit-btn">작성하기</button>
							</div>
							<textarea placeholder="댓글을 입력하세요..." maxlength="300" style="width: 1000px;"></textarea>
							<div class="char-count">0 / 300 자</div>
						</div>

						<div class="comment-list">
							<div class="comment">
								<p class="comment-meta"><strong>작성자3</strong> | 2025.02.18 <span class="label">팔로우</span>
									<span class="set-comment"><button>수정</button> | <button>삭제</button></span>
								</p>
								<p class="comment-text">
									이왕 하면 내용 멋지고 지리고 맛있고 ~ 멋있네
									~ㅁㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ히히
									완전완전 ~ 총 익시어야죠 ~
								</p>
							</div>
							<div class="comment">
								<p class="comment-meta"><strong>작성자3</strong> | 2025.02.18 <span class="label">팔로우</span>
									<span class="set-comment"><button>수정</button> | <button>삭제</button></span>
								</p>
								<p class="comment-text">
									이왕 하면 내용 멋지고 지리고 맛있고 ~ 멋있네
									~ㅁㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ히히
									완전완전 ~ 총 익시어야죠 ~
								</p>
							</div>
							<div class="comment">
								<p class="comment-meta"><strong>작성자3</strong> | 2025.02.18 <span class="label">팔로우</span>
									<span class="set-comment"><button>수정</button> | <button>삭제</button></span>
								</p>
								<p class="comment-text">
									이왕 하면 내용 멋지고 지리고 맛있고 ~ 멋있네
									~ㅁㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ히히
									완전완전 ~ 총 익시어야죠 ~
								</p>
							</div>
							<div class="comment">
								<p class="comment-meta"><strong>작성자3</strong> | 2025.02.18 <span class="label">팔로우</span>
									<span class="set-comment"><button>수정</button> | <button>삭제</button></span>
								</p>
								<p class="comment-text">
									이왕 하면 내용 멋지고 지리고 맛있고 ~ 멋있네
									~ㅁㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ히히
									완전완전 ~ 총 익시어야죠 ~
								</p>
							</div>
							<div class="comment">
								<p class="comment-meta"><strong>작성자3</strong> | 2025.02.18 <span class="label">팔로우</span>
									<span class="set-comment"><button>수정</button> | <button>삭제</button></span>
								</p>
								<p class="comment-text">
									이왕 하면 내용 멋지고 지리고 맛있고 ~ 멋있네
									~ㅁㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ히히
									완전완전 ~ 총 익시어야죠 ~
								</p>
							</div>
						</div>
					</div>

					<div class="pagination">
						<span><</span>
						<span>1</span>
						<span>2</span>
						<span>3</span>
						<span>4</span>
						<span>5</span>
						<span>></span>
					</div>
				</div>



				<!-- -----------------------------footer---------------------------------- -->
				<div id="footer" style="background-color: #fdf5f1;">
					<div id="footer_1">
						<div id="footer_1_1">
							<img src="<%=contextPath%>/resources/assets/This_서고 로고.png" alt="">
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