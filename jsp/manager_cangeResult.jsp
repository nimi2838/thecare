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

	String rezno = request.getParameter("rezno");
	String name = request.getParameter("name");
	String day1 = request.getParameter("day1");
	String date = request.getParameter("date");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String phone = phone1 + "-" + phone2 + "-" + phone3;
	String sex = request.getParameter("sex");
	String memo = request.getParameter("memo");



	String jsql7= "SELECT * FROM rezinfo WHERE rezNo=?";
			PreparedStatement pstmt7 = con.prepareStatement(jsql7);
			pstmt7.setString(1, rezno);

			ResultSet rs7 = pstmt7.executeQuery(); 
			if(rs7.next()){

				

String jsql5 = "UPDATE rezinfo SET ordPhone=?, ordMemo=? WHERE rezNo=?";
					PreparedStatement pstmt5 = con.prepareStatement(jsql5);
					pstmt5.setString(1,phone);
					pstmt5.setString(2,memo);
					pstmt5.setString(3,rezno);

					pstmt5.executeUpdate();

					String jsql6 = "UPDATE rez SET rezDate=? WHERE rezNo=?";
					PreparedStatement pstmt6 = con.prepareStatement(jsql6);
					pstmt6.setString(1,day1+date);
					pstmt6.setString(2,rezno);

					pstmt6.executeUpdate();


			}

			%>
			<script>
				alert("예약 변경이 완료되었습니다 !");
			document.location.href="manager_reservations.jsp";
			</script>
			
			<%

			

    } catch(Exception e) {
		out.println(e);
}

%>

  </body>
  </html>