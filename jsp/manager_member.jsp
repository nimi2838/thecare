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
  <link rel="stylesheet" href="css/manager_member.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <script src="https://kit.fontawesome.com/214669976f.js" crossorigin="anonymous"></script>
  <title>관리자</title>
</head>
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
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care"; 
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

     String jsql = "select * from user";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 ResultSet  rs = pstmt.executeQuery();
%>



    <section id="content" >
        <div class="inner">
            <h1 class="title">회원관리</h1>

            <div class="wrap">
                <div class="titleArea">
                    <h2>전체 회원 조회</h2>
                    <div class="new">
                        <a href="insertUser.jsp">
                            <img src="img/manager-plus.png" alt="" width="30px" height="30px">
                            <p>회원등록</p>
                        </a>
                    </div>
                </div>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>아이디</th>
                        <th>비밀번호</th>
                        <th>이름</th>
                        <th>주민번호</th>
                        <th>생년월일</th>
                        <th>이메일</th>
                        <th>전화번호</th>
                        <th>주소</th>
                        <th>성별</th>
                        <th>적립금</th>
                        <th>수정</th>
                        <th>삭제</th>
                    </tr>
                </thead>

                <%
		while(rs.next()){
			String id = rs.getString("uId"); 
    		String pw =  rs.getString("uPw");	
			String name = rs.getString("uName");
    		String joomin =  rs.getString("uJoomin");	
			Date birth = rs.getDate("uBirth");
    		String solar =  rs.getString("uSolar");	
			String email = rs.getString("uEmail");
			String phone = rs.getString("uPhone");
			String address1 = rs.getString("uAddress1");
			String address2 = rs.getString("uAddress2");
			String zipcode = rs.getString("uZipcode");
			String sex = rs.getString("uSex");
			int point =  rs.getInt("Point");		
%>
                <tbody>
                    <tr>
                        <td><a href="selectDetailMember.jsp?id=<%=id%>"><%=id%></a></td>
                        <td><%=pw%></td>
                        <td><%=name%></td>
                        <td><%=joomin%></td>
                        <td><%=birth%></td>
                        <td><%=email%></td>
                        <td><%=phone%></td>
                        <td><%=zipcode%><br><%=address1%>(<%=address2%>)</td>
                        <td><%=sex%></td>
                        <td><%=point%></td>
                        <td><a style = "color:blue;" href="update_ManagerUser.jsp?id=<%=id%>">Yes</a></td>
                        <td><a style = "color:red;" href="delete_ManagerUser.jsp?id=<%=id%>">Yes</a></td>
                    </tr>
                </tbody>


				<%
		}  // while문의 끝
%>
            </table>

            <a href="manager_main.jsp">
                <div class="btn">메인</div>
            </a> 

        </div>

    </section>




<%
    } catch (Exception e) {
      out.println(e);	
}
%>

    


    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo.png" width = "150" alt="" >
          <p class = "text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
        </p>
          <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       대표자 : 봉조율 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       전화번호 : 02-517-0912
        </p>
          <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
     </div>
    


    


</body>
</html>