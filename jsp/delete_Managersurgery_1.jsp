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
<script>

if(localStorage.getItem('uId')){ 
	var lastData = localStorage.getItem('uId')
	}
</script>

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

			
	
%>

	
                    <script>
					
							window.onload = function() {
							 if(confirm("ȸ���� �����Ͻðڽ��ϱ�?"))
							 {
							  document.location.href="delete_Managersurgery.jsp?prdNo=<%=prdNo%>&opNo=<%=opNo%>"
							 }
							 else
							 {
							 alert('ȸ���� �����մϴ�.');
							 document.location.href="manager_procedure.jsp"
							 }
							}
					</script>



<%

		


    } catch(Exception e) {
		out.println(e);
}

%>

  </body>
  </html>