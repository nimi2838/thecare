 <%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="java.util.Enumeration"%>

<html>
   <head><title>이미지 업로드</title></head>      
   <body>
   <%
   
try {
// 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
//     String DB_ID="skin";  
//     String DB_PASSWORD="1234"; 
// 	 
//	 Class.forName("org.gjt.mm.mysql.Driver");  
// 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	request.setCharacterEncoding("euc-kr");
	
	Part file = request.getPart("file");
%>
	<%=file%>

	<%

	
	   } 
catch(Exception e) {
		out.println(e);
}
   %>
  </body>
</html>


