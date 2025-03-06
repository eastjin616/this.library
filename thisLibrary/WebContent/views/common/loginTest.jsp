<%@page import="com.kh.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String contextPath = request.getContextPath();

	Member loginMember = (Member)session.getAttribute("loginMember"); 

	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    
    <% if(loginMember == null){%>
		    <form action="<%= contextPath %>/login.me" method="Post">
		        아이디 : <input type="text" name="memId" required><br>
		        비밀번호 : <input type="password" name="memPwd" required><br>
		    
		    		<button type="submit">로그인</button>
		    </form>
    	<% }else{ %>
        <!-- case2. 로그인 후 -->
        <div>
            <b><%= loginMember.getMemName() %>님</b>의 방문을 환영합니다 <br><br>
            <div align="center">
                <a href="<%= contextPath %>/myPage.me">마이페이지</a>
                <a href="<%= contextPath %>/logout.me">로그아웃</a>
            </div>
        </div>
    <% } %>
</body>
</html>