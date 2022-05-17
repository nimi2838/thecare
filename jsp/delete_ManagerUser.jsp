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
try {
     String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234";
     
    Class.forName("org.gjt.mm.mysql.Driver"); 
     Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
   
    String key = request.getParameter("id");   
    String jsql = "select * from user where uId = ?";
    PreparedStatement pstmt = con.prepareStatement(jsql);
    pstmt.setString(1,key);

    ResultSet rs = pstmt.executeQuery();
    rs.next();
         
    String id = rs.getString("uId");
	String pw = rs.getString("uPw");
%>

 <section id="content" >
     <div class="inner">
     <h1 class="title">회원 탈퇴</h1>

	 <div class="wrap">
	 <div class="titleArea">
       <h2 class="titleArea">
          회원 탈퇴
       </h2>
	   </div>
	   </div>

       <center>
       <form method=post action=delete_ManagerUserResult.jsp>



   <table class="table">
      <tr>
         <td class="td_tit">회원 탈퇴 아이디</td>
         <td><input type=hidden name="id" value="<%=id%>"><%=id%> 님</td>
      </tr>
      <tr>
         <td class="td_tit">비밀번호 재입력</td>
         <td><input type=text name="cpw"></td>
		 <td><input type=hidden name="pw" value="<%=pw%>"></td>
      </tr>
      
   </table>
   <div class="btns">
           
                <input type = "submit" class="btn" value = "탈퇴" style="border:0 solid black;" >
            
          </div>
   </form> 
   </div>
    </div>
   	</center>
</section>

	
    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo-ft.png" width = "150" alt="" >
          <p class = "text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
        </p>
          <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       대표자 : 봉조율 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       전화번호 : 02-517-0912
        </p>
          <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
     </div>

	 <%
    } catch (Exception e) {
      out.println(e);   
}
%>
    

</body>
</html>