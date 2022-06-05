<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<%
boolean isExist = false;

try {
    	String DB_URL="jdbc:mysql://localhost:3306/care";   // 접속 DB는 project
        String DB_ID="skin"; 
        String DB_PASSWORD="1234"; 
 	 
	    Class.forName("org.gjt.mm.mysql.Driver");  
 	    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
        
	    String id = request.getParameter("id");
	    
		String jsql = "select * from user where uId = ?";   
        PreparedStatement  pstmt  = con.prepareStatement(jsql);
	    pstmt.setString(1, id);

	    ResultSet rs = pstmt.executeQuery();  	
        
        if(rs.next())              //   레코드(동일한 ID)가 존재하면
              isExist = true;
        else                          //   레코드(동일한 ID)가 존재하지 않으면  
             isExist = false;

    } catch (Exception e) {
        	out.println(e);
}
%>

<html>
<head>
<title>사용자 ID 중복 검사</title>
</head>

<body bgcolor="#ffffff">
<br>
<table width="228" border="0" cellspacing="1" cellpadding="3" height="50" style="font-size:10pt;font-family:맑은 고딕">
    <tr>
        <td height="25" align=center >
          ID:  <%=request.getParameter("id")%>
        </td>
    </tr>
    
    <tr>
        <td height="25" align=center>
  <%  
		   if(isExist)  
                 out.println("이미 존재하는 ID입니다.");
	       else 
                 out.println("사용 가능한 ID입니다. ");
  %>
        </td>
    </tr>

    <tr>
        <td align=center>
		 <input type="button" value="아이디 중복확인"
                              onClick="window.close()" style="margin-bottom: 10px; line-height: 36px; height: 35px; border: 1px solid #777;
                              color: #777; padding: 0; min-width: 114px; width: 13%; margin-left: 2%; cursor: pointer; background-color: #fff; font-size : 12px">
            
        </td>
    </tr>
</table>
</body>
</html>