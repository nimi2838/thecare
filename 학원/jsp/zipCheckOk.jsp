<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<script language="javascript">
	function sendAddress(zip,s,g,d)
	{
		//�õ� ���� ���� ���� �ּ�
		var address =s + " " + g + " " + d;
		 // opener:   open()�Լ��� ȣ���ߴ� ����(�θ�) ������ ��ü�� �ǹ���
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
	                                                       //  ����ǥ����� ��� ���Ǿ����� �����ؼ� �� ��!
	PreparedStatement 	pstmt = con.prepareStatement(jsql);
	ResultSet rs = pstmt.executeQuery();
%>

<html>
 <head><title><�����ȣ �˻�></title>
 <link rel="stylesheet" href="css/zipcode.css" /></head>
 <body onLoad="getFocus()">
   <div class="post-search" style="width: 544px; height: 710px;">
        <h1>
            <div class="title">�����ȣ ã��</div>
        </h1>
  
   <form name="zipForm" method="post" action="zipCheckOk.jsp">
   <input id="address_search_name" name="dong" type="text" placeholder="�˻���(���θ�,����,�ǹ���)�� �Է����ּ���">
            <input class="button" type="button" value="�˻�" onclick= "dongCheck();">
        </form>
  <center>
	
	<table class = "zipcode_box" style = "  margin: 15px 15px 0px 15px;
  padding: 35px 20px 30px 20px;
  background-color: #fff;
  letter-spacing: -0.5px;"   border=0 >
	  <tr>
		<td><font size=2><b>�����ȣ</font></td><td><font size=2><b>��/��</font></td><td><font size=2><b>��/��</font></td>
		<td><font size=2><b>��</font></td><td><font size=2><b>����</font></td>
	  </tr>
<%
		while(rs.next())
		{
			String zipcode = rs.getString("zipcode");
            String sido = rs.getString("sido");
			String	gugun = rs.getString("gugun");
			String	dong = rs.getString("dong");					 			
			String	bunji = rs.getString("bunji");

			if(bunji==null)  bunji = "";    // �������� null �̸� ��ĭ���� ��µǵ���
%> 
	  <tr>
		 <td width=80 style = "color: blue;"><a href="javascript:sendAddress('<%=zipcode%>','<%=sido%>','<%=gugun%>','<%=dong%>','<%=bunji%>')"><font size=2><%=zipcode%></font></a></td>
		  <td width=80><font size=2><%=sido%></font></td>
		  <td width=120><font size=2><%=gugun%></font></td>
		  <td width=280><font size=2><%=dong%></font></td>
		  <% 
				if(bunji=="")
				{                    // ���̸� ���̺� ĭ�� �׷����� �����Ƿ� �����̽��� ä��
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
		 } // while�� ����
%>
	</table>  
	<p><a href="zipCheck.jsp">�ٽ� �Է�</a>
   </center>
  </body>
</html>
