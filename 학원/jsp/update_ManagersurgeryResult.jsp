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

	String ctgType = request.getParameter("ctgType");   
	String prdNo = request.getParameter("prdNo");
	String prdName = request.getParameter("prdName");
    String startprice = request.getParameter("startprice");



try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";
     String DB_ID="skin";  
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "update surgery set ctgType=?,";
	 jsql = jsql + "prdName=?, startprice=? where prdNo=? ";	
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1, ctgType);
	 pstmt.setString(2, prdName);  
	 pstmt.setString(3, startprice);
	 pstmt.setString(4, prdNo);
	

	


	 pstmt.executeUpdate();  
   
	 String jsql2 = "select * from surgery where prdNo=?";
	 PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	 pstmt2.setString(1,prdNo);

	 ResultSet rs = pstmt2.executeQuery();
	 rs.next();  

	
	
%>



	<section id="content" >
     <div class="inner">
     <h1 class="title">시술 정보 수정</h1>

	 <div class="wrap">
	 <div class="titleArea">
       <h2 class="titleArea">
          시술 정보 수정
       </h2>
	   </div>
	   </div>

		
<center>
<br><br><br>
<font color="black" style="font-size:20px;"><b>수정된 시술 정보 내역</b></font><p>
	<table border=0  class = "table">
		<tr>
			<td class="td_tit">카테고리</td>
			<td><%=rs.getString("ctgType")%></td>
		</tr>
		<tr>
			<td  class="td_tit">시술번호</td>
			<td><%=rs.getString("prdNo")%></td>
		</tr>
		<tr>
			<td class="td_tit">시술이름</td>
			<td><%=rs.getString("prdName")%></td>
		</tr>
		<tr>
			<td  class="td_tit">시술가격</td>
			<td><%=rs.getString("startprice")%></td>
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
