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
					width: 1000px;
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
					width: 1000px;
					border: 1px solid;
					background-color: #964b00;
					box-sizing: border-box;

				}

				/* 
				.container2 * {
					border: 1px solid;
				} */

				.container {
					background-color: white;
					width: 98.5%;
					margin-left: 1.5%;
					display: flex;
				}

				.container1 {
					width: 15%;
					background-color: rgb(252, 230, 234);
				}

				/* -------------------------------------------container2 options------- */
				.container2 {
					width: 85%;
					padding: 5% 3%;
				}


				.container2 span,
				#commantaryTitle,
				#readGoalTitle,
				#JjimTitle {
					line-height: 40px;
					font-size: 15px;
					margin-left: -2%;

				}

				#mypageMainContent1 {
					font-size: 24px;
					font-weight: bold;
					margin-bottom: 15px;
				}

				#mypageMainContent2 {
					display: flex;
					align-items: center;
					width: 100%;
					border: 2px solid #ddd;
					border-radius: 10px;
					box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
					height: 200px;
					margin-bottom: 40px;
				}

				#mypageMainContent2ProfilPhoto {
					width: 50%;

				}

				#readGoalTitle,
				#commantaryTitle,
				#JjimTitle {
					font-weight: 800;
				}

				#userPhoto {
					width: 200px;
					height: 200px;
					border-radius: 50%;
					margin-left: 40%;
					overflow: hidden;
					display: flex;
					justify-content: center;
					align-items: center;
					border: 1PX solid;
				}

				#userPhoto>img {
					width: 100%;
					height: 100%;
					object-fit: cover;
				}

				#mypagePInfo {
					width: 50%;
					padding-left: 20px;
				}

				#mypageName {
					font-size: 20px;
					font-weight: bold;
					display: flex;
					margin-top: 20px;

				}

				#mypageName>div>span {
					margin-left: 30px;
				}

				#mypageNameEdit {
					display: flex;
					margin-left: 10PX;


				}

				#mypageBtn {
					background-color: #ea916e;
					width: 50px;
					border: 2px solid #ddd;
					border-radius: 11px;

				}

				#mypageEmpty {
					margin: 10px 0;
					border-bottom: 2px solid #ddd;
					width: 80%;
					height: 3px;
				}

				#mypageFollow,
				#mypageFolloing,
				#mypageJjim {
					font-size: 16px;
					margin: 5px 0;
					display: flex;
					margin-top: 15px;
				}

				/* ------------------------------commantary */


				#mypageMainContent3 {
					width: 100%;
					border: 2px solid #ddd;
					border-radius: 10px;
					box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
					height: 200px;
					margin-bottom: 40px;
					box-sizing: border-box;
					display: flex;
				}



				/* #commantary *{
					border: 1px solid;
				} */
				#commantaryContentTitle1 {
					display: flex;
				}

				#commantaryContentTitle2 {
					width: 100%;
					margin-bottom: auto;
					box-sizing: border-box;
					height: 100%;
				}

				#commantaryContentTitle2>textarea {
					width: 100%;
					height: 100%;
					border-radius: 10px;
					box-sizing: border-box;
					border: none;
					resize: none;

				}

				#commantaryContentTitle1>input {
					border: none;

				}

				#divWrap {
					display: flex;
				}

				#saveBtn {
					margin-left: auto;
				}

				#saveBtn>button {
					background-color: #ea916e;
					border-radius: 11px;
					border: 2px solid #ddd;
					height: 40px;
				}

				#boardarea {
					display: flex;
				}

				.mypageMainContent3_1_1 {
					width: 70%;
					margin: auto;
					text-align: center;
				}

				.pagination {
					margin-top: 20px;
				}

				.pagination button {
					padding: 8px 12px;
					margin: 2px;
					border: none;
					background-color: #007bff;
					color: white;
					cursor: pointer;
				}

				.pagination button:disabled {
					background-color: #ccc;
				}

				#listTopmenu {
					display: flex;
					border: 1px solid;
				}

				.list {
					border-top: 1px solid #ccc;
				}

				.list-item {
					display: flex;
					justify-content: space-between;
					padding: 10px;
					border-bottom: 1px solid #ccc;
				}

				.pagination {
					margin-top: 20px;
					display: flex;
					justify-content: center;
					gap: 10px;
				}

				.pagination button {
					padding: 5px 10px;
					border: none;
					cursor: pointer;
				}

				.pagination .active {
					font-weight: bold;
					color: white;
					background: blue;
					border-radius: 3px;
				}

				.pagination .disabled {
					color: #ccc;
					cursor: not-allowed;
				}

				/* ===================================readGoal */
				#mypageMainContent4 {
					align-items: center;
					width: 100%;
					border: 2px solid #ddd;
					border-radius: 10px;
					box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
					height: 200px;
					margin-bottom: 40px;
					box-sizing: border-box;
					display: flex;
				}

				#readGoal1 {
					width: 20%;
					height: 100%;
				}

				#readGoal2 {
					width: 50%;
					height: 100%;
				}

				#redGaol1_1,
				#redGaol1_2,
				#redGaol1_3 {
					height: 33%;
					width: 100%;
					text-align: right;
					line-height: 50px;
					box-sizing: border-box;
				}

				#redGaol2_1,
				#redGaol2_2,
				#redGaol2_3 {
					height: 33%;
					width: 100%;
					line-height: 50px;
					padding-left: 20px;
					box-sizing: border-box;
				}

				/* =========================================== jjim */
				#mypageMainContent5 {
					align-items: center;
					width: 100%;
					border: 2px solid #ddd;
					border-radius: 10px;
					box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
					height: 200px;
					margin-bottom: 40px;
					box-sizing: border-box;
					display: flex;
				}

				#jjim1,
				#jjim2,
				#jjim3,
				#jjim4 {
					width: 20%;
					height: 80%;
					border: 1px solid;
					margin: 2.5%;

				}

				#jjim1>img,
				#jjim2>img,
				#jjim3>img,
				#jjim4>img {
					margin-left: 30px;
				}

				#jjim1:hover,
				#jjim2:hover,
				#jjim3:hover,
				#jjim4:hover {
					cursor: pointer;
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
							<button class="btn" id="login" onclick="location.href='<%=contextPath%>/views/member/loginform.jsp'">Log
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

				<div class="wrap2">
					<div class="container">
						<div class="container1">


						</div>
						<div class="container2">
							<!-- --------------------------------mtpage -->
							<div id="mypageMainContent1">
								<span>My Page</span>
							</div>
							<div id="mypageMainContent2">
								<div id="mypageMainContent2ProfilPhoto">
									<div id="userPhoto"><img src="../../resources/assets/chill.png" alt=""></div>
								</div>
								<div id="mypagePInfo">
									<div id="mypageName">
										<div><span>이호석</span></div>
										<div id="mypageNameEdit">
											<button id="mypageBtn">수정</button>
											<button id="mypageBtn">탈퇴</button>
										</div>
									</div>
									<div id="mypageEmpty"></div>
									<div id="mypageFollow">
										<div>팔로우</div>
										<div></div>
									</div>
									<div id="mypageFolloing">
										<div>팔로잉</div>
										<div></div>
									</div>
									<div id="mypageJjim">
										<div>찜 목록</div>
										<div></div>
									</div>
								</div>
								<!-- -------------------------commantary -->
							</div>
							<div id="commantary">
								<div><span id="commantaryTitle">Commantary</span></div>
								<div id="divWrap">
									<div id="commantaryContentTitle1">
										<span>- 저자 : </span> <input type="text" placeholder="저자를 입력해주세요. ">
										<span>- 제목 : </span> <input type="text" placeholder="제목을 입력해주세요.  ">
									</div>
									<div id="saveBtn">
										<button>목록보기</button>
										<button>저장하기</button>
									</div>
								</div>
								<div id="boardarea">
									<div id="mypageMainContent3">
										<div id="commantaryContentTitle2">
											<textarea name="commantary" id=""></textarea>
										</div>
									</div>

								</div>


							</div>
							<!-- ---------------------------읽기목표 설정하기 -->
							<div id="readGaol">
								<div id="divWrap">
									<div><span id="readGoalTitle">읽기목표 설정하기</span></div>
									<div id="saveBtn">
										<button>목록보기</button>
										<button>저장하기</button>
									</div>

								</div>
								<div id="mypageMainContent4">
									<div id="readGoal1">
										<div id="redGaol1_1">목표 책 권수 : </div>
										<div id="redGaol1_2">목표 시작일 : </div>
										<div id="redGaol1_3">목표 종료일 : </div>

									</div>
									<div id="readGoal2">
										<div id="redGaol2_1">2 </div>
										<div id="redGaol2_2">2 </div>
										<div id="redGaol2_3">2 </div>
									</div>
								</div>

							</div>

							<!-- ----------------------------찜목록 -->
							<div>
								<div><span id="JjimTitle">찜 목록</span></div>
								<div id="mypageMainContent5">
									<div class="jjim"></div>
									<div id="jjim1"><img src="" alt="" onclick="book1()"></div>
									<div id="jjim2"><img src="" alt="" onclick="book1()"></div>
									<div id="jjim3"><img src="" alt="" onclick="book1()"></div>
									<div id="jjim4"><img src="" alt="" onclick="book1()"></div>

								</div>


							</div>
						</div>
					</div>
				</div>
			</div>

			<script>
				function book1() {
					location.href = "<%= contextPath %>/views/member/loginform.jsp";
				}
			</script>


			<!-- -------------------------------------------------------------------- -->
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
					location.href = "<%=contextPath%>/ views / member / signin.jsp";
				}

				function mypage() {
	     location.href="<%= contextPath %>/views/member/myPage.jsp";
	   }
			</script>
			<!-- -------------------------------------------------------------------- -->
		</body>

</html>