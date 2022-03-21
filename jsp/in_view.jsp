<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>최근 본 상품담기</title>
</head>
<body>

<%
 try{
 	 String DB_URL="jdbc:mysql://localhost:3306/care?characterEncoding=euckr";   
     String DB_ID="skin";  
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String ctNo = session.getId(); 


	String prdNo = request.getParameter("prdNo");


			String jsql2 = "insert into newview (ctNo, prdNo) values (?,?)";
			PreparedStatement pstmt2 = con.prepareStatement(jsql2);
			pstmt2.setString(1,ctNo);
			pstmt2.setString(2,prdNo);

			pstmt2.executeUpdate();
		

%>





<%
    } catch(Exception e) {
		out.println(e);
}

	    response.sendRedirect("new_view1.jsp");      
%>


    


</body>
</html>