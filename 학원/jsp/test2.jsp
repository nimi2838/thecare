<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>test2</title>
</head>
<body>

<%


		String[] chk = request.getParameterValues("chk[]");
		String[] field_a = request.getParameterValues("field_a[]");


		 for(int i=0; i<chk.length; i++){
        out.println(chk[i] + " " + field_a[i] + "<br>");
      }


%>


</body>
</html>