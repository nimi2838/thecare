<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/login.css" />
  <title>捻虐 免仿</title>
</head>
<body>
	<!-- 	<%
			String cookie_check = request.getHeader("Cookie");
			if(cookie_check != null) {
					Cookie[] cookies = request.getCookies();
					for(Cookie cookie_prdno : cookies) {
						if(cookie_prdno.getName().equals("prdNo")) {
								%>
												<p> 力前 : <%=cookie_prdno.getValue()%> </p>
									<%
							}
					}
			}
			
		%> -->


		<%
				Cookie[] cook = request.getCookies();

				if(cook != null) {
					for(int i=0; i<cook.length;i++){
						String name = cook[i].getName();
						if(name.equals("prdNo")){
							String value=cook[i].getValue();
						//	String item = URLDecoder.decode(value,"euc-kr");
							%>
									<p>力前 : <%=value%></p>
								<%
						}
					}
				} else {
					%>
								<p>力前 : 绝澜</p>
						<%
				}
		%>



</body>
</html>