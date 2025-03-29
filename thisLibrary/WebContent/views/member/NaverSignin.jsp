<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document1</title>
<script src="https://accounts.google.com/gsi/client" async defer></script>


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

/*-------------------------------------------------------------  */
.login {
	width: 700px;
	height: 600px;
	border-radius: 20px;
	margin: auto;
	border: 1px solid;
	margin: 150px auto;
}

#loginTitle {
	color: rgb(187, 114, 63);
	font-size: 2em;
	margin-top: 100px;
}

.sns_login li {
	list-style: none;
}

.sns_login {
	padding: 20px;
	display: flex;
	justify-content: center;
}

#googleIcon {
	width: 19px;
	height: 19px;
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
	margin-left: 15px;
}

/* -===============================================----- */
.sns_login>li {
	padding: 0px 15px;
	margin-right: 10px;
}

#goodgleLoginTag {
	width: 104px;
	height: 72.2px;
	background-color: white;
}

.sns_login a {
	width: 19px;
	height: 19px;
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
	width: 500px;
	margin-left: 50px;
}

.login_pw {
	margin-top: 20px;
	width: 500px;
	margin-left: 50px;
}

.login_id input {
	width: 500px;
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
	width: 400px;
	font-size: 14px;
	display: flex;
	justify-content: space-between;
	font-weight: bold;
	margin: auto;
}

.submit {
	width: 450px;
	margin: auto;
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
</style>
</head>

<body>
	<%@ include file="../common/menubar.jsp"%>
	<script src="https://kit.fontawesome.com/53a8c415f1.js"
		crossorigin="anonymous"></script>



	<div class="login">
		<h2 id="loginTitle" align="center">로그인</h2>
		<div class="login_id">
			<form id="form" action="<%= contextPath %>/login.me" method="post">
				<h4>ID</h4>
				<input type="text" name="memId" id="" placeholder="아이디를 입력하세요요">
		</div>
		<div class="login_pw">
			<h4>Password</h4>
			<input type="password" name="memPwd" id="" placeholder="비밀번호를 입력하세요">
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
		<div class="sns_login">
			<li><a href="javascript:void(0);" onclick="naver()"
				style="background-color: green; color: white; font-weight: 1000;">
					N</i>
			</a></li>
			<li><a href="javascript:loginWithKakao()"
				style="background-color: yellow; color: black"
				class="fas fa-comment"></i></a></li>



			<!-- ✅ jQuery 먼저 추가 (AJAX를 위해 필요) -->
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

			<!-- ✅ Google Identity Services SDK 로드 -->
			<script src="https://accounts.google.com/gsi/client" async defer></script>

			<!-- ✅ Google 로그인 버튼 영역 -->
			<div id="goodgleLoginTag">
				<!-- ✅ GSI 설정: client_id 정확하게 입력, login_uri 제거 -->
				<div id="g_id_onload"
					data-client_id="92235338763-ljnuftbgbj6nn3ol95bno95j36v9hsci.apps.googleusercontent.com"
					data-context="signin" data-ux_mode="popup"
					data-callback="handleCredentialResponse" data-itp_support="true">
				</div>
				<div class="g_id_signin" id="googleIcon" data-type="icon"
					data-shape="circle" data-theme="outline" data-text="signin_with"
					data-size="70px"></div>
			</div>

		</div>
		<div class="submit">
			<input type="submit" value="로그인">
		</div>

	</div>
					
	<script>
		function naver() {
			location.href = "<%=contextPath%>/views/common/jins/naverlogin.jsp";
		}
	</script>
	<%@ include file="../common/footerbar.jsp"%>
</body>

</html>