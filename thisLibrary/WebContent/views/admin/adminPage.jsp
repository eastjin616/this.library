<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>관리자 페이지</title>

  <style>
    .wrap {
      width: 1800px;
      margin: auto;
      height: auto;
      overflow: hidden;
      border: 1px solid;
    }
    .content1{
      height: 100px;
      background-color: #d88634;
      position: relative;
    }
    #content1_text{
      position: absolute;
      right: 50px;
      bottom: 10px;
      color: white;
      font-size: 20px;

    }
    .content2{
      display: flex;
      height: 1000px;
    }

    #main-content1{ width: 25%; border: 1px solid; background-color: rgb(248, 215, 220);}
    #main-content2{ width: 75%; border: 1px solid; display: flex;}
    #profile-photo{height: 40%; border: 1px solid;}
    #photo{ height: 90%; border-radius: 50%;  }
    #userName     {text-align: center; height: 10%; box-sizing: border-box;}
    #tab1 ,#tab2{display: flex; width: 100%; height: 12%; box-sizing: border-box;cursor: pointer;}
    #tab1:hover, #tab2:hover{
      background-color: orange;
    }
    #tab1_1{width: 10px; }
    #tab1_2{width: 20px;  background-color: #d88634;}
    #tab1_3{width: 100px; margin: auto;}
    #tab1_4{width: 300px; margin: auto; }
    #tab1_3>img{width: 90px;}
  



    #tab2_1{width: 100px; }
    #photo {
    background-image: url("../assets/chill.png");
    background-size: cover; 
    background-position: center; 
    background-repeat: no-repeat; 
    }



    .userInfo{
      width: 1200px;;
      margin: auto;
      height: 800px;
      border-radius: 10%;
      margin-top: 100px;
    }
  
    .container {
            width: 80%;
            margin: 20px auto;
        }
    
        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        .table th, .table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        .table th {
            background-color: #f4f4f4;
        }
        .user-img {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            margin-right: 10px;
        }
        .btn {
            background-color: #f4a261;
            color: white;
            padding: 8px 12px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            justify-items: right;
        }
        .pagination {
            margin-top: 10px;
            text-align: center;
        }
        .pagination button {
            padding: 5px 10px;
            margin: 3px;
            border: 1px solid #ddd;
            background-color: white;
            cursor: pointer;
        }
        .pagination .active {
            background-color: #6c5ce7;
            color: white;
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
    margin-top: 200px;
    transition: transform 0.75s; 
}

.card:hover {
    transform: scale(1.1); 
    border-radius: 50%; 
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
        
        
  </style>
</head>
<meta charset="UTF-8">


<body>
  <div class="wrap">
    <div id="header">
      <div id="header_1">
        <!-- <div id="header_1_1"> -->
          <div id="header_1_1_1">
            <img src="../asset/This_서고 로고.png" alt="" style="height: 100%; width: 100%;">
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
            <button class="btn" id="mypage"><img src="../asset/user01.png" alt=""></button>
          </div>
        <!-- </div> -->
      
      </div>
    </div>
    <!-- -------------------------------------------------------------------- -->

    

    
    

    <!-- -------------------------------------------------------------------- -->
    <div id="footer" style="background-color: #fdf5f1;">
      <div id="footer_1">
        <div id="footer_1_1"><img src="../asset/This_서고 로고.png" alt=""></div>
        <div id="navigator" class="navigator">
          <a a href="">Home</a>
          <a href="">온라인투표</a>
          <a href="">자유게시판</a>
          <a href="">마이페이지</a>
          <a href="">고객센터</a>
        </div>
        <div id="tab1">
          <div id="tab1_1"></div>
          <div id="tab1_2"></div>
          <div id="tab1_3"><img src="../assets/book.png" alt=""></div>
          <div id="tab1_4">모든 회원 정보</div>
        </div>
        <br>
        <div id="tab2">
          <div id="tab1_1"></div>
          <div id="tab1_2"></div>
          <div id="tab1_3"><img src="../assets/facebook.png" alt=""></div>
          <div id="tab1_4"> 관리자 PICK</div>
      </div>
      
    </div>
    <div id="main-content2">
      <div class="container">
        <button class="btn">+ Add User</button>
        <table class="table">
            <thead>
                <tr>
                    <th><input type="checkbox"></th>
                    <th>Users Name</th>
                    <th>Email</th>
                    <th>NickName</th>
                    <th>번호</th>
                    <th>주소</th>
                    <th>수정</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox"></td>
                    <td><img class="user-img" src="../assets/user01.png" alt=""> <strong>Elizabeth Lee</strong></td>
                    <td>ElizabethLee@email.com</td>
                    <td>user01</td>
                    <td>010-1234-1234</td>
                    <td>user01</td>
                    <td>✏️</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td><img class="user-img" src="user2.png" alt=""> <strong>Carlos Garcia</strong></td>
                    <td>CarlosGarcia@email.com</td>
                    <td>user02</td>
                    <td>010-1234-1234</td>
                    <td>user01</td>
                    <td>✏️</td>
                </tr>
                <!-- 추가 사용자들 -->
            </tbody>
        </table>
    
        <div class="pagination">
            <button class="active"><</button>
            <button>1</button>
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            <button>></button>
        </div>
    </div>
    



      </table>

        
    </div>
  </div>


</body>

</html>