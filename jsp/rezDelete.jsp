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

	String rezNo = request.getParameter("rezNo");


	String jsql7= "SELECT * FROM rezinfo WHERE rezNo=?";
			PreparedStatement pstmt7 = con.prepareStatement(jsql7);
			pstmt7.setString(1, rezNo);

			ResultSet rs7 = pstmt7.executeQuery(); 
			if(rs7.next()){

				

String jsql5 = "delete from rezinfo WHERE rezNo=?";
					PreparedStatement pstmt5 = con.prepareStatement(jsql5);
					pstmt5.setString(1,rezNo);

					pstmt5.executeUpdate();

			

			String jsql6 = "delete from rez WHERE rezNo=?";
					PreparedStatement pstmt6 = con.prepareStatement(jsql6);
					pstmt6.setString(1,rezNo);

					pstmt6.executeUpdate();

	
%>

	<script>
		alter("삭제가 완료되었습니다!");
	</script>

<%

			}
		
			response.sendRedirect("manager_reservations.jsp");    


    } catch(Exception e) {
		out.println(e);
}

%>

  </body>
  </html>