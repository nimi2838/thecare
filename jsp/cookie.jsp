<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%
	Cookie cookie = new Cookie("id","apple");
	response.addCookie(cookie);
%>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/login.css" />
  <title>쿠키 생성</title>
</head>
<body>

<a href="getCookie1.jsp">쿠키전송</a>

</body>
</html>