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

	String prdNo = request.getParameter("prdNo");
	String opNo = request.getParameter("opNo");


	String jsql7= "SELECT * FROM surgery WHERE prdNo=?";
			PreparedStatement pstmt7 = con.prepareStatement(jsql7);
			pstmt7.setString(1, prdNo);

			ResultSet rs7 = pstmt7.executeQuery(); 
			if(rs7.next()){

				


			String jsql6 = "delete from soption WHERE opNo=? and prdNo=?";
					PreparedStatement pstmt6 = con.prepareStatement(jsql6);
					pstmt6.setString(1,opNo);
					pstmt6.setString(2,prdNo);

					pstmt6.executeUpdate();

	
%>

	<script>
		alter("삭제가 완료되었습니다!");
	</script>

<%

			}
		
			response.sendRedirect("manager_procedure.jsp");    


    } catch(Exception e) {
		out.println(e);
}

%>

  </body>
  </html>