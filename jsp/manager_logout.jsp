<%@ page contentType="text/html; charset=euc-kr" %>
<%
    session.invalidate(); 
    response.sendRedirect("manager_login.jsp");     
%>