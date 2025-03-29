<%@page import="com.kh.vote.model.vo.Vote"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
	Vote v = (Vote)request.getAttribute("v");
%>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Document1</title>
						<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

			<style>
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

				.vote {
					display: flex;
					justify-content: center;
				}

				#vs {
					align-content: center;
					padding-left: 50px;
					padding-right: 50px;
				}
			</style>
		</head>
		<meta charset="UTF-8">
		<!-- ------------------------------------------------------------------ -->

		<body>
				<%@ include file="../common/menubar.jsp" %>
				<div class="post-container">
					<div class="post-header">
						<h2><%=v.getVoteTitle() %><span class="label">팔로우</span></h2>
						<span class="set-header"><button>수정</button> | <button>삭제</button></span>

						<p class="post-meta">
							작성자: <%=v.getWriter() %> | <%=v.getVoteStartDate() %> | 조회수 : <%=v.getCount() %>
						</p>
					</div>

					<div class="post-content">
						<p>
						
							<center><h2>투표 종료일</h2></center>
							<center><h3><%=v.getVoteEndDate() %></h3></center>
							<br>

						<div class="vote">
							<div id="book1" onclick="voteSelect(1)">
								<img id="selectBook1" src="<%=v.getBook1Url() %>" width="350" height="500">
								<center>
									<div><%=v.getBook1() %></div>
									<div>현재 투표수 : <%=v.getVoteCount1() %></div>
								</center>
							</div>

							<div id="vs"><img src="<%= contextPath %>/resources/assets/vs.png" alt=""></div>

							<div id="book2" onclick="voteSelect(2)">
								<img id="selectBook2" src="<%=v.getBook2Url() %>" width="350" height="500">
								<center>
									<div><%=v.getBook2() %></div>
									<div>현재 투표수 : <%=v.getVoteCount2() %></div>
								</center>
							</div>

						</div>

						<button class="submit-btn" style="margin-left: 47%;" onclick="vote()">투표하기</button>

						</p>
					</div>

					<script>
					let bookNum = 0;
					let selectBook1 = 0;
					let selectBook2 = 0;
					function voteSelect(bNum){
						bookNum = bNum;
						if(bNum == 1){
								$("#selectBook2").css({
									  "border": "0px",
								});
							$("#selectBook1").css({
								  "border": "3px solid red",
								  "border-radius": "5px" // 추가적으로 테두리 둥글게 설정
							});
						}else{
								$("#selectBook1").css({
									  "border": "0px",
								});
							$("#selectBook2").css({
								  "border": "3px solid red",
								  "border-radius": "5px" // 추가적으로 테두리 둥글게 설정
							});
						}
					}

					function vote(){
						location.href="<%=contextPath%>/vote.vo?vNo=<%=v.getVoteNo()%>&bNum="+bookNum;
					}
						
					</script>

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
								<p class="comment-meta"><strong>작성자3</strong> | 2025.02.18
									<span class="set-comment"><button>수정</button> | <button>삭제</button></span>
								</p>
								<p class="comment-text">
									이왕 하면 내용 멋지고 지리고 맛있고 ~ 멋있네
									~ㅁㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ히히
									완전완전 ~ 총 익시어야죠 ~
								</p>
							</div>
							<div class="comment">
								<p class="comment-meta"><strong>작성자3</strong> | 2025.02.18
									<span class="set-comment"><button>수정</button> | <button>삭제</button></span>
								</p>
								<p class="comment-text">
									이왕 하면 내용 멋지고 지리고 맛있고 ~ 멋있네
									~ㅁㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ히히
									완전완전 ~ 총 익시어야죠 ~
								</p>
							</div>
							<div class="comment">
								<p class="comment-meta"><strong>작성자3</strong> | 2025.02.18
									<span class="set-comment"><button>수정</button> | <button>삭제</button></span>
								</p>
								<p class="comment-text">
									이왕 하면 내용 멋지고 지리고 맛있고 ~ 멋있네
									~ㅁㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ히히
									완전완전 ~ 총 익시어야죠 ~
								</p>
							</div>
							<div class="comment">
								<p class="comment-meta"><strong>작성자3</strong> | 2025.02.18
									<span class="set-comment"><button>수정</button> | <button>삭제</button></span>
								</p>
								<p class="comment-text">
									이왕 하면 내용 멋지고 지리고 맛있고 ~ 멋있네
									~ㅁㅇㅁㄴㅇㄴㅁㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ히히
									완전완전 ~ 총 익시어야죠 ~
								</p>
							</div>
							<div class="comment">
								<p class="comment-meta"><strong>작성자3</strong> | 2025.02.18
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
				<%@ include file="../common/footerbar.jsp" %>
		</body>

		</html>