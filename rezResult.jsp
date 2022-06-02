<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
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



			String jsql = "select MAX(merchant_uid) from gocart";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery(); 

	int oNum;
	if(rs.next())                        
		oNum = rs.getInt(1) + 1;  
	else                     
		oNum = 1;   



			String jsql1 = "DELETE FROM gocart;";
			PreparedStatement pstmt1 = con.prepareStatement(jsql1);

			pstmt1.executeUpdate();

			
			for(int i=0; i<chk.length; i++){

				String jsql7= "SELECT * FROM gocart WHERE ctNo=? and prdNo =? and opNo =?";
			PreparedStatement pstmt7 = con.prepareStatement(jsql7);
			pstmt7.setString(1, ctNo);
			pstmt7.setString(2,prdNo);
			pstmt7.setString(3,field_a[i]);

			ResultSet rs7 = pstmt7.executeQuery(); 
			if (!rs7.next()){

        
			String jsql2 = "insert into gocart (merchant_uid, ctNo, prdNo,opNo) values (?,?,?,?)";
					PreparedStatement pstmt2 = con.prepareStatement(jsql2);
					pstmt2.setString(1,Integer.toString(oNum));
					pstmt2.setString(2,ctNo);
					pstmt2.setString(3,prdNo);
					pstmt2.setString(4,field_a[i]);

					pstmt2.executeUpdate();
			}

	} //for

		response.sendRedirect("reservation.jsp");    
    } catch (Exception e) {
      out.println(e);
}
%>
