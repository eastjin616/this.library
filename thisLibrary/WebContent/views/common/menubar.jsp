<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#navigator{
      position: relative; 
      width: 60%; 
      height: 100%;
      display: flex;
      align-items: center; /* 세로 중앙 정렬 */
      justify-content: space-around; /* 요소 간격 균등 배분 */
    }
     #navigator>a{
      text-decoration: none; /* 밑줄 제거 */
      color: black; /* 글씨 색상 (원하는 색으로 변경 가능) */
      font-size: 13px; /* 글씨 크기 조절 */
    }
</style>
</head>
<body>

	<div id="navigator">
              <a href="">Home</a>
              <a href="">온라인투표</a>
              <a href="">자유게시판</a>
              <a href="">마이페이지</a> 
              <a href="">고객센터</a>     
          </div>

</body>
</html>