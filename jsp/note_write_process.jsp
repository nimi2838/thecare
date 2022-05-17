<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>         
<html>
   <head><title>게시판 리스트 보기</title></head>      
   <body>
 <%
   
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	request.setCharacterEncoding("euc-kr");
	
	String subject = request.getParameter("in_subject");              
    String name = request.getParameter("in_name");
    String email = request.getParameter("email");
    String content = request.getParameter("in_content");
    String pwd = request.getParameter("pwd");
    String ymd = (new java.util.Date()).toLocaleString();         
   

	String jsql = "select MAX(no) from board";
	PreparedStatement pstmt = con.prepareStatement(jsql);
	ResultSet rs = pstmt.executeQuery();
	
	int replynum = 0,
	    step = 0;

	int no;
    if (rs == null) {  
        no = 1;
    }  else {    	  
       	rs.next();
       	no = rs.getInt(1) + 1;
    } 
   	
    rs.close();    

	String jsql2 = "insert into board (idx, no, subject, name, email, content, ";
	jsql2 = jsql2 + "ymd, pwd, masterid, replynum, step) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
   	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setInt(1, no);
	pstmt2.setInt(2, no);
    pstmt2.setString(3, subject);
    pstmt2.setString(4, name);
    pstmt2.setString(5, email);
    pstmt2.setString(6, content);
    pstmt2.setString(7, ymd);
    pstmt2.setString(8, pwd);
    pstmt2.setInt(9, no);
    pstmt2.setInt(10, replynum);
    pstmt2.setInt(11, step);
    	  
	pstmt2.executeUpdate();
   
    response.sendRedirect("note.jsp");   

	   } 
catch(Exception e) {
		out.println(e);
}
   %>
  </body>
</html>