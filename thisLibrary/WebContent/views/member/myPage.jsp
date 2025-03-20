<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<% %>

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
				

				/*-------------------------------------------------------------  */
				.wrap2 {
					width: 1000px;
					border: 1px solid;
					background-color: #964b00;
					box-sizing: border-box;
					margin-left: 15%;
					margin-top: 5%;
					margin-bottom: 5%;
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
					background-color: #ea916e;
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
				/* ================================================마이페이지 개인정보 수정 버튼 모달 css */
				.modal {
					position: absolute;
					display: none;

					justify-content: center;
					top: 0;
					left: 0;

					width: 100%;
					height: 1800px;
					background-color: rgba(0, 0, 0, 0.4);
				}

				.modal_body {
					position: fixed;
					top: 50%;
					width: 400px;
					height: 600px;
					padding: 40px;
					text-align: center;
					background-color: rgb(255, 255, 255);
					border-radius: 10px;
					box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
					transform: translateY(-50%);
				}

				.close-btn {
					position: absolute;
					top: 10px;
					right: 15px;
					font-size: 20px;
					font-weight: bold;
					cursor: pointer;
				}

				/* ================================================코멘터리(감상문) 목록보기 버튼 모달 css */
				.modalC {
					position: absolute;
					display: none;

					justify-content: center;
					top: 0;
					left: 0;

					width: 100%;
					height: 1800px;
					background-color: rgba(0, 0, 0, 0.4);
				}

				.modal_bodyC {
					position: fixed;
					top: 50%;
					width: 400px;
					height: 600px;
					padding: 40px;
					text-align: center;
					background-color: rgb(255, 255, 255);
					border-radius: 10px;
					box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
					transform: translateY(-50%);
				}

				.close-btnC {
					position: absolute;
					top: 10px;
					right: 15px;
					font-size: 20px;
					font-weight: bold;
					cursor: pointer;
				}

				/* ================================================읽기목표설정하기 목록보기 버튼 모달 css */
				.modalR {
					position: absolute;
					display: none;

					justify-content: center;
					top: 0;
					left: 0;

					width: 100%;
					height: 1800px;
					background-color: rgba(0, 0, 0, 0.4);
				}

				.modal_bodyR {
					position: fixed;
					top: 50%;
					width: 400px;
					height: 600px;
					padding: 40px;
					text-align: center;
					background-color: rgb(255, 255, 255);
					border-radius: 10px;
					box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
					transform: translateY(-50%);
				}

				.close-btnR {
					position: absolute;
					top: 10px;
					right: 15px;
					font-size: 20px;
					font-weight: bold;
					cursor: pointer;
				}

				table {
					width: 100%;
					border-collapse: collapse;
					margin-top: 10px;
				}

				th,
				td {
					border: 1px solid #ddd;
					padding: 10px;
					text-align: center;
				}

				th {
					background-color: #f4f4f4;
				}

				.user-info {
					border: 1px solid #ddd;
					padding: 15px;
					margin-bottom: 10px;
					border-radius: 5px;
					text-align: center;
				}

				.profile-img {
					width: 200px;
					height: 200px;
					border-radius: 50%;
					object-fit: cover;
					background-color: #f0f0f0;
				}

				.user-info input {
					width: 100%;
					padding: 8px;
					border: 1px solid #ccc;
					border-radius: 5px;
					margin-top: 5px;

				}

	

				div>input {
					box-sizing: border-box;
				}

				.btn:hover {
					background-color: #ea916e;
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
				#jjim4:hover,
				div>button {
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
			<%@ include file="../common/menubar.jsp" %>
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
											<div id="saveBtn">
												<button class="btn-open-modal">수정하기</button>
												<div class="modal">
													<div class="modal_body">
														<span class="close-btn">&times;</span> <!-- 'X' 버튼 -->
														<h2>사용자 정보 변경</h2>

														<!-- 프로필 사진 -->
														<div class="user-info">
															<img src="https://via.placeholder.com/200" alt="프로필 사진" class="profile-img">
															<button class="btn">변경하기</button>
														</div>

														<!-- 비밀번호 변경 -->
														<div class="user-info">
															<div>비밀번호</div>
															<input type="password" placeholder="새 비밀번호 입력">
														</div>

														<!-- 닉네임 변경 -->
														<div class="user-info">
															<div>닉네임</div>
															<input type="text" placeholder="새 닉네임 입력">
														</div>

														<!-- 이메일 변경 -->
														<div class="user-info">
															<div>이메일</div>
															<input type="email" placeholder="새 이메일 입력">
														</div>

														<!-- 전화번호 변경 -->
														<div class="user-info">
															<div>전화번호</div>
															<input type="text" placeholder="새 전화번호 입력">
														</div>

														<button class="btn">저장하기</button>
													</div>
												</div>
											</div>



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
										<button class="btn-open-modalC">목록보기</button>
										<button>저장하기</button>
										<div class="modalC">
											<div class="modal_bodyC">
												<span class="close-btnC">&times;</span> <!-- 'X' 버튼 -->
												<h2>게시판 리스트</h2>
												<table>
													<thead>
														<tr>
															<th>글 번호</th>
															<th>제목</th>
															<th>저자</th>
															<th>작성 날짜</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td>첫 번째 글</td>
															<td>홍길동</td>
															<td>2025-03-18</td>
														</tr>
														<tr>
															<td>2</td>
															<td>두 번째 글</td>
															<td>김철수</td>
															<td>2025-03-17</td>
														</tr>
														<tr>
															<td>3</td>
															<td>세 번째 글</td>
															<td>이영희</td>
															<td>2025-03-16</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
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
										<button class="btn-open-modalR">목록보기</button>
										<button>저장하기</button>
										<div class="modalR">
											<div class="modal_bodyR">
												<span class="close-btnR">&times;</span> <!-- 'X' 버튼 -->
												<h2>게시판 리스트</h2>
												<table>
													<thead>
														<tr>
															<th>글 번호</th>
															<th>제목</th>
															<th>저자</th>
															<th>작성 날짜</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td>첫 번째 글</td>
															<td>홍길동</td>
															<td>2025-03-18</td>
														</tr>
														<tr>
															<td>2</td>
															<td>두 번째 글</td>
															<td>김철수</td>
															<td>2025-03-17</td>
														</tr>
														<tr>
															<td>3</td>
															<td>세 번째 글</td>
															<td>이영희</td>
															<td>2025-03-16</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
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

			<script>
				// ============================================== 마이페이지 유저정보 '수정하기'버튼 모달 스크립트
				const modal = document.querySelector('.modal');
				const btnOpenModal = document.querySelector('.btn-open-modal');
				const btnCloseModal = document.querySelector('.close-btn');

				btnOpenModal.addEventListener("click", () => {
					modal.style.display = "flex";
				});

				btnCloseModal.addEventListener("click", () => {
					modal.style.display = "none";
				});

				modal.addEventListener("click", (event) => {
					if (event.target === modal) {
						modal.style.display = "none";
					}
				});
				// ============================================== 마이페이지 유저정보 '수정하기'버튼 모달 스크립트
				const modalC = document.querySelector('.modalC');
				const btnOpenModalC = document.querySelector('.btn-open-modalC');
				const btnCloseModalC = document.querySelector('.close-btnC');

				btnOpenModalC.addEventListener("click", () => {
					modalC.style.display = "flex";
				});

				btnCloseModalC.addEventListener("click", () => {
					modalC.style.display = "none";
				});

				modalC.addEventListener("click", (event) => {
					if (event.target === modalC) {
						modalC.style.display = "none";
					}
				});


				// ============================================== 마이페이지 유저정보 '수정하기'버튼 모달 스크립트
				const modalR = document.querySelector('.modalR');
				const btnOpenModalR = document.querySelector('.btn-open-modalR');
				const btnCloseModalR = document.querySelector('.close-btnR');

				btnOpenModalR.addEventListener("click", () => {
					modalR.style.display = "flex";
				});

				btnCloseModalR.addEventListener("click", () => {
					modalR.style.display = "none";
				});

				modalR.addEventListener("click", (event) => {
					if (event.target === modalR) {
						modalR.style.display = "none";
					}
				});
			</script>

		<%@ include file="../common/footerbar.jsp"%>
		</body>
		</html>