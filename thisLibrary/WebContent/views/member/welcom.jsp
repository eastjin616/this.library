<%@ page import="javax.servlet.http.HttpSession" %>
<%
    String email = (String) session.getAttribute("user_email");
    String name = (String) session.getAttribute("user_name");
    String picture = (String) session.getAttribute("user_picture");

    if (email == null) {
        response.sendRedirect("loginform.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>환영합니다!</title>
</head>
<body>
    <h2>환영합니다, <%= name %>님!</h2>
    <p>이메일: <%= email %></p>
    <img src="<%= picture %>" width="100">
</body>
</html>
