<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<script language="javascript">
	function sendAddress(zip,s,g,d)
	{
		//시도 구군 동을 합한 주소
		var address =s + " " + g + " " + d;
		 // opener:   open()함수를 호출했던 상위(부모) 윈도우 객체를 의미함
		opener.document.newMem.zipcode.value=zip;
        opener.document.newMem.address1.value=address;
		opener.document.newMem.address2.focus();
		window.close();
	}
</script>

<%
    String DB_URL="jdbc:mysql://localhost:3306/care";  
    String DB_ID="skin";  
    String DB_PASSWORD="1234"; 
 	 
    Class.forName("org.gjt.mm.mysql.Driver");  
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	request.setCharacterEncoding("euc-kr");

	String dongName = request.getParameter("dong");   
	String jsql = "select * from cl_zipcodet where dong like '%" + dongName + "%' ";  
	                                                       //  따옴표사용이 어떻게 사용되었는지 주의해서 볼 것!
	PreparedStatement 	pstmt = con.prepareStatement(jsql);
	ResultSet rs = pstmt.executeQuery();
%>

<html>
 <head><title><우편번호 검색></title>
 <link rel="stylesheet" href="css/zipcode.css" /></head>
 <body onLoad="getFocus()">
   <div class="post-search" style="width: 544px; height: 710px;">
        <h1>
            <div class="title">우편번호 찾기</div>
        </h1>
  
   <form name="zipForm" method="post" action="zipCheckOk.jsp">
   <input id="address_search_name" name="dong" type="text" placeholder="검색어(도로명,지번,건물명)를 입력해주세요">
            <input class="button" type="button" value="검색" onclick= "dongCheck();">
        </form>
  <center>
	
	<table class = "zipcode_box" style = "  margin: 15px 15px 0px 15px;
  padding: 35px 20px 30px 20px;
  background-color: #fff;
  letter-spacing: -0.5px;"   border=0 >
	  <tr>
		<td><font size=2><b>우편번호</font></td><td><font size=2><b>시/도</font></td><td><font size=2><b>구/군</font></td>
		<td><font size=2><b>동</font></td><td><font size=2><b>번지</font></td>
	  </tr>
<%
		while(rs.next())
		{
			String zipcode = rs.getString("zipcode");
            String sido = rs.getString("sido");
			String	gugun = rs.getString("gugun");
			String	dong = rs.getString("dong");					 			
			String	bunji = rs.getString("bunji");

			if(bunji==null)  bunji = "";    // 번지값이 null 이면 빈칸으로 출력되도록
%> 
	  <tr>
		 <td width=80 style = "color: blue;"><a href="javascript:sendAddress('<%=zipcode%>','<%=sido%>','<%=gugun%>','<%=dong%>','<%=bunji%>')"><font size=2><%=zipcode%></font></a></td>
		  <td width=80><font size=2><%=sido%></font></td>
		  <td width=120><font size=2><%=gugun%></font></td>
		  <td width=280><font size=2><%=dong%></font></td>
		  <% 
				if(bunji=="")
				{                    // 빈값이면 테이블 칸이 그려지지 않으므로 스페이스로 채움
		  %>
		  <td>&nbsp;</td>	
		  <%
				}
				else
				{
		   %>
		  <td width=150><font size=2><%=bunji%></font></td>		
		  <%
				}
		  %>
	  </tr>
<%
		 } // while문 닫음
%>
	</table>  
	<p><a href="zipCheck.jsp">다시 입력</a>
   </center>
  </body>
</html>
