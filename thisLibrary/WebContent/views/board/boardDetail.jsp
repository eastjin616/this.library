<%@page import="com.kh.member.model.vo.Member"%>
<%@page import="com.kh.board.model.vo.Attachment"%>
<%@page import="com.kh.board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% 
		String contextPath=request.getContextPath(); 

		// 글번호, 닉네임, 제목, 내용, 조회수, 작성일
		Board b = (Board)request.getAttribute("b");
		
		// 첨부파일이 없다면 null
		// 첨부파일이 있다면 파일번호, 원본명, 수정명, 저장경로
		Attachment at = (Attachment)request.getAttribute("at"); 
		
		Member loginMember= (Member)session.getAttribute("loginMember");
		
		String alertMsg = (String)session.getAttribute("alertMsg");
		

		
%>

		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Document1</title>
			
			<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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
					/* padding-left: 770px; */
				}

				.set-header{
					/* padding-left: 720px; */
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
			<% if(alertMsg != null){ %>
				<script>
					alert("<%= alertMsg %>");
				</script>
					<% session.removeAttribute("alertMsg"); %> <!-- 이걸 안해주면 다른 곳 가도 한번 더 읽혀서 창이 계속 뜸 -->
			<% } %>
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
						<h2><%=b.getBoardTitle() %><span class="label">팔로우</span></h2>
						<% if(loginMember != null && loginMember.getNickname().equals(b.getBoardWriter())){ %>
						<span class="set-header">
						<button onclick="location.href='<%= contextPath %>/updateForm.bo?bno=<%= b.getBoardNo() %>'">수정</button> | 
						<button onclick="location.href='<%= contextPath %>/delete.bo?bno=<%= b.getBoardNo() %>'">삭제</button>
						</span>
						<%} %>
						<p class="post-meta">
							작성자: <%=b.getBoardWriter() %> | <%=b.getWriteDate() %> | 조회수: <%=b.getCount() %>
						</p>
					</div>

					<div class="post-content">
						<p>
						<%=b.getBoardContent() %>
						</p>
					</div>
					

					<div class="comment-section">
					<%if(at != null){ %>
					첨부파일 : <a download="<%= at.getOriginName() %>" href="<%= contextPath %>/<%= at.getFilePath() + at.getChangeName()%>"><%= at.getOriginName() %></a> <!-- attachment 테이블에 origin 컬럼에 있음 -->
					<%} else{ %>
						첨부파일 없음
					<%} %>
						<h3 class="comment-count">댓글 5</h3>
	
						<div class="comment-form">
							<div class="comment-form-header">
								<h4>댓글 작성하기</h4>
								<button class="submit-btn" onclick="insertReply()">작성하기</button>
							</div>
							<textarea id="replyContent" placeholder="댓글을 입력하세요..." maxlength="300" style="width: 1000px;"></textarea>
							<div class="char-count">0 / 300 자</div>
						</div>

						<div class="comment-list">
							
						
							
						</div>
					</div>

					<script>
								$(function(){// 화면이 다 로드되고 나서 하는 행위
									// 댓글조회
									selectReplyList();
								
									// setInterval(주기적으로 실행할 함수, ms단위 시간);
									setInterval(selectReplyList, 1000); // 1초에 한번씩 새로고침
								})
								
								// ajax으로 댓글 작성용 함수
								function insertReply(){
									$.ajax({
										url:"rinsert.bo",
										data:{
											content:$("#replyContent").val(),
											bno:<%= b.getBoardNo() %>,
										},
										type:"post",
										success:function(result){
											if(result > 0){ // 댓글 작성 성공 => 갱신된 댓글 리스트 조회
												selectReplyList();
												$("#replyContent").val("");
											}else{ // 댓글 작성 실패
												
											}
										},error:function(){
											console.log("댓글 작성용 ajax 통신 실패")
										}
									})
								}
								
								// ajax으로 해당 게시글에 딸린 댓글 목록 조회용 함수
								function selectReplyList(){
									$.ajax({
										url:"rlist.bo",
										data:{bno:<%= b.getBoardNo() %>},
										success:function(rlist){
											let value = ""
											for(let i=0; i<rlist.length; i++){
												value += "<div class='comment'>"
													 + "<p class='comment-meta'><strong>" + rlist[i].memNo + "</strong> | "  + rlist[i].answerDate+ "<span class='label'> 팔로우 </span>"
													 + "<span class='set-comment'><button style='margin-left:0px'> 수정 </button> | <button> 삭제 </button></span>"
													 + "</p>"
													 + "<p class='comment-text'>"
													 + rlist[i].answerContent
													 + "</p>"
												   + "</div>"
												
												   $(".comment-list").html(value)
												
										
											}
											
										},error:function(){
											console.log("댓글목록 조회용 ajax 통신 실패");
										}
										
									})
								}
								
						</script>
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

			</script>

			<script>
				function signin() {
					location.href = "<%=contextPath%>/views/member/signin.jsp";
				}
			</script>
			<!-- -------------------------------------------------------------------- -->
		</body>

		</html>