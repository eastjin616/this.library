<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% 
%>

		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Document1</title>

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
			</style>
		</head>
		<body>
				<%@ include file="../common/menubar.jsp" %>
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
				<%@ include file="../common/footerbar.jsp" %>
		</body>

		</html>