<%@page import="com.kh.board.model.vo.Attachment"%>
<%@page import="com.kh.board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% 
		
		// 글번호, 닉네임, 제목, 내용, 조회수, 작성일
		Board b = (Board)request.getAttribute("b");
		
		// 첨부파일이 없다면 null
		// 첨부파일이 있다면 파일번호, 원본명, 수정명, 저장경로
		Attachment at = (Attachment)request.getAttribute("at"); 
		
		
		
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


				.set-comment button, .set-header button{
						border: 0;
						background-color: transparent;
						
				}

				.set-comment button:hover, .set-header button:hover{
						cursor: pointer;
						opacity: 0.7;
				}
				
				/* -------------------- 모달 ------------------------*/
				h2{
		   		 text-align: center;
				}
				.modal_btn {
				    display: block;
				    margin: 40px auto;
				    padding: 10px 20px;
				    background-color: royalblue;
				    border: none;
				    border-radius: 5px;
				    color: #fff;
				    cursor: pointer;
				    transition: box-shadow 0.2s;
				}
				.modal_btn:hover {
				    box-shadow: 3px 4px 11px 0px #00000040;
				}
				
				/*모달 팝업 영역 스타일링*/
				.modal {
				/*팝업 배경*/
					display: none; /*평소에는 보이지 않도록*/
				    position: absolute;
				    top:0;
				    left: 0;
				    width: 100%;
				    height: 100vh;
				    overflow: hidden;
				    background: rgba(0,0,0,0.5);
				}
				.modal .modal_popup {
				/*팝업*/
				    position: absolute;
				    top: 50%;
				    left: 50%;
				    transform: translate(-50%, -50%);
				    padding: 20px;
				    background: #ffffff;
				    border-radius: 20px;
				}
				.modal .modal_popup .close_btn {
				    display: block;
				    padding: 10px 20px;
				    background-color: rgb(116, 0, 0);
				    border: none;
				    border-radius: 5px;
				    color: #fff;
				    cursor: pointer;
				    transition: box-shadow 0.2s;
				}
				.modal.on {
   				  display: block;
				}		
			</style>
		</head>
		<body>
		
		 	
				<%@ include file="../common/menubar.jsp" %>

				<% String loginNickname = (loginMember != null) ? loginMember.getNickname() : null; %>
				
				<div class="post-container" style="margin-top: 120px;margin-bottom: 120px;">
					<div class="post-header">
						<h2><%=b.getBoardTitle() %><span class="label" id="follow-btn" data-following="false">팔로우</span></h2>
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
						<h3 class="comment-count"></h3>
						<div style="border-bottom: 2px solid #eee"></div>
						
						<% if(loginMember == null){ %>
						
						<% }else{ %>
								<div class="comment-form">
		
									<div class="comment-form-header">
										<h4>댓글 작성하기</h4>
										<button class="submit-btn" onclick="insertReply()">작성하기</button>
									</div>
									<textarea id="replyContent" placeholder="댓글을 입력하세요..." maxlength="300" style="width: 1000px;"></textarea>
									<div class="char-count">0 / 300 자</div>
								</div>
						<% } %>
						
						<div class="comment-list">
							
						</div>
					</div>
					
					<!--모달 팝업-->
					<div class="modal">
					    <div class="modal_popup">
					        <h3>댓글 수정하기</h3>
					        <form action="<%=contextPath%>/rUpdate.bo" method="GET">
					        <textarea id="update_content" style="width:1000px; height: 100px;"></textarea>
					        <button type="button" class="close_btn">닫기</button>
					        <button type="submit" class="close_btn">수정하기</button>
					        <div id="hidden_area"></div>
					        </form>
					    </div>
					</div>
					<!--end 모달 팝업-->

					<script>
					
					
					
					
					
								$(function(){// 화면이 다 로드되고 나서 하는 행위
									// 댓글 개수 조회
									selectBoardAnswerCount();
									
									// 댓글조회
									selectReplyList();
								
									// setInterval(주기적으로 실행할 함수, ms단위 시간);
									setInterval(selectReplyList, 1000); // 1초에 한번씩 새로고침
									setInterval(selectBoardAnswerCount, 1000); 
								})
								
								// ajax으로 댓글 작성용 함수
								function insertReply(){
									const content = replyContent.value.trim();
						            if (content.length === 0) {
						                alert('댓글을 입력하세요.');
						                return;
						            }else{
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
														            charCountDisplay.innerHTML = `0 / <span id="maxChars">\${maxChars}</span> 자`;
																}else{ // 댓글 작성 실패
																	
																}
															},error:function(){
																console.log("댓글 작성용 ajax 통신 실패")
															}
														})
						            }
								}
								
								// ajax으로 해당 게시글에 딸린 댓글 목록 조회용 함수
								function selectReplyList(){
									$.ajax({
										url:"rlist.bo",
										data:{bno:<%= b.getBoardNo() %>},
										success:function(rlist){
											let value = "";
											let loginNickname = "<%= loginNickname %>"; // JSP에서 가져온 로그인 닉네임 (null 가능)
											for(let i=0; i<rlist.length; i++){
												let r = rlist[i].bAnswerNo; // 댓글 번호
				                let writer = rlist[i].memNo; // 댓글 작성자
				                let content = rlist[i].answerContent; // 댓글 내용
				              
				                /*
				                // 나 진짜 개천재인듯 ㅋ
				                if(isNaN(content)){
				                	content = `'\${content}'` // content가 숫자일때만 값이 잘 넘겨져서 한글일때는 빽틱 이용해서 양쪽에 홑따음표 달아줌
				                }
				                */
				               
												value += `<div class="comment"><p class="comment-meta"><strong>\${rlist[i].memNo}</strong> | \${rlist[i].answerDate}<span class="label"> 팔로우 </span><span class="set-comment">`;
													
													 if(loginNickname && loginNickname == writer){
															 value += `<button class="update" style="margin-left:0px" onclick="updateReply(\${r})"> 수정 </button> | <button onclick="hideReply(\${r})"> 삭제 </button>`;
													 }
													 
													 value += `</span></p><p class="comment-text">\${rlist[i].answerContent}</p></div>`;
												
												   $(".comment-list").html(value)
											}
										},error:function(){
											console.log("댓글목록 조회용 ajax 통신 실패");
										}
									})
								}
								
								// 삭제 버튼 클릭 시 실행될 함수
								function hideReply(rno) {
								    $.ajax({
								        url: "<%=contextPath%>/rDelete.bo", // 서블릿 URL
								        type: "POST", // UPDATE는 보통 POST 방식 사용
								        data: { 
								        	rno: rno,
								        	bno: <%= b.getBoardNo() %>
								        }, // 댓글 번호, 게시글 번호 전송
								        success:function(response){
								        	alert("댓글이 성공적으로 삭제되었습니다.");
								        },error:function(){
								        	alert("댓글 삭제에 실패했습니다.");
								        }
								    });
								}
								
								function updateReply(rno){
									
									const modal = document.querySelector('.modal');
									const modalOpen = document.querySelector('.modal_btn');
									const modalClose = document.querySelector('.close_btn');
									
									//열기 버튼을 눌렀을 때 모달팝업이 열림
									$(".comment-list").on('click', '.update',function(){
									let rContent2 = $(this).closest('.comment').find('.comment-text').text();
									let value = `<input type="hidden" name="rno" value="\${rno}"></input>`
									$("#hidden_area").html(value);
									value = `<input type="hidden" name="bno" value="<%=b.getBoardNo()%>"></input>`
									$("#hidden_area").append(value);
									  	//'on' class 추가
									    modal.classList.add('on');
									  	$("#update_content").text(rContent2);
									  
									  	
									  	$("#update_content").on("input", function () {
									        let updatedContent = $(this).val(); // textarea의 변경된 값
									        // hidden 영역에 업데이트된 rcontent 값을 저장
									        $("#hidden_area").find("input[name='rcontent']").remove(); // 기존 값 제거
									        value = `<input type="hidden" name="rcontent" value="\${updatedContent}">`;
									        $("#hidden_area").append(value);
									    });
									});
									//닫기 버튼을 눌렀을 때 모달팝업이 닫힘
									modalClose.addEventListener('click',function(){
									    //'on' class 제거
									    modal.classList.remove('on');
									});
									
								}
								
								function selectBoardAnswerCount(){
									$.ajax({
										url:"rCount.bo",
										data:{bno:<%=b.getBoardNo()%>},
										success:function(rCount){
											$(".comment-count").text("댓글 " + rCount);
										},error:function(){
											console.log("댓글 갯수 조회용 ajax 통신 실패");
										}
									})
								}
								
								<!-- 댓글 수 카운트-->
						        const replyContent = document.getElementById('replyContent');
						        const charCountDisplay = document.querySelector('.char-count');
						        const maxChars = 300;

						        replyContent.addEventListener('input', () => {
						            const currentLength = replyContent.value.length;
						            charCountDisplay.innerHTML = `\${currentLength} / <span id="maxChars">\${maxChars}</span> 자`;

						        });
						   	<!-- 여기까지 댓글 수 카운트 스크립트 -->
						   	
						   	<!-- 팔로우 및 언팔로우 기능 -->
						   	
						   	$(document).ready(function () {
						   	    $('#follow-btn').on('click', function () {
						   	        const button = $(this);
						   	        <!-- const userId = button.closest('.user-card').data('user-id');  이건 필요 없어 보임-->
						   	        const isFollowing = button.data('following');

						   	        // AJAX 요청
						   	        $.ajax({
						   	            url: '/follow', // 서버 API 경로
						   	            method: 'POST',
						   	            contentType: 'application/json',
						   	            data: JSON.stringify({
						   	            	<!-- userId: userId,-->
						   	                action: isFollowing ? 'unfollow' : 'follow'
						   	            }),
						   	            success: function (response) {
						   	                if (response.success) {
						   	                    // 버튼 상태 업데이트
						   	                    button.data('following', !isFollowing);
						   	                    button.text(isFollowing ? 'Follow' : 'Unfollow');
						   	                    button.toggleClass('unfollow');
						   	                } else {
						   	                    alert('Error: ' + response.message);
						   	                }
						   	            },
						   	            error: function () {
						   	                alert('Failed to communicate with the server.');
						   	            }
						   	        });
						   	    });
						   	});
								
						   	<!-- 여기까지가 팔로우 및 언팔로우 기능 -->
						
						</script>
				</div>
				<%@ include file="../common/footerbar.jsp" %>
		</body>
		</html>