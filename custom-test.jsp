<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>맞춤시술</title>
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
		
	로그인이 필요합니다
	
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
                <h2>Q 얼굴에 주름이 있습니까 ?</h2>
                <ul class="qna-wrap">
                    <li>
                        <div class="answer">
                            웃거나 찡그리거나 눈썹을 들어올려도 생기지 않습니다.
                        </div>
                    </li>
                    <li>
                        <div class="answer">
                            표정을 지을 때만 생깁니다.
                        </div>
                    </li>
                    <li>
                        <div class="answer">
                            표정을 지을 때도 생기고 표정을 짓지 않아도 주름이 좀 있습니다.
                        </div>
                    </li>
                    <li>
                        <div class="answer">
                            웃거나 찡그리거나 눈썹을 들어올려도 생기지 않습니다.
                        </div>
                    </li>
                    
                </ul>
                    <button class="survery-btn">다음</button>

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