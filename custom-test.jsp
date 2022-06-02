<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>����ü�</title>
    <link rel="stylesheet" href="css/custom-test.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<%
   String myid = (String)session.getAttribute("sid");                                                                           
%>

<body>


<%

if (myid == null) {

	%>
		
	�α����� �ʿ��մϴ�
	
	<%

	} else {
	try{
 		String DB_URL="jdbc:mysql://localhost:3306/care?characterEncoding=euckr";   
		String DB_ID="skin";  
		String DB_PASSWORD="1234";
 	 
		Class.forName("org.gjt.mm.mysql.Driver"); 
 		Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		request.setCharacterEncoding("euc-kr");


		String jsql = "select * from user where uId = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setString(1, myid);
		ResultSet rs = pstmt.executeQuery(); 
		
		rs.next();

		String uName = rs.getString("uName"); 

	%>
 <div class="survery-content">
        <div class="survery-inner">
            <div class="survery-test">
                <div class="makde">
                    <button><img src="img/back.png" alt="" ></button>
                    <img src="img/makde.jpg" alt="" width="530px" height="50px">
                    <h3>10%</h3>
                </div>
                <h2>Q �󱼿� �ָ��� �ֽ��ϱ� ?</h2>
                <ul class="qna-wrap">
                    <li>
                        <div class="answer">
                            ���ų� ���׸��ų� ������ ���÷��� ������ �ʽ��ϴ�.
                        </div>
                    </li>
                    <li>
                        <div class="answer">
                            ǥ���� ���� ���� ����ϴ�.
                        </div>
                    </li>
                    <li>
                        <div class="answer">
                            ǥ���� ���� ���� ����� ǥ���� ���� �ʾƵ� �ָ��� �� �ֽ��ϴ�.
                        </div>
                    </li>
                    <li>
                        <div class="answer">
                            ���ų� ���׸��ų� ������ ���÷��� ������ �ʽ��ϴ�.
                        </div>
                    </li>
                    
                </ul>
                    <button class="survery-btn">����</button>

                    <a href="custom.html">
                        <div class="close-test">
                            <img src="img/test-close.png" alt="">
                        </div>
                    </a>
            </div>

        </div>
    </div>


    <footer>
        
    </footer>
    
    <div class="footer">
          COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.
     </div>

	 <%
    } catch(Exception e) {
		out.println(e);
}
}
%>


    
</body>
</html>