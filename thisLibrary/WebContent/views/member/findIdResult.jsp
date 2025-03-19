<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath(); %>

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
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }

    body *{
      font-family: 'Chosunilbo_myungjo';
    }
    
    /* div {box-sizing: border-box;border: 1px solid red;} */
    .wrap {
      width: 1500px;
      margin: auto;
      height: auto;
      overflow: hidden;
    }
    #header {height: 50px;}
    #footer { height: 150px;}
    #header>div {height: 100%;}
    #header_1>div , #header_1_3>div{float: left;}
    #header_1_1_1 {width: 15%;height: 100%;}

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
    #header_mypage_btn,
    #header_login_btn,
    #header_signin_btn {
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
   
/* -------------------------------------------------- */
.btn-space {
    margin-right: 5px;
}

#content{
  
  height: 700px;

}
.container {
        width: 1000px !important;
}

.form-group>label{
  margin-left: 240px;
}

.form-group>input{
  width: 500px;
  margin: auto;
}

  </style>
</head>
<meta charset="UTF-8">
<!-- ------------------------------------------------------------------ -->

<body>
	<div class="wrap">
		<div id="header">
			<div id="header_1">
				<div id="header_1_1_1">
					<a href="<%= contextPath %>"><img src="<%= contextPath %>/views/common/assets/This_서고 로고.png" alt="" style="height: 100%; width: 100%;"></a>
				</div>
				<div id="navigator">
          <a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> 
          <a href="<%=contextPath%>/views/vote/voteList.jsp">온라인투표</a> 
          <a href="<%=contextPath%>/views/board/boardList.jsp">자유게시판</a>
          <a href="<%=contextPath%>/views/member/myPage.jsp">마이페이지</a> 
          <a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
        </div>
				<div id="header_login_btn" style="height: 100%; width: 9%;">
					<button class="btn" id="login"
						onclick="location.href='<%= contextPath %>/views/member/loginform.jsp'" 
            style="display: flex;
            justify-content: center;
            align-items: center;">
            LogIn</button>
				</div>
				<div id="header_signin_btn" style="height: 100%; width: 9%;">
					<button class="btn" id="signin" onclick="signin()"
          style="display: flex;
            justify-content: center;
            align-items: center;"
            >Sign In</button>
				</div>
				<div id="header_mypage_btn" style="height: 100%; width: 7%;">
					<button class="btn" id="mypage" style="display: flex;
          justify-content: center;
          align-items: center;" onclick="mypage()">
						<img src="<%= contextPath %>/views/common/assets/user01.png"
							alt="">
					</button>
				</div>

			</div>
		</div>
    <!-- -------------------------------------------------------------------- -->

    <div id="content" style="align-content: center;">

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

        <article class="container" id="container">
            <div class="page-header">
                  <center><h1><a onclick="location.reload()" style="cursor: pointer;"><b>아이디 찾기</b></a></h1></center>
            <div class="col-md-6 col-md-offset-3">
                </div>
            </div>

          <form id="form" action="createUser.do" method="post">
              <div class="col-sm-6-col-md-offset-3">

                  <div class="form-group">
                      <label for="inputName">이름</label>
                      <input type="text" class="form-control" name="id" placeholder="아이디를 입력해 주세요">
                  </div>

                  <div class="form-group">
                    <label for="InputEmail">이메일</label>
                    <input type="email" class="form-control" name="email" placeholder="이메일 주소를 입력해주세요">
                </div>

                  <div class="form-group text-center">
                      <center> <button type="submit" id="" class="btn btn-primary btn-space">아이디 찾기<i class="fa fa-check spaceLeft"></i></center>
                       

    </form>
    </div>
    </article>
    <hr>
  </div>
    

    <!-- -------------------------------------------------------------------- -->
    <div id="footer" style="background-color: #fdf5f1;">
      <div id="footer_1">
        <div id="footer_1_1"><img src="<%= contextPath %>/views/common/assets/This_서고 로고.png" alt=""></div>
        <div id="navigator" class="navigator">
          <a href="<%=contextPath%>/views/common/mainPage.jsp">Home</a> 
					<a href="<%=contextPath%>/views/vote/voteList.jsp">온라인투표</a> 
					<a href="<%= contextPath %>/list.bo">자유게시판</a>
					<a href="<%=contextPath%>/views/member/myPage.jsp">마이페이지</a> 
					<a href="<%=contextPath%>/views/serviceCenter/customerService.jsp">고객센터</a>
        </div>
      </div>
      <div id="footer_2">
        © 2025 YourCompany. All Rights Reserved.
      </div>
    </div>
  </div>
  
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
  </script>
  <!-- -------------------------------------------------------------------- -->
</body>

</html>