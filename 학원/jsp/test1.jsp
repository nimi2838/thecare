<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>test1</title>
</head>
<body>
<%

 try{
 	 String DB_URL="jdbc:mysql://localhost:3306/care?characterEncoding=euckr";   
     String DB_ID="skin";  
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
String no = "li02";

				%>
					
<form id="form1" name="form1" method="post" action="test2.jsp" onsubmit="_submit(this);">
					<%
	
					String jsql1 = "select * from soption where prdNo = ?";   
				PreparedStatement pstmt1 = con.prepareStatement(jsql1);
				pstmt1.setString(1, no);
				
				ResultSet rs1 = pstmt1.executeQuery();

			while(rs1.next()) {	
				
				String opname = rs1.getString("opName");

				String opno = rs1.getString("opNo");
				int opprice = rs1.getInt("opPrice");

%>

<!-- row 1 -->
<input type="checkbox" name="chk[]" value="<%=opprice%>" />
<input type="hidden" name="field_a[]" value="<%=opno%>" />
<%
	
	}
	%>
<input type="submit" name="Submit" id="button" value="Submit" />
</form>

<%
    } catch(Exception e) {
		out.println(e);
}

	 
%>

<!-- ... -->

<script language='JavaScript'>
function _submit(f)
{
    //같이 보낼 값 정리
    if (typeof(f.elements['chk[]'].length) == 'undefined') //단일
    {
        if (f.elements['chk[]'].checked==false)
        {
            f.elements['field_a[]'].disabled=true;
            f.elements['field_b[]'].disabled=true;
        }
    } else { //다중
        for (i=0; i<f.elements['chk[]'].length; i++)
        {
            if (f.elements['chk[]'][i].checked==false)
            {
                f.elements['field_a[]'][i].disabled=true;
                f.elements['field_b[]'][i].disabled=true;
            }
        }
    }
    return true;
}
</script>


</body>
</html>

