<%@page import="com.kh.board.model.vo.Attachment" %>
	<%@page import="com.kh.board.model.vo.Board" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

			<% String alertMsg=(String)session.getAttribute("alertMsg"); // 글번호, 닉네임, 제목, 내용, 조회수, 작성일 Board
				b=(Board)request.getAttribute("b"); // 첨부파일이 없다면 null // 첨부파일이 있다면 파일번호, 원본명, 수정명, 저장경로 Attachment
				at=(Attachment)request.getAttribute("at"); %>

				<!DOCTYPE html>
				<html lang="en">

				<head>
					<meta charset="UTF-8">
					<meta name="viewport" content="width=device-width, initial-scale=1.0">
					<title>Document1</title>
					<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
					<style>
						div {
							box-sizing: border-box;
						}

						/*-------------------------------------------------------------  */
						#content {
							margin-top: 200px
						}

						/* ---------------------------------------------- */
						/* ---content 나누기--- */
						#mainContent {
							display: flex;
						}

						#slideGem {
							width: 20%;
							margin-left: 30px;
						}

						#sidebar {
							height: auto;
							float: left;
						}

						#bookContent {
							height: auto;
							justify-content: center;
							align-items: center;
							width: 80%;
						}



						#bookInfo {
							display: flex;
						}


						/* ---------이제 디테일--------- */
						#bookImg {
							width: 50%;
							display: flex;
							justify-content: center;
						}

						#bookImg img {
							margin: auto;
							display: block;
							height: 100%;
						}

						#bookIntroduce {
							width: 50%;
							margin: auto;
						}

						#bookIntroduce img {
							width: 50%;
						}

						#booktitle {
							margin-bottom: 130px;
						}

						#bookSimple img {
							margin-left: 15%;
							height: 400px;
						}

						#bookPhoto img {
							margin-left: 15%;
							height: 400px;
						}

						#authorDetailInfo {
							background-color: rgb(235, 235, 235);
							margin: 2%;
							border-radius: 2%;
							width: 70%;
							padding: 2%;
						}

						#translatorDetail {
							background-color: rgb(235, 235, 235);
							margin: 2%;
							border-radius: 2%;
							width: 70%;
							padding: 2%;
						}

						/* ========================== */
						#authorTitle {
							margin-top: 30px;
							margin-left: 20px;
						}

						#authorInfo {
							height: auto;
						}

						#translator {
							background-color: rgb(235, 235, 235);
							margin: 2%;
							border-radius: 2%;
							width: 70%;
						}

						#authorName {
							margin-top: 30px;
							margin-left: 15px;
						}

						#authorJob {
							margin-left: 15px;
						}

						#neyong {
							margin-left: 15px;
							margin-bottom: 15px;
						}

						#authorPhoto {
							display: flex;
							margin-left: 15px;
							margin-bottom: 150px;
						}

						.authorBookImg,
						.translatorBookImg {
							margin-left: 15px;
							display: grid;
							grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
							gap: 10px;
							/* 사진 사이의 간격 설정 */
							height: 300px;
							margin-right: 5%;
						}

						.authorBookImg>img,
						.translatorBookImg>img {
							height: 300px;

						}


						pre {
							margin-left: 30px;
							margin-top: 30px;
						}

						/* ========================== */
						#translatorTitle {
							margin-top: 30px;
							margin-left: 20px;
						}

						#translatorInfo {
							height: auto;
						}


						#translatorName {
							margin-top: 30px;
							margin-left: 15px;
						}

						#translatorJob {
							margin-left: 15px;
						}

						#neyong {
							margin-left: 15px;
						}

						#translatorPhoto {
							display: flex;
							margin-left: 15px;
							margin-bottom: 150px;
						}


						/*--------사이드바---------------------------------------------  */
						#sidebar {
							width: 80%;
							background-color: #fff7eb;
							border: 2px solid #a56b2a;
							border-radius: 15px;
							padding: 20px;
							box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.1);
							font-family: 'Gyeonggi_Batang_Regular';
							margin: auto;
						}

						#sidebar h3 {
							font-size: 18px;
							color: #5a3e1b;
							margin-bottom: 15px;
							padding-bottom: 8px;
							border-bottom: 2px solid #d9a066;
						}

						.book-list {
							list-style: none;
							padding: 0;
						}

						.book-list li {
							font-size: 14px;
							color: #333;
							padding: 10px 15px;
							margin: 5px 0;
							border-radius: 8px;
							transition: all 0.3s ease-in-out;
						}

						.book-list li:hover {
							background-color: #d9a066;
							color: white;
							font-weight: bold;
							transform: scale(1.05);
							cursor: pointer;
						}

						/* ==============preview======================================= */
						#preview {
							margin-left: 10%;
						}

						/* =======리뷰================================================ */
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
					</style>
				</head>
				<!-- ------------------------------------------------------------------ -->

				<body>

					<% if(alertMsg !=null){ %>
						<script>
							alert("<%= alertMsg %>");
						</script>
						<% session.removeAttribute("alertMsg"); %>
							<!-- 이걸 안해주면 다른 곳 가도 한번 더 읽혀서 창이 계속 뜸 -->
							<% } %>
								<%@ include file="../common/menubar.jsp" %>
									<!-- -------------------------------------------------------------------- -->


									<div id="content">

										<div id="mainContent">
											<div id="slideGem">

												<div id="sidebar">
													<h3>개인서재 제목</h3>
													<ul class="book-list">
														<li>선재 업고 튀어</li>
														<li>호석의 뉴질랜드</li>
														<li>동진이의 영국여행</li>
													</ul>
												</div>
											</div>

											<!-- ------------------------------------------------ -->
											<div id="bookContent">
												<div id="booktitle" style="text-align: center; font-size: larger;">
													<h1>책 제목이 올겁니다.</h1>
												</div>
												<div id="bookInfo">

													<div id="bookImg">
														<img src="../../resources/assets/book1.jpg" alt="">
													</div>
													<div id="bookIntroduce">

														<div id="bookSimple">
															<img src="../../resources/assets/book1.jpg" alt="">
														</div>

														<div id="bookPhoto">
															<img src="../../resources/assets/book1.jpg" alt="">
														</div>
													</div>
												</div>
												<!-- ----------------------------------------------- -->
												<div id="bookExplan">
													<div id="authorTitle" style="text-align: left;">
														<h1>작가정보</h1>
													</div>
													<div id="authorInfo">
														<div id="authorDetailInfo">
															<div id="authorName">저자(글) 찰리 맥커시</div>
															<br>
															<div id="authorJob">만화가</div>
															<br>
															<div id="neyong">Lorem ipsum dolor sit amet consectetur
																adipisicing elit. Molestias fuga provident reiciendis placeat,
																rerum accusantium? Eligendi exercitationem unde minus numquam
																sed error, excepturi tempora totam repudiandae dolore, quibusdam
																iste asperiores. Aliquid expedita ea quas. Exercitationem, vero
																inventore distinctio aut officia numquam laboriosam doloremque
																commodi f ugiat, veritatis fuga quae, saepe earum illum nostrum
																autem ! Commodi vel quod quis culpa harum modi. Magni, sequi.
																Repudiandae, officia. Eius rem est nam, fug it, natus cumque
																similique tempore a odio quis cum max ime. Libero autem omnis
																laboriosam, obcaecati ducimus asperiores vero consectetur
																incidunt ipsam nam.</div>
															<br>
															<div id="authorPhoto">

																<div class="authorBookImg">
																	<img src="../../resources/assets/book1.jpg" alt="">
																</div>
																<div class="authorBookImg">
																	<img src="../../resources/assets/book1.jpg" alt="">
																</div>
																<div class="authorBookImg">
																	<img src="../../resources/assets/book1.jpg" alt="">
																</div>
															</div>
														</div>
													</div>
													<!-- ============================================================== -->
													<div id="translator">
														<div id="translatorDetail">
															<div id="translatorName">저자(글) 찰리 맥커시</div>
															<br>
															<div id="translatorJob">만화가</div>
															<br>
															<div id="neyong">Lorem ipsum dolor sit amet consectetur
																adipisicing elit. Molestias fuga provident reiciendis placeat,
																rerum accusantium? Eligendi exercitationem unde minus numquam
																sed error, excepturi tempora totam repudiandae dolore, quibusdam
																iste asperiores. Aliquid expedita ea quas. Exercitationem, vero
																inventore distinctio aut officia numquam laboriosam doloremque
																commodi f ugiat, veritatis fuga quae, saepe earum illum nostrum
																autem ! Commodi vel quod quis culpa harum modi. Magni, sequi.
																Repudiandae, officia. Eius rem est nam, fug it, natus cumque
																similique tempore a odio quis cum max ime. Libero autem omnis
																laboriosam, obcaecati ducimus asperiores vero consectetur
																incidunt ipsam nam.</div>
															<br>
															<div id="translatorPhoto">

																<div class="translatorBookImg">
																	<img src="../../resources/assets/book1.jpg" alt="">
																</div>
																<div class="translatorBookImg">
																	<img src="../../resources/assets/book1.jpg" alt="">
																</div>
																<div class="translatorBookImg">
																	<img src="../../resources/assets/book1.jpg" alt="">
																</div>
															</div>
														</div>
													</div>
													<div id="Table_of_Contents">
														<pre style="font-size: 40px; line-height: 60px;">
목차
서언................2
몬문................6
감사의 말.........126
						</pre>
													</div>
												</div>
											</div>
										</div>
										<br>
										<hr>
										<br>
										<div id="preview">
											<div id="intoBook">
												<h1 style="margin-left: 20px;">책 속으로</h1>
												<pre id="intoPreview" style="font-size: 20px; line-height: 40px;">
Lorem ipsum dolor sit amet consectetur
adipisicing elit. Molestias fuga provident reiciendis placeat,
rerum accusantium? Eligendi exercitationem unde minus numquam sed
error, excepturi tempora totam repudiandae dolore, quibusdam iste

asperiores. Aliquid expedita ea quas. Exercitationem, vero
inventore distinctio aut officia numquam laboriosam doloremque
commodi f ugiat, veritatis fuga quae, saepe earum illum nostrum
autem ! Commodi vel quod quis culpa harum modi. Magni, sequi.

Repudiandae, officia. Eius rem est nam, fug it, natus cumque
similique tempore a odio quis cum max ime. Libero autem omnis
laboriosam, obcaecati ducimus asperiores vero consectetur incidunt
ipsam nam.
				</pre>
											</div>
										</div>
										<hr style="width: 70%;">

										<div class="post-container" style="margin-top: 120px; margin-bottom: 120px;">
											<div class="post-header">
												<% if (b !=null) { %>
													<h2>
														<%= b.getBoardTitle() %><span class="label">팔로우</span>
													</h2>
													<% if (loginMember !=null && loginMember.getNickname().equals(b.getBoardWriter())) { %>
														<span class="set-header">
															<button
																onclick="location.href='<%= contextPath %>/updateForm.bo?bno=<%= b.getBoardNo() %>'">수정</button>
															|
															<button
																onclick="location.href='<%= contextPath %>/delete.bo?bno=<%= b.getBoardNo() %>'">삭제</button>
														</span>
														<% } %>
															<p class="post-meta">
																작성자: <%= b.getBoardWriter() %> | <%= b.getWriteDate() %> | 조회수: <%= b.getCount() %>
															</p>
															<% } else { %>
																<h2>게시글 정보를 불러올 수 없습니다.</h2>
																<% } %>
											</div>

											<div class="post-content">
												<% if (b !=null) { %>
													<p>
														<%= b.getBoardContent() %>
													</p>
													<% } %>
											</div>

											<div class="comment-section">
												<% if (at !=null) { %>
													첨부파일 :
													<a download="<%= at.getOriginName() %>"
														href="<%= contextPath %>/<%= at.getFilePath() + at.getChangeName() %>">
														<%= at.getOriginName() %>
													</a>
													<% } else { %>
														첨부파일 없음
														<% } %>

															<h3 class="comment-count">댓글 5</h3>

															<div class="comment-form">
																<div class="comment-form-header">
																	<h4>댓글 작성하기</h4>
																	<button class="submit-btn" onclick="insertReply()">작성하기</button>
																</div>
																<textarea id="replyContent" placeholder="댓글을 입력하세요..." maxlength="300"
																	style="width: 950px;"></textarea>
																<div class="char-count">0 / 300 자</div>
															</div>

															<div class="comment-list">
																<!-- 여기에 댓글 목록이 동적으로 삽입됨 -->
															</div>
											</div>
										</div>

										<script>
											$(function () {
												selectReplyList();
												setInterval(selectReplyList, 1000);
											});

											function insertReply() {
												$.ajax({
													url: "rinsert.bo",
													data: {
														content: $("#replyContent").val(),
														bno: <%= (b != null) ? b.getBoardNo() : 0 %>,
												},
													type: "post",
													success: function (result) {
														if (result > 0) {
															selectReplyList();
															$("#replyContent").val("");
														} else {
															alert("댓글 작성에 실패했습니다.");
														}
													},
													error: function () {
														console.log("댓글 작성 AJAX 실패");
													}
					});
			}

											function selectReplyList() {
												$.ajax({
													url: "rlist.bo",
													data: { bno: <%= (b != null) ? b.getBoardNo() : 0 %> },
													success: function (rlist) {
														let value = "";
														for (let i = 0; i < rlist.length; i++) {
															value += "<div class='comment'>"
																+ "<p class='comment-meta'><strong>" + rlist[i].memNo + "</strong> | " + rlist[i].answerDate
																+ "<span class='label'> 팔로우 </span>"
																+ "<span class='set-comment'><button style='margin-left:0px'> 수정 </button> | <button> 삭제 </button></span>"
																+ "</p>"
																+ "<p class='comment-text'>" + rlist[i].answerContent + "</p>"
																+ "</div>";
														}
														$(".comment-list").html(value);
													},
													error: function () {
														console.log("댓글 목록 조회 AJAX 실패");
													}
					});
			}
										</script>

										<%@ include file="../common/footerbar.jsp" %>
				</body>

				</html>