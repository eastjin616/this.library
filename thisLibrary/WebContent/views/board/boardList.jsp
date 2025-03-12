<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    body *{
      font-family: 'Chosunilbo_myungjo';
    }
    /* div {box-sizing: border-box;border: 1px solid red;} */
    .wrap {
      width: 1000px;
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

    /*------------------------------------------------------------- 공지사항  */

    .notice-board {
					border: 1px solid #ccc;
					border-radius: 10px;
					/* 둥근 모서리 */
					padding: 20px;
					background-color: #fff;
					max-width: 800px;
					margin: 0 auto;
				}

				table {
					margin: auto;
					width: 80%;
					border-collapse: collapse;
				}

				th,
				td {
					border: 1px solid #ccc;
					padding: 10px;
					text-align: center;
				}

				th {
					background-color: #ebc597;
				}

				.notice-form {
					text-align: center;
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
<body>
	<div class="wrap">
    <div id="header">
      <div id="header_1">
          <div id="header_1_1_1">
            <img src="<%= contextPath %>/views/common/assets/This_서고 로고.png" alt="" style="height: 100%; width: 100%;">
          </div>
          <div id="navigator">
            <a a href="<%= contextPath %>/views/common.mainPage.jsp">Home</a>
            <a href="">온라인투표</a>
            <a href="">자유게시판</a>
            <a href="">마이페이지</a>
            <a href="<%= contextPath %>/views/serviceCenter/customerService.jsp">고객센터</a>
          </div>
          <div id="header_login_btn" style="height: 100%; width: 9%;">
            <button  class="btn" id="login" onclick="location.href='<%= contextPath %>/views/jinsloginform.jsp'">Log In</button>
          </div>
          <div id="header_signin_btn" style="height: 100%; width: 9%;">
            <button class="btn" id="signin" onclick="signin()">Sign In</button>
          </div>
          <div id="header_mypage_btn" style="height: 100%; width: 7%;">
            <button class="btn" id="mypage"><img src="<%= contextPath %>/views/common/assets/user01.png" alt=""></button>
          </div>
      
      </div>
    </div>
    <!-- -------------------------------------------------------------------- -->

    <div class="notice-form">
      <h2>공지사항 작성</h2>
      <table>
        <thead>
          <tr>
            <th>날짜</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성 날짜</th>
            <th>관리</th> <!-- '관리' 열 추가 -->
          </tr>
        </thead>
        <tbody>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><span class="material-symbols-outlined">edit
              </span></td> 
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><span class="material-symbols-outlined">edit
              </span></td> 
          </tr>

          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><span class="material-symbols-outlined">edit
              </span></td> 
          </tr><tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><span class="material-symbols-outlined">edit
              </span></td> 
          </tr><tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><span class="material-symbols-outlined">edit
              </span></td> 
          </tr><tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><span class="material-symbols-outlined">edit
              </span></td> 
          </tr><tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><span class="material-symbols-outlined">edit
              </span></td> 
          </tr><tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><span class="material-symbols-outlined">edit
              </span></td> 
          </tr>



        </tbody>
      
      
      <!-- 추가 공지사항은 여기에 삽입 -->
      </table>
    </div>



  </div>
</div>

    

    <!-- -------------------------------------------------------------------- -->
    <div id="footer" style="background-color: #fdf5f1;">
      <div id="footer_1">
        <div id="footer_1_1"><img src="<%= contextPath %>/views/common/assets/This_서고 로고.png" alt=""></div>
        <div id="navigator" class="navigator">
          <a a href="<%= contextPath %>/views/common/mainPage.jsp">Home</a>
          <a href="">온라인투표</a>
          <a href="">자유게시판</a>
          <a href="">마이페이지</a>
          <a href="<%= contextPath %>/views/serviceCenter/customerService.jsp">고객센터</a>
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

  </script>
  
<script>
  function signin() {
	     location.href="<%= contextPath %>/views/member/signin.jsp";
	   }

  </script>
</body>
</html>