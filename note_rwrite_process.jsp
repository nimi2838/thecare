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

	         
	int idx =  Integer.parseInt(request.getParameter("idx"));
    String name = request.getParameter("in_name");
    String content = request.getParameter("in_content");
    String ymd = (new java.util.Date()).toLocaleString();         
	
   
	String jsql = "select MAX(ridx) from reboard";
	PreparedStatement pstmt = con.prepareStatement(jsql);
	ResultSet rs = pstmt.executeQuery();
	
	int replynum = 0,
	    step = 0;

	int ridx;
    if (rs == null) {  
        ridx = 1;
    }  else {    	  
       	rs.next();
       	ridx = rs.getInt(1) + 1;
    } 
   	
    rs.close();    

	String jsql2 = "insert into reboard (ridx, name,  content, idx, ymd) values (?, ?, ?, ?, ?)";
   	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setInt(1, ridx);
    pstmt2.setString(2, name);
    pstmt2.setString(3, content);
	pstmt2.setInt(4, idx);
	pstmt2.setString(5, ymd);
    	  
	pstmt2.executeUpdate();
   
    response.sendRedirect("note.jsp");   

	   } 
catch(Exception e) {
		out.println(e);
}
   %>
  </body>
</html>