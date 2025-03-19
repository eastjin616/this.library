<%@page import="com.kh.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
	String contextPath = request.getContextPath(); 
	String alertMsg = (String)session.getAttribute("alertMsg");
	Member loginMember= (Member)session.getAttribute("loginMember");

%>


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
	font-family: 'Chosunilbo_myungjo';
	src:
		url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body * {
	font-family: 'Chosunilbo_myungjo';
}

/* div {box-sizing: border-box;border: 1px solid red;} */
.wrap {
	width: 1500px;
	margin: auto;
	height: auto;
	overflow: hidden;
}

/* body{
      width: 100%;
      height: 100%;
      background-image: url("resources/assets/background.jpg");
      background-size: cover;
      opacity: ;
    } */
#header {
	height: 50px;
}

#footer {
	height: 150px;
}

#header>div {
	height: 100%;
}

#header_1>div, #header_1_3>div {
	float: left;
}

#header_1_1_1 {
	width: 10%;
	height: 100%;
	margin-top: 5px;
}

/* ========================================================== */

#firstbar{
	height: 50px;
}

/* Slideshow container */
.slideshow-container {
  height: 400px;
	width: 70%;
  position: relative;
  margin: auto;
}
.slideshow-container .mySlides img {
  height: 400px;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */

/* Number text (1/3 etc) */
.numbertext {
  color: black;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
	font-weight: 1000;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}
/* --------------------------------------------------- */
#content {
	height: 700px;
}

#spaceContent {
	height: 200px;
}

#header_1_1>div {
	float: left;
}

#header_1_2>div {
	float: left;
}

/* ========================================================== */
#navigator {
	position: relative;
	width: 800px;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: space-around;
	padding-left: 20px;
	font-weight: 800;
	font-size: 16px;
}

#navigator>a {
	text-decoration: none;
	color: black;
	font-size: 13px;
}

/*-------------------------------------------------------------  */
#header_mypage_btn, #header_login_btn, #header_signin_btn {
	display: flex;
	justify-content: center;
	align-items: center;
}

#login {
      width: 50%;
      height: 50%;
      border-radius: 5px;
      color: burlywood;
      border: none;
			cursor: pointer;
    }

#signin {
	width: 50%;
	height: 50%;
	border-radius: 5px;
	color: burlywood;
	border: none;
	cursor: pointer;
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

/* ================================================================ */
#header_1_2 {
	text-align: center;
	margin-top: 20px;
}

/* #header_1_3{border: 1px solid;} */
a {
	text-decoration-line: none;
	color: black;
}

#search-container {
	display: flex;
	align-items: center;
	border: 1px solid #ccc;
	border-radius: 30px;
	overflow: hidden;
	width: 700px; /* 부모 요소 크기에 맞춤 */
	height: 50px; /* 높이를 #header_1_3_2 크기에 맞춤 */
	background-color: white;
	border: 1px solid lightgray;
	margin: auto;
	margin-top: 20px;
}

#search-filter {
	height: 100%;
	width: 20%;
	border: none;
	background-color: white;
	color: black;
	font-size: 14px;
	padding: 5px;
	cursor: pointer;
}

#search-bar {
	flex: 1;
	height: 100%;
	border: none;
	padding: 5px;
	font-size: 16px;
	outline: none;
}

#search-btn {
	height: 100%;
	width: 15%;
	border: none;
	background-color: burlywood;
	color: black;
	font-size: 14px;
	cursor: pointer;
}

#search-btn:hover {
	opacity: 0.7;
}
/* ================================================================ */
#content>div {
	height: 100%;
	float: left;
}

#content_1 {
	width: 40%;
	height: 100%;
}

#content_2 {
	width: 20%;
	height: 100%
}

#content_3 {
	width: 40%;
	height: 100%
}

/* -------------------------------------------------------- */
#content_1_1 {
	width: 100%;
	height: 22%;
	position: relative;
}

#content_1_2 {
	width: 100%;
	height: 41%;
	position: relative;
}

#content_1_3 {
	width: 100%;
	height: 37%;
	position: relative;
}

#content_1_2_1 {
	width: 100%;
	height: 79%;
	position: relative;
}

#content_1_2_2 {
	width: 100%;
	height: 21%;
	position: relative;
}

#content_1_3_1 {
	width: 100%;
	height: 20%;
	position: relative;
}

#content_1_3_2 {
	width: 100%;
	height: 80%;
	position: relative;
}

/* -------------------------------------------------------- */
#content_2_1 {
	width: 100%;
	height: 8%;
}

#content_2_2 {
	width: 100%;
	height: 8%;
	position: relative;
}

#content_2_3 {
	width: 100%;
	height: 38.5%;
	position: relative;
}

#content_2_4 {
	width: 100%;
	height: 8%;
	position: relative;
}

#content_2_5 {
	width: 100%;
	height: 37.5%;
}

#content_2_5_1 {
	width: 100%;
	height: 20%;
	position: relative;
}

#content_2_5_2 {
	width: 100%;
	height: 80%;
	position: relative;
}

/* -------------------------------------------------------- */
#content_3_1 {
	width: 100%;
	height: 22%;
	position: relative;
}

#content_3_2 {
	width: 100%;
	height: 41%;
	position: relative;
}

#content_3_3 {
	width: 100%;
	height: 37%;
	position: relative;
}

#content_3_2_1 {
	width: 100%;
	height: 79%;
	position: relative;
}

#content_3_2_2 {
	width: 100%;
	height: 21%;
	position: relative;
}

#content_3_3_1 {
	width: 100%;
	height: 20%;
	position: relative;
}

#content_3_3_2 {
	width: 100%;
	height: 80%;
	position: relative;
}
/* -------------------------------------------------------- */
.pick-button {
	width: 100%;
	border-radius: 300%;
}

/* -------------------------------------------------------- */
#content_1_1>#silver {
	position: absolute;
	margin-right: 35%;
	right: 0;
	bottom: 7%;
	height: 23%;
}

#content_1_2_1>#book1 {
	position: absolute;
	margin-top: 1%;
	margin-right: 22%;
	right: 0;
	bottom: 0;
	top: 0;
	height: 100%;
	width: 35%;
}

#content_1_3_2>#book2 {
	position: absolute;
	margin-top: 5%;
	margin-right: 22%;
	right: 0;
	bottom: 0;
	top: 0;
	height: 100%;
	width: 35%;
}
/* -------------------------------------------------------- */
#content_2_2>#gold {
	width: 15%;
	height: 70%;
	margin-top: 6%;
}

#content_2_3>#book3 {
	position: absolute;
	margin-left: 15%;
	margin-top: 5%;
	width: 210px;
}

#content_2_4>button {
	position: absolute;
	bottom: 0;
	right: 10%;
}

#content_2_5_2>#book4 {
	position: absolute;
	margin-top: 8%;
	margin-left: 15%;
	height: 100%;
	width: 210px;
}
/* -------------------------------------------------------- */
#content_3_1>#brown {
	position: absolute;
	margin-right: 57%;
	right: 0;
	bottom: 0;
	height: 23%;
}

#content_3_2_1>#book5 {
	position: absolute;
	margin-top: 2%;
	margin-right: 43%;
	right: 0;
	bottom: 0;
	top: 0;
	height: 95%;
	width: 35%;
}

#content_3_3_2>#book6 {
	position: absolute;
	margin-top: 5%;
	margin-right: 43%;
	right: 0;
	bottom: 0;
	top: 0;
	height: 100%;
	width: 35%;
}

/* -------------------------------------------------------- */
#content_1_2>img {
	height: 90%;
	display: block;
}

#content_1_3>img {
	width: 28%;
	height: 100%;
	display: block;
}

#content_2_2>img {
	height: 90%;
	margin: auto;
	display: block;
}

#content_2_3>img {
	height: 90%;
	margin: auto;
	display: block;
}

#content_2_5>img {
	height: 100%;
	margin: auto;
	display: block;
}

#content_3_1>img {
	height: 23%;
}

#content_3_2>img {
	height: 90%;
	display: block;
}

#content_3_3>img {
	height: 98%;
	display: block;
}

/* ---------------------------------------- */
.today-pick-container {
	display: flex;
	justify-content: center; /* 가로 중앙 정렬 */
	align-items: center; /* 세로 중앙 정렬 (필요할 경우) */
	height: 100%; /* 부모 요소 높이를 100%로 설정 */
}

.pick-button {
	display: block;
	margin: 0 auto;
	padding: 10px 20px;
	font-size: 18px;
	font-weight: bold;
	color: #4A4A4A;
	background-color: #f8f9fa;
	border: 2px solid #4A4A4A;
	border-radius: 13px;
	cursor: pointer;
	transition: all 0.3s ease;
}

.pick-button:hover {
	background-color: #4A4A4A;
	color: white;
}

.book-list {
	display: flex;
	justify-content: center;
	gap: 20px;
	margin-top: 20px;
}

.book-item {
	text-align: center;
}

.book-item img {
	width: 120px;
	height: 180px;
	border-radius: 8px;
	box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
}

.book-item p {
	margin-top: 10px;
	font-size: 14px;
	font-weight: bold;
}

/* ================================================================ */
/* ---------------------footer-------------------------------------*/
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

#footer_1_1 img {
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

<% if(alertMsg != null){ %>
<script>
					alert('<%=alertMsg%>');
				</script>
<% session.removeAttribute("alertMsg"); %>
<% } %>


<body>
	<div class="wrap">
		<div id="header">
			<div id="header_1">
				<div id="header_1_1_1">
					<a href="<%= contextPath %>/views/common/mainPage.jsp"><img
						src="<%= contextPath %>/resources/assets/This_서고 로고.png" alt=""
						style="height: 100%; width: 100%;"></a>
				</div>
				
				<div id="navigator">
					<a a href="<%= contextPath %>/views/common/mainPage.jsp">Home</a> <a
						href="<%= contextPath %>/views/vote/voteDetailForm.jsp">온라인투표</a>
					<a href="<%= contextPath %>/list.bo">자유게시판</a> 
					<a href="<%= contextPath %>/views/book/bestSeller.jsp">베스트셀러</a> 
					<a href="<%= contextPath %>/views/serviceCenter/customerService.jsp">고객센터</a>
				</div>

				<% if(loginMember== null){ %>
					<div id="header_login_btn" style="height: 100%; width: 9%;">
						<a  id="login" onclick="login()"><b>Log In</b></a>
					</div>
					<div id="header_signin_btn" style="height: 100%; width: 9%;">
						<a  id="signin" onclick="signin()"><b>Sign In</b></a>
					</div>
				<%}else{ %>
					<div>
						<br>
						 <b><%= loginMember.getMemName()%>님 </b>의 방문을 환영합니다.		
					</div>
					
					<div id="header_login_btn" style="height: 100%; width: 9%;">
						<button class="btn" id="login"><a href="<%= contextPath %>/logout.me">로그아웃</a></button>
					</div>
				<%} %>

				<div id="header_mypage_btn" style="height: 100%; width: 7%;">
					
					<button class="btn" id="mypage" onclick="mypage()">
							<img src="<%= contextPath %>/resources/assets/user01.png" alt="">
					</button>
				</div>

			</div>
		</div>
		<!-- -------------------------------------------------------------------- -->
		<div id="header_1_2">
			<img src="<%= contextPath %>/resources/assets/This_서고 로고.png" alt="">
		</div>

		<div id="search-container">
			<select id="search-filter">
				<option value="all">통합검색</option>
				<option value="genre">장르별검색</option>
				<option value="national">국가별검색</option>
				<option value="languague">언어별선택</option>
				<option value="author">작가별선택</option>
			</select> <input type="text" id="search-bar" placeholder="검색어를 입력하세요">
			<button id="search-btn">검색</button>
		</div>

<!-- -------------------------------------------------------------------------- -->
		<div id="firstbar"></div>

		<div class="slideshow-container">
			 <!-- Full-width images with number and caption text -->
			 <div class="mySlides fade">
        <div class="numbertext">1 / 3</div>
        <img src="<%= contextPath %>/resources/assets/교보문고1.jpg" style="width:100%">
      </div>

      <div class="mySlides fade">
        <div class="numbertext">2 / 3</div>
        <img src="<%= contextPath %>/resources/assets/how.jpg" style="width:100%">
      </div>

      <div class="mySlides fade">
        <div class="numbertext">3 / 3</div>
        <img src="<%= contextPath %>/resources/assets/brunch.jpg" style="width:100%">
      </div>


      

      <!-- Next and previous buttons -->
      <a class="prev" onclick="moveSlides(-1)">&#10094;</a>
      <a class="next" onclick="moveSlides(1)">&#10095;</a>
    </div>
    <br/>

    <!-- The dots/circles -->
    <div style="text-align:center">
      <span class="dot" onclick="currentSlide(0)"></span>
      <span class="dot" onclick="currentSlide(1)"></span>
      <span class="dot" onclick="currentSlide(2)"></span>
		</div>

		<div id="firstbar"></div>
<!-- -------------------------------------------------------------------------- -->
		<div id="content">
			<div id="content_1">
				<div id="content_1_1">
					<img src="<%= contextPath %>/resources/assets/silver.png" alt=""
						id="silver">
				</div>
				<div id="content_1_2">
					<div id="content_1_2_1">
						<img src="<%= contextPath %>/resources/assets/book1.jpg" alt=""
							id="book1">
					</div>
					<div id="content_1_2_2"></div>
				</div>
				<div id="content_1_3">
					<div id="content_1_3_1"></div>
					<div id="content_1_3_2">
						<img src="<%= contextPath %>/resources/assets/book2.jpg" alt=""
							id="book2">
					</div>
				</div>
			</div>

			<div id="content_2">
				<div id="content_2_1">
					<button class="pick-button">오늘의 Pick</button>
				</div>
				<div id="content_2_2">
					<img src="<%= contextPath %>/resources/assets/gold.png" alt=""
						id="gold">
				</div>
				<div id="content_2_3">
					<img src="<%= contextPath %>/resources/assets/book3.jpg" alt=""
						id="book3">
				</div>
				<div id="content_2_4"></div>
				<div id="content_2_5">
					<button class="pick-button">관리자의 Pick</button>
					<div id="content_2_5_2">
						<img src="<%= contextPath %>/resources/assets/book4.jpg" alt=""
							id="book4">
					</div>
				</div>
			</div>

			<div id="content_3">
				<div id="content_3_1">
					<img src="<%= contextPath %>/resources/assets/brown.png" alt=""
						id="brown">
				</div>
				<div id="content_3_2">
					<div id="content_3_2_1">
						<img src="<%= contextPath %>/resources/assets/book5.jpg" alt=""
							id="book5">
					</div>
					<div id="content_3_2_2"></div>
				</div>
				<div id="content_3_3">
					<div id="content_3_3_1"></div>
					<div id="content_3_3_2">
						<img src="<%= contextPath %>/resources/assets/book6.jpg" alt=""
							id="book6">
					</div>
				</div>
			</div>
		</div>
		<div id="spaceContent"></div>
		<!-- -------------------------------------------------------------------- -->
		<div id="footer" style="background-color: #fdf5f1;">
			<div id="footer_1">
				<div id="footer_1_1">
					<a href="<%= contextPath %>/views/common/mainPage.jsp"><img
						src="<%= contextPath %>/resources/assets/This_서고 로고.png" alt=""></a>
				</div>
				<div id="navigator" class="navigator">
					<a a href="<%= contextPath %>/views/common/mainPage.jsp">Home</a> <a
						href="">온라인투표</a> <a
						href="<%=contextPath%>/views/board/boardList.jsp">자유게시판</a> <a
						href="<%= contextPath %>/views/book/bestSeller.jsp">베스트셀러</a>  <a
						href="<%= contextPath %>/views/serviceCenter/customerService.jsp">고객센터</a>
				</div>
			</div>
			<div id="footer_2">© 2025 YourCompany. All Rights Reserved.</div>
		</div>
	</div>
	<!-- -------------------------------------------------------------------- -->

	<script>
  function login() {
	     	location.href="<%= contextPath %>/views/member/loginform.jsp";
	   }
  
  function signin() {
	     location.href="<%= contextPath %>/views/member/signin.jsp";
	   }

		 function mypage() {
	     location.href="<%= contextPath %>/views/member/myPage.jsp";
	   }
// -----------------------------------------------------------------------

var slideIndex = 0; //slide index

// HTML 로드가 끝난 후 동작
window.onload=function(){
  showSlides(slideIndex);

  // Auto Move Slide
  var sec = 3000;
  setInterval(function(){
    slideIndex++;
    showSlides(slideIndex);

  }, sec);
}


// Next/previous controls
function moveSlides(n) {
  slideIndex = slideIndex + n
  showSlides(slideIndex);
}

// Thumbnail image controls
function currentSlide(n) {
  slideIndex = n;
  showSlides(slideIndex);
}

function showSlides(n) {

  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  var size = slides.length;

  if ((n+1) > size) {
    slideIndex = 0; n = 0;
  }else if (n < 0) {
    slideIndex = (size-1);
    n = (size-1);
  }

  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }

  slides[n].style.display = "block";
  dots[n].className += " active";
}
  </script>

</body>
</html>