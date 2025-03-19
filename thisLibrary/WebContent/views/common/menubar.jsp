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

				#headnavigator {
					position: relative;
					width: 60%;
					height: 100%;
					display: flex;
					align-items: center;
					justify-content: space-around;
					box-sizing: border-box;
				}

				#footernavigator {
					position: relative;
					width: 60%;
					height: 100%;
					display: flex;
					align-items: center;
					justify-content: space-around;
				}

				#headnavigator>div {
					position: relative;
				}

				#headnavigator a,
				#footernavigator>a {
					text-decoration: none;
					color: black;
					font-size: 13px;
					padding: 10px 15px;
					display: block;
					font-weight: bold;
					cursor: pointer;
					height: 100%;
					line-height: 50px;
				}

				.submenu {
					position: absolute;
					top: 100%;
					left: 0;
					width: 150px;
					background: white;
					box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
					border-radius: 5px;
					opacity: 0;
					visibility: hidden;
					transition: opacity 0.4s ease-in-out, transform 0.2s ease-in-out;
					transform: translateY(-10px);
					z-index: 10;
					text-align: center;
					
				}

				.submenu a {
					font-size: 12px;
					transition: background 0.2s ease-in-out;
				}

				.submenu a:hover {
					background: #f5f5f5;
					cursor: pointer;
				}

				#headnavigator>div:hover .submenu {
					opacity: 1;
					visibility: visible;
					transform: translateY(-10px);
				}

				@keyframes dropdown {
					0% {
						opacity: 0;
						transform: translateY(-10px);
					}

					100% {
						opacity: 1;
						transform: translateY(0);
					}
				}

				#headnavigator>div:hover .submenu,
				.submenu:hover {
					opacity: 1;
					visibility: visible;
					transform: translateY(0);
				}

				#headnavigator>div:not(:hover) .submenu {
					transition-delay: 0.2s;
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
									style="height: 100%; width: 100%;"></a>
						</div>
						<div id="headnavigator">
							<a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a>

							<div class="naviDiv">
								<a href="#">게시판</a>
								<div class="submenu">
									<a href="<%=contextPath%>/views/vote/voteList.jsp">온라인 투표</a>
									<a href="<%=contextPath%>/views/board/boardList.jsp">자유게시판</a>
								</div>
							</div>

							<div class="naviDiv">
								<a href="#">전체도서</a>
								<div class="submenu">
									<a href="<%=contextPath%>/views/books/bestSellers.jsp">인기도서</a>
									<a href="#" onclick="scrollToSection('content_2_1')">오늘의 픽</a>
									<a href="#" onclick="scrollToSection('content_2_5')">관리자의 픽</a>
								</div>
							</div>

							<div class="naviDiv">
								<a href="#">고객센터</a>
								<div class="submenu">
									<a href="<%=contextPath%>/views/serviceCenter/persnalInquiry.jsp">1:1 문의하기</a>
									<a href="<%=contextPath%>/views/serviceCenter/persnalInquiryList.jsp">1:1 문의 내역</a>
									<a href="<%=contextPath%>/views/serviceCenter/faqList.jsp">F&Q 질문 내역</a>
									<a href="<%=contextPath%>/views/serviceCenter/customerSerivce.jsp">전화상담</a>
									<a href="<%=contextPath%>/views/serviceCenter/notice.jsp">공지사항</a>
								</div>
							</div>
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
				<!-- -------------------------------------------------------------------- -->






				<!-- -----------------------------footer---------------------------------- -->
				<div id="footer" style="background-color: #fdf5f1;">
					<div id="footer_1">
						<div id="footer_1_1">
							<img src="<%=contextPath%>/views/common/assets/This_서고 로고.png" alt="">
						</div>
						<div id="footernavigator" class="navigator">
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
					location.href = "<%= contextPath %>/views/member/myPage.jsp";
				}
			</script>
			<!-- -------------------------------------------------------------------- -->
			<!-- ------------------------메뉴바에서 오늘의픽, 관리자의 픽 클릭시 부드럽게 이동 -------------------------------------------- -->

			<script>
				let menuTimeout;

				document.querySelectorAll(".naviDiv").forEach((menu) => {
					const submenu = menu.querySelector(".submenu");

					menu.addEventListener("mouseenter", () => {
						clearTimeout(menuTimeout); // 기존 타이머 제거
						submenu.style.opacity = "1";
						submenu.style.visibility = "visible";
						submenu.style.transform = "translateY(0)";
					});

					menu.addEventListener("mouseleave", () => {
						menuTimeout = setTimeout(() => {
							submenu.style.opacity = "0";
							submenu.style.visibility = "hidden";
							submenu.style.transform = "translateY(-10px)";
						}, 200); // 0.3초 후에 사라짐 (너무 빨리 사라지는 문제 해결)
					});
				});
			</script>
		</body>

		</html>