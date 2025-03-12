<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String contextPath = request.getContextPath();
String kakaoEmail = "email";
String kakaoName = "name";
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
	width: 1000px;
	overflow: hidden;
	margin: auto;
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
.login {
	width: 500px;
	height: 600px;
	border-radius: 20px;
	margin: auto;
	border: 1px solid;
	margin: 150px auto;
}

#loginTitle {
	color: rgb(187, 114, 63);
	font-size: 2em;
}

.sns_login li {
	list-style: none;
}

.sns_login {
	padding: 20px;
	display: flex;
	justify-content: center;
}

.sns_login>li {
	padding: 0px 15px;
	margin-right: 10px;
}

.sns_login a {
	width: 50px;
	height: 50px;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 10px;
	border-radius: 50px;
	background: white;
	color: rgb(187, 114, 63);
	text-decoration-line: none;
	font-size: 20px;
	box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.4), -3px -3px 5px
		rgba(0, 0, 0, 0.1);
}

.login_id {
	margin-top: 20px;
	width: 350px;
	margin-left: 50px;
}

.login_pw {
	margin-top: 20px;
	width: 350px;
	margin-left: 50px;
}

.login_id input {
	width: 350px;
	height: 50px;
	border-radius: 30px;
	padding: 0px 20px;
	border: 1px solid rgb(187, 114, 63);
}

.login_pw input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	padding: 0px 20px;
	border: 1px solid rgb(187, 114, 63);
}

.login_etc {
	padding: 10px;
	width: 350px;
	font-size: 14px;
	display: flex;
	justify-content: space-between;
	font-weight: bold;
	margin-left: 70px;
	margin-top: 20px;
}

.submit {
	width: 450px;
	margin: auto;
	margin-top: 15px;
}

.submit input {
	width: 100%;
	height: 50px;
	border: 0;
	outline: none;
	border-radius: 40px;
	background: rgb(187, 114, 63);
	color: white;
	font-size: 1.2em;
	letter-spacing: 2px;
	cursor: pointer;
}

.submit:hover {
	opacity: 0.7;
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

/* ----------------------------------------------------------------- */
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
				<!-- <div id="header_1_1"> -->
				<div id="header_1_1_1">
					<a href="<%=contextPath%>"><img
						src="<%=contextPath%>/views/common/assets/This_서고 로고.png" alt=""
						style="height: 100%; width: 100%;"></a>
				</div>
				<div id="navigator">
					<a a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> <a
						href="">온라인투표</a> <a href="">자유게시판</a> <a href="">마이페이지</a> <a
						href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
				</div>
				<div id="header_login_btn" style="height: 100%; width: 9%;">
					<button class="btn" id="login"
						onclick="location.href='<%=contextPath%>/views/member/loginform.jsp'">Log
						In</button>
				</div>
				<div id="header_signin_btn" style="height: 100%; width: 9%;">
					<button class="btn" id="signin" onclick="signin()">Sign In</button>
				</div>
				<div id="header_mypage_btn" style="height: 100%; width: 7%;">
					<button class="btn" id="mypage">
						<img src="<%=contextPath%>/views/common/assets/user01.png" alt="">
					</button>
				</div>
				<!-- </div> -->

			</div>
		</div>
		<!-- -------------------------------------------------------------------- -->

		<div class="login">
			<h2 id="loginTitle" align="center">로그인</h2>
			<div class="sns_login">
				<li><a href="javascript:void(0);" onclick="naver()">N</i></a></li>
				<li><a href="javascript:loginWithKakao()"><i
						class="fas fa-comment"></i></a></li>
				<li><a href=""><i class="fab fa-google"></i></a></li>
			</div>
			<div class="login_id">
				<h4>ID</h4>
				<input type="email" name="" id="" placeholder="아이디를 입력하세요요">
			</div>
			<div class="login_pw">
				<h4>Password</h4>
				<input type="password" name="" id="" placeholder="비밀번호를 입력하세요">
			</div>
			<div class="login_etc">
				<div class="checkbox">
					<input type="checkbox" name="" id=""> 로그인 정보 저장
				</div>
				<div class="forgot_pw">
					<a href="<%=contextPath%>/views/member/findIdPage.jsp">아이디</a> / <a
						href="<%=contextPath%>/views/member/findPwdPage.jsp">비밀번호 찾기</a>
				</div>
			</div>
			<div class="submit">
				<input type="submit" value="로그인">
			</div>
		</div>


		<!------------------------------ 카카오 로그인 부분 ------------------------>
		<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

		<script>
        // 카카오 초기화
        Kakao.init('93a0920238e62f6613575ad15d4e692c');

          //카카오 로그인 후 토근 값 저장.
          function loginWithKakao() {
            Kakao.Auth.login({
                success: function (authObj) {
                    console.log(authObj); // access토큰 값
                    Kakao.Auth.setAccessToken(authObj.access_token); // access토큰값 저장
                    
                    getInfo();
                },
                fail: function (err) {
                    console.log(err);
                }
            });
        }

         // 엑세스 토큰을 발급받고, 아래 함수를 호출시켜서 사용자 정보를 받아옴.
         function getInfo() {
            Kakao.API.request({
                url: '/v2/user/me',
                success: function (res) {
                    console.log(res);
                    // 이메일, 성별, 닉네임, 프로필이미지
                    var email = res.kakao_account.email;
                    var gender = res.kakao_account.gender;
                    var nickName = res.kakao_account.profile.nickname;
                    var profile_image = res.kakao_account.profile.thumbnail_image_url;
                    var birthday = res.kakao_account.birthday;
										
                    window.location.href = "<%=contextPath%>/kakaoSignin.me?email="+ email + "&nickName=" + nickName
                 
                    console.log(email, gender, nickName, profile_image, birthday);
                    alert(email + ',' +  gender + ',' +  nickName + "," + profile_image + ',' +  birthday);
                },
                fail: function (error) {
                    alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
                }
            });
        }

        // 로그아웃 기능 - 카카오 서버에 접속하는 엑세스 토큰을 만료, 사용자 어플리케이션의 로그아웃은 따로 진행.
        function kakaoLogout() {
            if (!Kakao.Auth.getAccessToken()) {
                alert('Not logged in.');
                return;
            }
            Kakao.Auth.logout(function() {
                alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken());
            });
        }
    </script>
		<!-------------------------------------- 여기까지가 카카오 로그인--------------------------- -->



		<!-- -------------------------------------------------------------------- -->
		<div id="footer" style="background-color: #fdf5f1;">
			<div id="footer_1">
				<div id="footer_1_1">
					<img src="<%=contextPath%>/views/common/assets/This_서고 로고.png"
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


	<!-- -------------------------------------------------------------------- -->

	<script>
    function naver() {
         location.href="<%=contextPath%>/views/common/jins/naverlogin.jsp";
       }
    </script>

	<script>
  function login() {
	     location.href="<%=contextPath%>/views/member/loginform.jsp";
	   }
     

  </script>
	<script>
  function signin() {
	     location.href="<%=contextPath%>/views/member/signin.jsp";
		}
	</script>
</body>

</html>