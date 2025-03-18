<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String contextPath = request.getContextPath();
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
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=favorite" />

<style>
@font-face {
	font-family: 'Gyeonggi_Batang_Regular';
	src:
		url('https://fastly.jsdelivr.net/gh/projectnoonnu/2410-3@1.0/Batang_Regular.woff')
		format('woff');
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

#wrapContent {
  height: 1500px;
  width: 1500px;
  display: flex;
	justify-content: center;
	align-items: center;
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
#header_mypage_btn, #header_login_btn, #header_signin_btn {
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


#content{
  height: 90%; width: 90%;
  display: flex;
}
#content_1{height: 100%; width: 25%; }
#content_1_1{
  margin-top: 30px;
  margin-left: 60px;
  width: 70%;
  height: 73%;
  border-radius: 10px;
  border: 1px solid lightgray;
}

#genreTitle{
  margin-top: 5px;
  width: 90%;
  height: 2%;
  border-radius: 5px;
  margin-left: 5%;
}

#spare{height: 1%;border:none;}

#checkBox{
  width: 90%;
  height: 90%;
  float: left;
  margin-left: 5%;
  border-radius: 5px;
  
}
#genreBtn{
  margin-left: 65%;
  border: none;
}


#content>#content_2{
  height: 100%; 
  width: 75%;
}

#content_2_2{
  height: 100%;
}

#content_2_2_0{
  margin-top: 30px;
  margin-left: 60px;
  width: 90%;
  height: 98%;
  border-radius: 10px;
  border: none;
}

#content_2_2_1,#content_2_2_2,#content_2_2_3,#content_2_2_4{
  width: 100%;
  height: 23%;
  display: flex;
}
#book1,#book2,#book3,#book4{
  height: 100%;
  width: 30%;
  display: flex;
	justify-content: center;
	align-items: center;
}
#bookcon1,#bookcon2,#bookcon3,#bookcon4{
  height: 100%;
  width: 70%;
  display: flex;
}

#book1>img,#book2>img,#book3>img,#book4>img{
  width: 90%;
  height: 90%;
}

.spare1{
  height: 100%;
  width: 25%;
}

.bookinfo{
  height: 100%;
  width: 50%;
}

.heart{
  height: 100%;
  width: 25%;
  position: relative;
}

i{
  margin-top: 5px;
}

i:hover{
  cursor: pointer;
  background: lightgray;
  color: red;
  background-color: transparent;
  overflow: hidden;
}


.pagination{
  display: flex;
	justify-content: center;
	align-items: center;
}

.pagination span {
  display: inline-block;
  padding: 5px 10px;
  margin: 2px;
  cursor: pointer;
  border: 1px solid #ddd;
  border-radius: 3px;
 }

hr{
  width: 90%;
  margin-left: 0%;
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
  <script src="https://kit.fontawesome.com/53a8c415f1.js"
		crossorigin="anonymous"></script>
	<div class="wrap">
		<div id="header">
			<div id="header_1">
				<div id="header_1_1_1">
					<a href="<%=contextPath%>"><img
						src="<%=contextPath%>/resources/assets/This_서고 로고.png" alt=""
						style="height: 100%; width: 100%;"></a>
				</div>
				<div id="navigator">
					<a a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> <a
						href="">온라인투표</a> <a href="<%=contextPath%>/views/board/boardList.jsp">자유게시판</a> <a href="">마이페이지</a> <a
						href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
				</div>
				<div id="header_login_btn" style="height: 100%; width: 9%;">
					<button class="btn" id="login"
						onclick="location.href='<%=contextPath%>/views/jinsloginform.jsp'">Log
						In</button>
				</div>
				<div id="header_signin_btn" style="height: 100%; width: 9%;">
					<button class="btn" id="signin" onclick="signin()">Sign In</button>
				</div>
				<div id="header_mypage_btn" style="height: 100%; width: 7%;">
					<button class="btn" id="mypage">
						<img src="<%=contextPath%>/resources/assets/user01.png"
							alt="">
					</button>
				</div>

			</div>
		</div>
		<!-- -------------------------------------------------------------------- -->

		

    <div id="wrapContent">
      <div id="content">
        <div id="content_1">
          <div id="content_1_1">
            <div id="genreTitle">
              장르 <button id="genreBtn">▼</button>
            </div>
            <div id="spare"></div>
            <div id="checkBox">
                <input type="checkbox" value="">소설<br><br>
                <input type="checkbox" value="">에세이/시/회곡<br><br>
                <input type="checkbox" value="">인문<br><br>
                <input type="checkbox" value="">자기계발<br><br>
                <input type="checkbox" value="">경제/경영<br><br>
                <input type="checkbox" value="">가정/취미/실용<br><br>
                <input type="checkbox" value="">의학/건강<br><br>
                <input type="checkbox" value="">여행/지리<br><br>
                <input type="checkbox" value="">과학/기술<br><br>
                <input type="checkbox" value="">사회과학<br><br>
                <input type="checkbox" value="">종교<br><br>
                <input type="checkbox" value="">역사/문학<br><br>
                <input type="checkbox" value="">인물/평전<br><br>
                <input type="checkbox" value="">예술/대중문화<br><br>
                <input type="checkbox" value="">외국어<br><br>
                <input type="checkbox" value="">컴퓨터<br><br>
                <input type="checkbox" value="">수험서/자격증/취업<br><br>
                <input type="checkbox" value="">사전<br><br>
                <input type="checkbox" value="">만화<br><br>
                <input type="checkbox" value="">잡지<br><br>
                <input type="checkbox" value="">유아<br><br>
                <input type="checkbox" value="">어린이<br><br>
                <input type="checkbox" value="">청소년<br><br>
                <input type="checkbox" value="">성인<br><br>
                <input type="checkbox" value="">부모<br><br>
            </div>
          </div>
        </div>
        <div id="content_2">
          <div id="content_2_2">
            <div id="content_2_2_0">
              <hr>
              <div id="content_2_2_1">
                <div id="book1">
                  <img src="/thisLibrary/WebContent/resources/assets/book1.jpg" alt="">
                </div>
                <div id="bookcon1">
                  <div class="spare1"></div>
                  <div class="bookinfo">
                    <p>[국내도서]</p>
                    <p style="font-size: 20px;"><b> 마이클센델 정의란 무엇인가</b></p>
                    <hr style="width: 70px; margin-left: 0%;">
                    <p style="font-size: 15px;">마이클 센델 저자(글) | 김명철 번역 | 김선욱 감수</p>
                    <p style="font-size: 15px;">와이즈베리 2014년 11월 20일</p>
                    <br><br><br>

                    <div style="display: flex;">
                      <p><i class="fas fa-star" style="color: #085ae7;"></i></p>
                      <p style="margin-left: 5px; margin-top: 20;">4.84</p>
                      <p style="margin-left: 5px; margin-top: 20;">(350reviews)</p>
                    </div>
                  </div>
                  <div class="heart">
                    <i class="fas fa-heart"></i>
                    <i class="fas fa-heart" style="color: #ec1818;"></i>
                  </div>
                </div>
              </div>
<!-- ================================================================== -->
              <hr>
              <div id="content_2_2_2">
                <div id="book2">
                  <img src="/thisLibrary/WebContent/resources/assets/book1.jpg" alt="">
                </div>
                <div id="bookcon2">
                  <div class="spare1"></div>
                  <div class="bookinfo">
                    <p>[국내도서]</p>
                    <p style="font-size: 20px;"><b> 마이클센델 정의란 무엇인가</b></p>
                    <hr style="width: 70px; margin-left: 0%;">
                    <p style="font-size: 15px;">마이클 센델 저자(글) | 김명철 번역 | 김선욱 감수</p>
                    <p style="font-size: 15px;">와이즈베리 2014년 11월 20일</p>
                    <br><br><br>

                    <div style="display: flex;">
                      <p><i class="fas fa-star" style="color: #085ae7;"></i></p>
                      <p style="margin-left: 5px; margin-top: 20;">4.84</p>
                      <p style="margin-left: 5px; margin-top: 20;">(350reviews)</p>
                    </div>
                  </div>
                  <div class="heart">
                    <i class="fas fa-heart"></i>
                    <i class="fas fa-heart" style="color: #ec1818;"></i>
                  </div>
                </div>
              </div>
              <hr>
              <div id="content_2_2_3">
                <div id="book3">
                  <img src="/thisLibrary/WebContent/resources/assets/book1.jpg" alt="">
                </div>
                <div id="bookcon3">
                  <div class="spare1"></div>
                  <div class="bookinfo">
                    <p>[국내도서]</p>
                    <p style="font-size: 20px;"><b> 마이클센델 정의란 무엇인가</b></p>
                    <hr style="width: 70px; margin-left: 0%;">
                    <p style="font-size: 15px;">마이클 센델 저자(글) | 김명철 번역 | 김선욱 감수</p>
                    <p style="font-size: 15px;">와이즈베리 2014년 11월 20일</p>
                    <br><br><br>

                    <div style="display: flex;">
                      <p><i class="fas fa-star" style="color: #085ae7;"></i></p>
                      <p style="margin-left: 5px; margin-top: 20;">4.84</p>
                      <p style="margin-left: 5px; margin-top: 20;">(350reviews)</p>
                    </div>
                  </div>
                  <div class="heart">
                    <i class="fas fa-heart"></i>
                    <i class="fas fa-heart" style="color: #ec1818;"></i>
                  </div>
                </div>
              </div>
              <hr>
              <div id="content_2_2_4">
                <div id="book4">
                  <img src="/thisLibrary/WebContent/resources/assets/book1.jpg" alt="">
                </div>
                <div id="bookcon3">
                  <div class="spare1"></div>
                  <div class="bookinfo">
                    <p>[국내도서]</p>
                    <p style="font-size: 20px;"><b> 마이클센델 정의란 무엇인가</b></p>
                    <hr style="width: 70px; margin-left: 0%;">
                    <p style="font-size: 15px;">마이클 센델 저자(글) | 김명철 번역 | 김선욱 감수</p>
                    <p style="font-size: 15px;">와이즈베리 2014년 11월 20일</p>
                    <br><br><br>

                    <div style="display: flex;">
                      <p><i class="fas fa-star" style="color: #085ae7;"></i></p>
                      <p style="margin-left: 5px; margin-top: 20;">4.84</p>
                      <p style="margin-left: 5px; margin-top: 20;">(350reviews)</p>
                    </div>
                  </div>
                  <div class="heart">
                    <i class="fas fa-heart"></i>
                    <i class="fas fa-heart" style="color: #ec1818;" id="tlqkf"></i>
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
          </div>
        </div>
       </div>
      </div>


		<!-- -----------------------------footer---------------------------------- -->
		<div id="footer" style="background-color: #fdf5f1;">
			<div id="footer_1">
				<div id="footer_1_1">
					<img src="<%=contextPath%>/resources/assets/This_서고 로고.png"
						alt="">
				</div>
				<div id="navigator" class="navigator">
					<a a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> <a
						href="">온라인투표</a> <a href="">자유게시판</a> <a href="">마이페이지</a> <a
						href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
				</div>
			</div>
			<div id="footer_2">© 2025 YourCompany. All Rights Reserved.</div>
		</div>
	</div>

	<script>
  function login() {
	     location.href="<%=contextPath%>/views/member/loginform.jsp";
	   }

  </script>

	<script>
  function signin() {에스프레소
	     location.href="<%=contextPath%>/views/member/signin.jsp";
		}
	</script>
	<!-- -------------------------------------------------------------------- -->
</body>
</html>
