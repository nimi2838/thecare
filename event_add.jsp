<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>


<body>

<%


try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	request.setCharacterEncoding("euc-kr");


String coupon = request.getParameter("Coupon");
String id = request.getParameter("uId");

			String jsql = "select * from user where uId=? and Coupon IS NULL";   
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1,id);

	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()) {

		
				
			String jsql2 = "UPDATE user SET Coupon =? WHERE uId=?";   
			PreparedStatement pstmt2 = con.prepareStatement(jsql2);
			pstmt2.setString(1,coupon);
			pstmt2.setString(2,id);

			
			 pstmt2.executeUpdate(); 
				
		} else {

						String jsql3 = "SELECT * FROM USER WHERE uId=? AND Coupon LIKE '%"+coupon+"%' ";   
					PreparedStatement pstmt3 = con.prepareStatement(jsql3);
					pstmt3.setString(1,id);

					ResultSet rs3 = pstmt3.executeQuery();
					
							if(rs3.next()) {

										%>

											<script>
								alert("해당 쿠폰이 있습니다.");
											document.location.href="event.jsp";
								</script>

											<%

							}
							else {

							String jsql1 = "UPDATE user SET Coupon = CONCAT(Coupon,?) WHERE uId=?";   
							PreparedStatement pstmt1 = con.prepareStatement(jsql1);
							pstmt1.setString(1,','+coupon);
							pstmt1.setString(2,id);

							
							 pstmt1.executeUpdate(); 

							 
	

							}
					
		%>
			<%
			}

	%>

<script>
								alert("쿠폰이 발급되었습니다.");
											document.location.href="event.jsp";
								</script>


			<%
		
	
	


    } catch(Exception e) {
		out.println(e);
}

%>

  </body>
  </html>