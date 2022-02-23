<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title>장바구니 비우기 결과</title></head>
<body>

<%
try { 
 	 String DB_URL="jdbc:mysql://localhost:3306/care";
     String DB_ID="skin"; 
     String DB_PASSWORD="1234";
	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		String ctNo = session.getId(); 
		String prdNo = request.getParameter("prdNo");
		

		String jsql1 = "select * from cart where prdNo=?";
      PreparedStatement pstmt1 = con.prepareStatement(jsql1);
	  pstmt1.setString(1, prdNo);

      ResultSet rs1 = pstmt1.executeQuery(); 
	  rs1.next();



					 String jsql = "delete from cart where ctNo=? and prdNo = ?";   
					PreparedStatement pstmt = con.prepareStatement(jsql);
					pstmt.setString(1, ctNo);
					pstmt.setString(2, prdNo);
					
					pstmt.executeUpdate();

					


	response.sendRedirect("cart.jsp");    
    } catch (Exception e) {
      out.println(e);
}
%>
</body>
</html>