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
  <link rel="stylesheet" href="css/manager_update.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <script src="https://kit.fontawesome.com/214669976f.js" crossorigin="anonymous"></script>
  <title>관리자</title>
</head>
<%
   String myid = (String)session.getAttribute("sid");                                                                           
%>
<body>
    
    <div class="top-wrap">
        <div class="top-box1 flex flex-jc-sb flex-ai-c">
            <div class="logo-box ">
                <div class="img-box">
                    <a href="manager_main.html">
                        <img src="img/logo.png" alt="" width="150px" height="69px">
                    </a>
                </div>
            </div>
        </div>
        <div class="line"></div>

    </div>

<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");   
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");

	String	joomin1 = request.getParameter("joomin1");
	String	joomin2 = request.getParameter("joomin2");
	String joomin = joomin1 + "-" + joomin2;

	String	birthyy = request.getParameter("birthyy");
	String	birthmm = request.getParameter("birthmm");
	String	birthdd = request.getParameter("birthdd");
	String	birth = birthyy + "-" +birthmm + "-" + birthdd;

	String	solar = request.getParameter("solar");
	String	email1 = request.getParameter("email1");
	String	email2 = request.getParameter("email2");
	String	email = email1 + "@" +email2;

    
	String	phone1 = request.getParameter("phone1");
	String	phone2 = request.getParameter("phone2");
	String	phone3 = request.getParameter("phone3");
	String	phone = phone1 + "-"+ phone2 + "-" + phone3;
	String  zipcode =  request.getParameter("zipcode");
    String  address1 =  request.getParameter("address1");
	String  address2 =  request.getParameter("address2");
	String	address = address1 + " " +address2;
    

	String	sex = request.getParameter("sex");


try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";
     String DB_ID="skin";  
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "update user set uPw=?, uName=?, ";
	 jsql = jsql + "uJoomin=?, uBirth=?, uSolar=?,uEmail=?,";
	 jsql = jsql + "uPhone=?, uZipcode=?, uAddress1=?, uAddress2=?, ";
	 jsql = jsql + "uSex=? where uId=? ";	
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1,pw);
	 pstmt.setString(2,name);
	 pstmt.setString(3,joomin);
	 pstmt.setString(4,birth);
	 pstmt.setString(5,solar);
	 pstmt.setString(6,email);
	 pstmt.setString(7,phone);
	 pstmt.setString(8,zipcode);
	 pstmt.setString(9,address1);
     pstmt.setString(10,address2);
	 pstmt.setString(11,sex);
	 pstmt.setString(12,id);


	


	 pstmt.executeUpdate();  
   
	 String jsql2 = "select * from user where uId=?";
	 PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	 pstmt2.setString(1,id);

	 ResultSet rs = pstmt2.executeQuery();
	 rs.next();  

	 String Point = rs.getString("Point");
	 String Coupon = rs.getString("Coupon");

	 String jsql3 = "select count(?) as cnt from user where Coupon =?";
	 PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	 pstmt3.setString(1,id);
	 pstmt3.setString(2,Coupon);


	 ResultSet rs2 = pstmt3.executeQuery();
	 rs2.next();
	int cnt = rs2.getInt("cnt");
%>



	<section id="content" >
     <div class="inner">
     <h1 class="title">회원 정보 수정</h1>

	 <div class="wrap">
	 <div class="titleArea">
       <h2 class="titleArea">
          회원 정보 수정
       </h2>
	   </div>
	   </div>

		
<center>
<br><br><br>
<font color="black" style="font-size:20px;"><b>수정된 회원 정보 내역</b></font><p>
	<table border=0  class = "table">
		<tr>
			<td class="td_tit">ID</td>
			<td><%=rs.getString("uId")%></td>
		</tr>
		<tr>
			<td  class="td_tit">비밀번호</td>
			<td><%=rs.getString("uPw")%></td>
		</tr>
		<tr>
			<td class="td_tit">성명</td>
			<td><%=rs.getString("uName")%></td>
		</tr>
		<tr>
			<td  class="td_tit">주민번호</td>
			<td><%=rs.getString("uJoomin")%></td>
		</tr>
		<tr>
			<td class="td_tit">생일</td>
			<td><%=rs.getDate("uBirth")%> (<%=rs.getString("uSolar")%>)</td>
		</tr>
		<tr>
			<td class="td_tit">이메일</td>
			<td><%=rs.getString("uEmail")%></td>
		</tr>
		<tr>
			<td class="td_tit">휴대폰</td>
			<td><%=rs.getString("uPhone")%></td>
		</tr>
	<tr>
			<td class="td_tit">주소</td>
			<td><%=rs.getString("uZipcode")%><br><%=rs.getString("uAddress1")%> <%=rs.getString("uAddress2")%></td>
		</tr>
		<tr>
			<td class="td_tit">성별</td>
			<td><%=rs.getString("uSex")%></td>
		</tr>
	</table>

	<div class="btn">
				<a href="manager_main.jsp">메인화면</a>
			  </div>
	</section>
        <div class="footer flex flex-jc-c" style = "margin-top: 70px;">
            <div class="text">
                <img src="./img/logo.png" width = "150" alt="" style="margin-bottom: 20px;">
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
