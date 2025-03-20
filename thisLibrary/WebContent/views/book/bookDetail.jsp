<%@page import="com.kh.board.model.vo.Attachment"%>
<%@page import="com.kh.board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% 
	String alertMsg = (String)session.getAttribute("alertMsg");
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
src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js">
</script>

<style>
div {
	box-sizing: border-box;
}

/*-------------------------------------------------------------  */
#content {
	margin-top : 200px
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
	border: 1px solid red;
	width: 80%;
}

#bookContent div {
	border: 1px solid red;
}

#bookInfo {
	display: flex;
}

#bookExplan {
	
}

/* ---------이제 디테일--------- */
#bookImg {
	width: 50%;
}

#bookIntroduce {
	width: 50%;
	margin: auto;
}

#bookIntroduce img {
	width: 50%;
}

#booktitle {
	margin-top: 30px;
}

#bookSimple img {
	
}

#bookPhoto img {
	margin-left: 25%;
}

#authorDetailInfo {
	background-color: rgb(235, 235, 235);
	margin: 2%;
	border-radius: 2%;
	width: 70%;
}

#translatorDetail {
	
}

/* ========================== */
#authorTitle {
	margin-top: 30px;
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
	margin-top: 15px;
	margin-left: 15px;
}

#authorJob {
	margin-left: 15px;
}

#neyong {
	margin-left: 15px;
}

#authorPhoto {
	display: flex;
	margin-left: 15px;
}

.authorBookImg {
	margin-left: 15px;
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	gap: 10px;
	/* 사진 사이의 간격 설정 */
}

pre {
	margin-left: 30px;
	margin-top: 30px;
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
	border: 1px solid red;
	margin-left: 10%;
}

/* =======리뷰================================================ */
</style>
</head>
<meta charset="UTF-8">
<!-- ------------------------------------------------------------------ -->

<body>

	<% if(alertMsg != null){ %>
	<script>
						alert("<%= alertMsg %>");
					</script>
	<% session.removeAttribute("alertMsg"); %>
	<!-- 이걸 안해주면 다른 곳 가도 한번 더 읽혀서 창이 계속 뜸 -->
	<% } %>
	<%@ include file="../common/menubar.jsp"%>
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
						<img src="../thisLibrary/WebContent/resources/assets/book1.jpg"
							alt="">
					</div>
					<div id="bookIntroduce">

						<div id="bookSimple">
							<img src="../thisLibrary/WebContent/resources/assets/book1.jpg"
								alt="">
						</div>

						<div id="bookPhoto">
							<img src="../thisLibrary/WebContent/resources/assets/book1.jpg"
								alt="">
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
									<img src="../assets/1.png" alt=""
										style="height: 150px; width: 150px;">
								</div>
								<div class="authorBookImg">
									<img src="../assets/1.png" alt=""
										style="height: 150px; width: 150px;">
								</div>
								<div class="authorBookImg">
									<img src="../assets/1.png" alt=""
										style="height: 150px; width: 150px;">
								</div>
							</div>



						</div>
					</div>
					<!-- ============================================================== -->
					<div id="translator">
						<div id="translatorDetail">
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
									<img src="../assets/1.png" alt=""
										style="height: 150px; width: 150px;">
								</div>
								<div class="authorBookImg">
									<img src="../assets/1.png" alt=""
										style="height: 150px; width: 150px;">
								</div>
								<div class="authorBookImg">
									<img src="../assets/1.png" alt=""
										style="height: 150px; width: 150px;">
								</div>
							</div>
						</div>
					</div>
					<div id="Table_of_Contents">
						<pre>
목차
서언................2
몬문................6
감사의 말.........126
						</pre>
					</div>
				</div>
			</div>
		</div>

		<div id="preview">
			<div id="intoBook">
				<h1>책 속으로</h1>
				<div id="intoPreview">Lorem ipsum dolor sit amet consectetur
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
					ipsam nam.</div>
			</div>
		</div>

		<hr>



		







	</div>


	<%@ include file="../common/footerbar.jsp"%>
<!-- -------------------------------------------------------------------- -->
</body>
</html>