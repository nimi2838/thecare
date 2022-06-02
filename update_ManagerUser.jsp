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
   
    String key = request.getParameter("id");   
    String jsql = "select * from user where uId = ?";
    PreparedStatement pstmt = con.prepareStatement(jsql);
    pstmt.setString(1,key);

    ResultSet rs = pstmt.executeQuery();
	rs.next();

    String id = rs.getString("uId");
    String pw = rs.getString("uPw");
    String name = rs.getString("uName");
    String joomin = rs.getString("uJoomin");
    Date birth = rs.getDate("uBirth");
    String solar = rs.getString("uSolar");
    String email = rs.getString("uEmail");
    String phone = rs.getString("uPhone");
	String zipcode = rs.getString("uZipcode");
    String address1 = rs.getString("uAddress1");
	String address2 = rs.getString("uAddress2");
    String sex = rs.getString("uSex");
	String Point = rs.getString("Point");
	String Coupon = rs.getString("Coupon");

	String jsql3 = "select count(?) as cnt from user where Coupon =?";
	 PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	 pstmt3.setString(1,myid);
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
 <form name="newMem2" method=post action="update_ManagerUserResult.jsp">
   <table class="table">
      <tr>
         <td class="td_tit">아이디</td>
         <td><input type=hidden name="id" value="<%=id%>"><%=id%></td>
      </tr>
      <tr>
         <td class="td_tit">비밀번호</td>
         <td><input type=text name="pw" size=40 value="<%=pw%>"></td>
      </tr>
      <tr>
         <td class="td_tit">이름</td>
         <td><input type=text name="name" size=40 value="<%=name%>"></td>
      </tr>
      <tr>
         <td class="td_tit">주민등록번호</td>
         <td>
<%
          String[ ]  joominArr = joomin.split("-");   
  // String  joominArr[ ] = joomin.split("-");와 동일
  // split()함수 안의 인수를 기준으로 문자열들을 각각 분할하여 배열의 요소들에 
  // 순서대로 저장시킴.  즉, 하이픈(-)을 중심으로 주민번호 앞 6자리와 뒤 7자리를 
  // 별도의 문자열들로 분리 후, joominArr[0]와 joominArr[1]에 각각 저장시킴
%>      
          <input type=text name="joomin1" value="<%=joominArr[0]%>" size="15"> -
         <input type=text name="joomin2" value="<%=joominArr[1]%>" size="16">
         </td>
      </tr>

      <tr>
         <td class="td_tit">생년월일</td>
         <td>
<%
          String[ ]  birthArr = birth.toString().split("-");  
//  split()함수는 String 타입에서만 사용가능하므로, toString()메소드를 사용하여 birth의
//  타입을 Date타입에서 String타입으로 형(type) 변환 후, split()함수를 적용시켜 년,월,일을 분리함.
//  즉, birthArr[0]에는 "년",  birthArr[1]에는 "월", birthArr[2]에는 "일"이 각각 분리되어 저장됨
%>      
          <input type=text name="birthyy" value="<%=birthArr[0]%>" size="7">년
          <input type=text name="birthmm" value="<%=birthArr[1]%>" size="5">월
          <input type=text name="birthdd" value="<%=birthArr[2]%>" size="5">일
<%
   if (solar.equals("양력"))
   {
%>
            <input type=radio name=solar value="양력" checked>양력
            <input type=radio name=solar value="음력">음력
<%
   }
   else
   {
%>
            <input type=radio name=solar value="양력">양력
            <input type=radio name=solar value="음력" checked>음력
<%
   }
%>
         </td>
      </tr>
     <tr>
			<td class="td_tit">이메일</td>
			<td>
<%
	    	String[ ]  emailArr = email.split("@"); 


            String[ ]  emailSelected = new String[6];  
    	// "selected" 문자열을 저장하기 위한 용도의 배열 생성

			if(emailArr[1].equals("naver.com"))
			{
				emailSelected[0] = "selected";
			}  
			else if(emailArr[1].equals("hanmail.net"))
			{
				emailSelected[1] = "selected";
			}
			else if(emailArr[1].equals("daum.net"))
			{
				emailSelected[2] = "selected";
			}
			else if(emailArr[1].equals("nate.com"))
			{
				emailSelected[3] = "selected";
			}
			else if(emailArr[1].equals("gmail.com"))
			{
				emailSelected[4] = "selected";
			}
			else if(emailArr[1].equals("icloud.com"))
			{
				emailSelected[5] = "selected";
			}

%>

		    <input type=text name="email1" value="<%=emailArr[0]%>" size="10">&nbsp;@&nbsp;
			<select name="email2">      
				<option value="naver" <%=emailSelected[0]%>>naver.com
				<option value="hanmail" <%=emailSelected[1]%>>hanmail.net
				<option value="daum" <%=emailSelected[2]%>>daum.net
				<option value="nate" <%=emailSelected[3]%>>nate.com
				<option value="gmail" <%=emailSelected[4]%>>gmail.com
				<option value="icloud" <%=emailSelected[5]%>>icloud.com
			</select>
			</td>	
		</tr>
     

	   <tr>
         <td class="td_tit">휴대폰번호</td>
         <td>

<%
          String[ ] phoneArr  = phone.split("-");  
       //  String hpArr[ ]  = phone.split("-"); 와 동일
       // 하이픈(-)을 중심으로 휴대폰번호 앞자리, 중간자리, 뒷자리를 각각 분리 후
       // hpArr[0], hpArr[1], hpArr[2]에 각각 저장시킴

         String[ ]  phoneSelected = new String[6];  
       // "selected" 문자열을 저장하기 위한 용도의 배열 생성

         if(phoneArr[0].equals("010"))
         {
            phoneSelected[0] = "selected";
         }  
         else if(phoneArr[0].equals("011"))
         {
            phoneSelected[1] = "selected";
         }
         else if(phoneArr[0].equals("016"))
         {
            phoneSelected[2] = "selected";
         }
         else if(phoneArr[0].equals("017"))
         {
            phoneSelected[3] = "selected";
         }
         else if(phoneArr[0].equals("018"))
         {
            phoneSelected[4] = "selected";
         }
         else if(phoneArr[0].equals("019"))
         {
            phoneSelected[5] = "selected";
         }

%>
    <span class="pbox">
         <select name="phone1" >      
            <option value="010" <%=phoneSelected[0]%>>010
            <option value="011" <%=phoneSelected[1]%>>011
            <option value="016" <%=phoneSelected[2]%>>016
            <option value="017" <%=phoneSelected[3]%>>017
            <option value="018" <%=phoneSelected[4]%>>018
            <option value="019" <%=phoneSelected[5]%>>019
         </select>  
		 </span>
    -
          <input type=text name="phone2" value="<%=phoneArr[1]%>" size="4"> -
          <input type=text name="phone3" value="<%=phoneArr[2]%>" size="4">
         </td>   
      </tr>
     
      <tr>
			<td class = "td_tit">주소</td>
			<td>
				<input type="text" name="zipcode" value="<%=zipcode%>" size="12" readonly> 
				<input type="button" class="btn" value="우편번호검색"
				 onClick="zipCheck()" style="margin-bottom: 10px;"><br>
						  
				<input type="text" name="address1" value="<%=address1%>" size="40" readonly style="margin-bottom: 10px;"><br>
				<input type="text" name="address2" value="<%=address2%>" size="40">&nbsp(상세주소입력)
			</td>
		</tr>
      
      <tr>
         <td class="td_tit">성별</td>
         <td>
<%
      if(sex.equals("여"))
      {
%>
            <input type=radio name=sex value="여" checked>여
            <input type=radio name=sex value="남">남
<%
      }   
      else
      {
%>
            <input type=radio name=sex value="여" checked>여
            <input type=radio name=sex value="남">남
<%
   }
%>            
         </td>
      </tr>
      
   </table>

 <button type="submit"  class="up_btn" value= "수정하기" onClick="checkValue()" style= "cursor: pointer;" >수정하기</button>
   </form> 


		  </center>
</div>
</section>





        <div class="footer flex flex-jc-c" style = "margin-top: 70px;">
            <div class="text">
                <img src="./img/logo-ft.png" width = "150" alt="" style="margin-bottom: 20px;">
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