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
		String opNo = request.getParameter("opNo");
		

		String jsql1 = "select * from cart where ctNo = ? and prdNo=? and opNo=?";
      PreparedStatement pstmt1 = con.prepareStatement(jsql1);
	  pstmt1.setString(1, ctNo);
	  pstmt1.setString(2, prdNo);
	  pstmt1.setString(3, opNo);

      ResultSet rs1 = pstmt1.executeQuery(); 
	  if (rs1.next()) {



					 String jsql = "delete from cart where ctNo=? and prdNo = ? and opNo = ?";   
					PreparedStatement pstmt = con.prepareStatement(jsql);
					pstmt.setString(1, ctNo);
					pstmt.setString(2, prdNo);
					pstmt.setString(3, opNo);
					
					pstmt.executeUpdate();

	  }

					


	response.sendRedirect("cart.jsp");    
    } catch (Exception e) {
      out.println(e);
}
%>
</body>
</html>