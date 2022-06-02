<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>장바구니</title>
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
		
		String[] chk = request.getParameterValues("chk[]");
		String[] field_a = request.getParameterValues("field_a[]");

	
			for(int i=0; i<chk.length; i++){
        
	String jsql1 = "select * from cart where ctNo=? and prdNo=? and opNo=?";
			PreparedStatement pstmt1 = con.prepareStatement(jsql1);
			pstmt1.setString(1,ctNo);
			pstmt1.setString(2,prdNo);
			pstmt1.setString(3,field_a[i]);

			ResultSet rs1 = pstmt1.executeQuery(); 

			if(rs1.next()) {

			

%>
	<script>
				alert('장바구니 동일 상품 존재');
				history.back();
				</script>
<%
			} else{

				String jsql2 = "insert into cart (ctNo, prdNo,opNo) values (?,?,?)";
			PreparedStatement pstmt2 = con.prepareStatement(jsql2);
			pstmt2.setString(1,ctNo);
			pstmt2.setString(2,prdNo);
			pstmt2.setString(3,field_a[i]);

			pstmt2.executeUpdate();

%>
	<script>
			location.href="cart.jsp"
			</script>
	<%

			} //if-else

			      
				  } // for

%>






<%
    } catch(Exception e) {
		out.println(e);
}

       

%>


</body>
</html>