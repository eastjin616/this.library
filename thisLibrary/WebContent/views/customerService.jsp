<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    /* div {box-sizing: border-box;border: 1px solid red;} */
    .wrap {
      width: 1000px;
      margin: auto;
      height: auto;
      overflow: hidden;
    }
    #header {height: 50px;}
    #footer {height: 150px;}
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
    #content div{ font-family: Arial, Helvetica, sans-serif; font-weight: 700;}
    #content>#content1 {
      background-image: url("../asset/Container81.png");
      background-size: cover; /* 이미지를 요소 크기에 맞게 채움 */
      background-position: center; /* 중앙 정렬 */
      background-repeat: no-repeat; /* 이미지 반복 방지 */
    }
    #content1{width: 100%;
              height: 225px;
              display: flex;  
              object-fit: cover;
            }
    #content2{width: 70%;  height: 400px; margin-left: 15%; }
    #content3{width: 100%; height: 400px;}
    #textcontent{font-size: 30px;}
    
    #content2_1, #content2_2{width: 100%; height: 50%; display: flex; }
    #content2_1_1, #content2_1_2, #content2_1_3, #content2_1_4{width: 50%;}
        #contentDiv1_1, #contentDiv2_1, #contentDiv3_1, #contentDiv4_1{width: 100%; height: 60%; text-align: center;box-sizing: border-box; margin-bottom: -20px;}
        #contentDiv1_2, #contentDiv2_2, #contentDiv3_2, #contentDiv4_2{width: 100%; height: 30%; text-align: center;box-sizing: border-box;}
        #contentDiv1_3, #contentDiv2_3, #contentDiv3_3, #contentDiv4_3{width: 100%; height: 10%; text-align: center;box-sizing: border-box; }
        

        #content2 img{ width: 100px; cursor: pointer;}
        
        


        .notice-board {
            border: 1px solid #ccc;
            border-radius: 10px; /* 둥근 모서리 */
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
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        th {background-color: #ebc597;}

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
<!-- ------------------------------------------------------------------ -->

<body>z32
  <div class="wrap">
    <div id="header">
      <div id="header_1">
        <!-- <div id="header_1_1"> -->
          <div id="header_1_1_1">
            <img src="./../asset/This_서고 로고.png" alt="" style="height: 100%; width: 100%;">
          </div>
          <div id="navigator">
            <a href="">Home</a>
            <a href="">온라인투표</a>
            <a href="">자유게시판</a>
            <a href="">마이페이지</a>
            <a href="">고객센터</a>
          </div>
          <div id="header_login_btn" style="height: 100%; width: 9%;">
            <button class="btn" id="login">Log In</button>
          </div>
          <div id="header_signin_btn" style="height: 100%; width: 9%;">
            <button class="btn" id="signin">Sign In</button>
          </div>
          <div id="header_mypage_btn" style="height: 100%; width: 7%;">
            <button class="btn" id="mypage"><img src="./../asset/user01.png" alt=""></button>
          </div>
      </div>
    </div>
    <!-- -------------------------------------------------------------------- -->



    <div id="content">
        <div id="content1">
          <div id="textcontent">
              <pre >
              어떤 어려운이 있으신가요? 
              <b>고객센터 입니다.</b>
              </pre>
            </div>
        </div>
        <br><br><br><br><br>
        <div id="content2">
          <div id="content2_1">
              <div id="content2_1_1">
                    <div id="contentDiv1_1"><img src="../asset/interview_15747273.gif"></div>
                    <div id="contentDiv1_2"><p><b>1:1 문의 접수</b></p></div>
                    <div id="contentDiv1_3">고객센터에 문의글 접수중입니다.</div>
              </div>
              <div id="content2_1_2">
                    <div id="contentDiv2_1"><img src="../asset/faq_12205153.gif" ></div>
                    <div id="contentDiv2_2"><p><b>F&A</b></p></div>
                    <div id="contentDiv2_3">자주 문의되는 질문에 대한 답변을 보실 수 있습니다. </div>
              </div>
          </div>
          <div id="content2_2">
            <div id="content2_1_3">
                  <div id="contentDiv3_1"><img src="../asset/conversation_15578485.gif" ></div>
                  <div id="contentDiv3_2"><p><b>1:1 문의 내역</b></p></div>
                  <div id="contentDiv3_3">사용자가 문의한 글 내역을 확인합니다.</div>
            </div>
            <div id="content2_1_4">
                  <div id="contentDiv4_1"><img src="../asset/virtual-assistant_15579142.gif" ></div>
                  <div id="contentDiv4_2"><p><b>전화 상담</b></p></div>
                  <div id="contentDiv4_3">고객 센터에 연결되어 상담자와 연결이 됩니다.</div>
            </div>
        </div>
      </div>
      <br><br><br>
      <div id="content3">

        <div class="notice-form">
          <h2>공지사항 작성</h2>
          <table>
            <thead>
                <tr>
                    <th>날짜</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성 날짜</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <!-- 추가 공지사항은 여기에 삽입 -->
            </tbody>
        </table>
      </div>



      </div>
    </div>


    <!-- -------------------------------------------------------------------- -->
    <div id="footer" style="background-color: #fdf5f1;">
      <div id="footer_1">
        <div id="footer_1_1"><img src="./../asset/This_서고 로고.png" alt=""></div>
        <div id="navigator" class="navigator">
          <a a href="">Home</a>
          <a href="">온라인투표</a>
          <a href="">자유게시판</a>
          <a href="">마이페이지</a>
          <a href="">고객센터</a>
        </div>
      </div>
      <div id="footer_2">
        © 2025 YourCompany. All Rights Reserved.
      </div>
    </div>
  </div>
  <!-- -------------------------------------------------------------------- -->
</body>

</html>