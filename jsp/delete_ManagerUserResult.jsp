<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="css/manager_del.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <script src="https://kit.fontawesome.com/214669976f.js" crossorigin="anonymous"></script>
  <title>관리자</title>
</head>
<body>
    
    <div class="top-wrap">
        <div class="top-box1 flex flex-jc-sb flex-ai-c">
            <div class="logo-box ">
                <div class="img-box">
                    <a href="manager_main.jsp">
                        <img src="img/logo.png" alt="" width="150px" height="69px">
                    </a>
                </div>
            </div>
        </div>
        <div class="line"></div>

    </div>
<%
    
	request.setCharacterEncoding("euc-kr");
  
	String id = request.getParameter("id");   
	String cpw = request.getParameter("cpw");
	String pw = request.getParameter("pw");

if (cpw.equals(pw)) {


try {
 
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "DELETE FROM user WHERE uId=?";

	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,id);

	 pstmt.executeUpdate();
		
	}
		catch(Exception e) { 
		out.println(e);
}

 session.setAttribute("sid", null);

%>


<div class="finish">
			<div class="icon">
				<i class="fa-solid fa-circle-check"></i>
			</div>
			  <h1>탈퇴가 완료되었습니다!</h1>
			  <p>
				예약해주셔서 대단히 감사합니다!<br>
				더 나은 서비스로 보답하겠습니다.
			  </p>
			  <div class="btnn">
				<a href="manager_main.jsp">메인화면</a>
			  </div>
		</div>

<% 
} else{
	
       
	%>
 <div style="margin:0 auto;text-align:center; margin-top:100px;">

<h3 class="tit" style="font-size:20px;"> 회원 정보가 잘못되었습니다! </h3><p>
	<br><br>

<br>
 <a href="manager_main.jsp" class="btn_book1">메인화면</a>
<a href="manager_member.jsp" class="btn_book2" >회원조회</a>

</div>

	<%
	  } 

%>


