<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    <link rel="stylesheet" href="styles.css"> <!-- 컴파일된 CSS 파일 링크 -->
    <link rel="stylesheet" href="https://unpkg.com/@material/data-table/dist/mdc.data-table.css">
    <link rel="stylesheet" href="https://unpkg.com/@material/checkbox/dist/mdc.checkbox.css">
    <link rel="stylesheet" href="https://unpkg.com/@material/icon-button/dist/mdc.icon-button.css">

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


    <div class="mdc-data-table">
      <div class="mdc-data-table__table-container">
          <table class="mdc-data-table__table" aria-label="Dessert calories">
              <thead>
                  <tr class="mdc-data-table__header-row">
                      <th class="mdc-data-table__header-cell" role="columnheader" scope="col">Dessert</th>
                      <th class="mdc-data-table__header-cell mdc-data-table__header-cell--numeric" role="columnheader" scope="col">Carbs (g)</th>
                      <th class="mdc-data-table__header-cell mdc-data-table__header-cell--numeric" role="columnheader" scope="col">Protein (g)</th>
                      <th class="mdc-data-table__header-cell" role="columnheader" scope="col">Comments</th>
                  </tr>
              </thead>
              <tbody class="mdc-data-table__content">
                  <tr class="mdc-data-table__row">
                      <th class="mdc-data-table__cell" scope="row">Frozen yogurt</th>
                      <td class="mdc-data-table__cell mdc-data-table__cell--numeric">24</td>
                      <td class="mdc-data-table__cell mdc-data-table__cell--numeric">4.0</td>
                      <td class="mdc-data-table__cell">Super tasty</td>
                  </tr>
                  <tr class="mdc-data-table__row">
                      <th class="mdc-data-table__cell" scope="row">Ice cream sandwich</th>
                      <td class="mdc-data-table__cell mdc-data-table__cell--numeric">37</td>
                      <td class="mdc-data-table__cell mdc-data-table__cell--numeric">4.33333333333</td>
                      <td class="mdc-data-table__cell">I like ice cream more</td>
                  </tr>
                  <tr class="mdc-data-table__row">
                      <th class="mdc-data-table__cell" scope="row">Eclair</th>
                      <td class="mdc-data-table__cell mdc-data-table__cell--numeric">24</td>
                      <td class="mdc-data-table__cell mdc-data-table__cell--numeric">6.0</td>
                      <td class="mdc-data-table__cell">New filing flavor</td>
                  </tr>
              </tbody>
          </table>
      </div>
  </div>

  <script src="https://unpkg.com/@material/data-table/dist/mdc.data-table.js"></script>
  <script src="https://unpkg.com/@material/checkbox/dist/mdc.checkbox.js"></script>
  <script src="https://unpkg.com/@material/icon-button/dist/mdc.icon-button.js"></script>
  <script>
      const dataTable = new mdc.dataTable.MDCDataTable(document.querySelector('.mdc-data-table'));
  </script>



 
    <center><h1>자유 게시판</h1></center>
    <table border="1">
      <tr>
        <th width="50">No</th>
        <th width="500">제목</th>
        <th width="200">글쓴이</th>
        <th width="200">작성일자</th>
        <th width="100">조회수</th>
      </tr>

      <tr>
        <th>3</th>
        <td>제목자리입니다람쥐333</td>
        <td align="center">글쓴이3입니다</td>
        <td align="center">2025/03/11</td>
        <td align="center">123</td>
      </tr>

      <tr>
        <th>2</th>
        <td>제목자리입니다람쥐22</td>
        <td align="center">글쓴이2입니다</td>
        <td align="center">2025/03/10</td>
        <td align="center">256</td>
      </tr>

      <tr>
        <th>1</th>
        <td>제목자리입니다람쥐111</td>
        <td align="center">글쓴이1입니다</td>
        <td align="center">2025/03/09</td>
        <td align="center">5203</td>
      </tr>
    </table>

    

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