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

	String no = request.getParameter("prdNo");  
	String ono = request.getParameter("opNo");  
   
    
    String jsql ="select * from surgery where prdNo=?";
    PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1, no);
   

    ResultSet rs = pstmt.executeQuery();
	rs.next();
    String ctgType =  rs.getString("ctgType");	
    String prdName =  rs.getString("prdName");	



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
 <form name="newManager" method=post action="update_ManagersurgeryResult.jsp">
   <table class="table">
   



      <tr>
         <td class="td_tit">카테고리</td>
         <td>
<%
            String[ ]  ctgSelected = new String[4];  
    	// "selected" 문자열을 저장하기 위한 용도의 배열 생성
%>
			<select name="ctgType">
			    <option value="body" <%=ctgSelected[0]%>>바디라인
				<option value="face" <%=ctgSelected[1]%>>안면케어
				<option value="line" <%=ctgSelected[2]%>>페이스라인
			    <option value="skin" <%=ctgSelected[3]%>>스킨케어
				
				
				
			</select>
			</td>	
      </tr>

      <tr>
         <td class="td_tit">시술번호</td>
         <td><input type=text name="prdNo" size=40 value="<%=no%>"></td>
      </tr>
      <tr>
         <td class="td_tit">시술이름</td>
         <td><input type=text name="prdName" size=40 value="<%=prdName%>"></td>
      </tr>
	  	<%
							String jsql1 = "select * from soption where prdNo = ?";   
								PreparedStatement pstmt1 = con.prepareStatement(jsql1);
								pstmt1.setString(1, no);
								
								ResultSet rs1 = pstmt1.executeQuery();
								
							rs1.next();

								String opname = rs1.getString("opName");
								String opno = rs1.getString("opNo");
								String opprice = rs1.getString("opPrice");
							%>
	  <tr>
         <td class="td_tit">옵션번호</td>
         <td><input type=text name="opNo" size=40 value="<%=opno%>"></td>
      </tr>
	  <tr>
         <td class="td_tit">옵션이름</td>
         <td><input type=text name="opNo" size=40 value="<%=opname%>"></td>
      </tr>
	  <tr>
         <td class="td_tit">시술가격</td>
         <td><input type=text name="opName" size=40 value="<%=opprice%>"></td>
      </tr>
   </table>

 <button type="submit"  class="up_btn" value= "수정하기" onClick="checkValue()" style= "cursor: pointer;" >수정하기</button>
   </form> 


		  </center>
</div>
</section>





        <div class="footer flex flex-jc-c" >
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


<script>
function zipCheck()
                 {
                 	window.open("zipCheck2.jsp", "win", "width=430, height=710, scrollbars=yes, status=yes");
                 }
        


</script>