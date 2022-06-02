<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<html>
<head>
<title>로그인 결과</title>
</head>

 <body>
 <center>

<%
 	 String DB_URL="jdbc:mysql://localhost:3306/care";   //  DB명이 project임
     String DB_ID="skin"; 
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

    String id = request.getParameter("id");  //  로그인폼(manager_login.jsp)에서 입력한 ID를 넘겨받음
    String pw = request.getParameter("pw");  //  로그인폼(manager_login.jsp)에서 입력한 PW를 넘겨받음

     //  로그인폼(manager_login.jsp)에서 입력한 ID를 포함한 레코드를 manager 테이블에서 조회함
    String jsql = "select * from manager where managerId = ? ";
    PreparedStatement pstmt = con.prepareStatement(jsql);
    pstmt.setString(1, id);

    ResultSet rs = pstmt.executeQuery(); 

    if( rs.next() )  
    {
         if (pw.equals(rs.getString("managerPw")))  
        {
             session.setAttribute("managerId", id);

             response.sendRedirect("manager_main.jsp");   

		 } else {   
%>
      <br><br><br>
	  <center>
	      <script language="javascript">
   alert('비밀번호가 잘못 되었습니다. 다시 확인해 주세요! ');
window.location = 'manager_login.jsp';
    
</script>
		</center>
<%       
        }         
    } else {    
 %>
       <br><br><br>
	  <center>

	    <script language="javascript">
   alert('아이디가 존재하지 않습니다. 다시 확인해 주세요!');
		window.location = 'manager_login.jsp';
    
</script>


	   </center>
<%
   }  
%>

</body>
</html>