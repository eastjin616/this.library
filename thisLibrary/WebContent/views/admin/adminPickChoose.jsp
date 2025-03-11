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
      color: white; /* 글자 색상을 흰색으로 설정 */
      font-size: 20px; /* 글자 크기 증가 (원하는 크기로 조정 가능) */

    }
    .content2{
      display: flex;
      height: 1000px;
    }

    #main-content1{ width: 25%; border: 1px solid; background-color: rgb(248, 215, 220);}
    #main-content2{ width: 75%; border: 1px solid;}
    #profile-photo{height: 40%; border: 1px solid;}
    #photo{ height: 90%; border-radius: 50%;  }
    #userName     {text-align: center; height: 10%; box-sizing: border-box;}
    #tab1 ,#tab2{display: flex; width: 100%; height: 12%; box-sizing: border-box;cursor: pointer;}
    #tab1:hover, #tab2:hover{
      background-color: orange;
    }
    #tab1:active{background-color: orange;}
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
            display: flex;
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
    transition: transform 0.75s; /* 애니메이션 시간 설정 */
}

.card:hover {
    transform: scale(1.1); /* 마우스 오버 시 크기 증가 */
    border-radius: 50%; /* 원형으로 변경 */
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
    <div class="content1"><div id="content1_text">관리자 페이지</div> </div>
    <div class="content2">
      <div id="main-content1">
        <div id="profile-photo">
          <div id="photo"></div>
          <div id="userName">여기는 관리자 아이디가 올 자리입니다. </div>
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
        <div class="card" onclick="uploadImage(0)">
            <span class="upload-icon">➕</span>
            <input type="button" accept="image" >
        </div>
        <div class="card" onclick="uploadImage(1)">
            <span class="upload-icon">➕</span>
            <input type="button" accept="image" >
        </div>
        <div class="card" onclick="uploadImage(2)">
            <span class="upload-icon">➕</span>
            <input type="button" accept="image" >
        </div>
    </div>



      </table>

        
    </div>
  </div>
<!--
<script>
    let tap1Active = false;

    document.getElementById('tap1').addEventListener('click', function() {
        if (!tap1Active) {
            this.classList.add('active');
            tap1Active = true;
        }
    });

    document.getElementById('tap2').addEventListener('click', function() {
        // tap1의 배경색을 유지하고 tap2의 배경색을 변경할 수 있습니다.
        document.getElementById('tap1').classList.remove('active'); // tap1의 배경색을 원래대로 되돌림
        this.classList.add('active'); // tap2의 배경색을 변경
        tap1Active = false; // tap1의 상태를 초기화
    });
</script>
좌측에 프로필 사진 밑에 위치한 tab1(모든회원정보), tab2(관리자PICK) 을 클릭시, 색이 변하고, 
다른 탭을 클릭할때 까지 색이 변하지 않고 그대로 고정하고 싶었다. 
하지만 CSS 에서는 불가능하다고 함. 
하여, SCRIPT 를 적어보았습니다만, 완벽하지 않으니 주의 바람.-호
-->



</body>

</html>