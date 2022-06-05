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


<div class="container">
			  <ul class="tabs flex">
				<li class="tab-link current" data-tab="tab-1">이름순</li>
				<li class="tab-link" data-tab="tab-2">나이순</li>
				<li class="tab-link" data-tab="tab-3">아이디순</li>
			  </ul>

            <table>
                <thead>
                    <tr>
                        <th>아이디</th>
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
				
                
                <tbody id="tab-0" class="tab-content current">
				<%
			 String jsql = "select * from user";   
	         PreparedStatement  pstmt = con.prepareStatement(jsql);
	         ResultSet  rs = pstmt.executeQuery();

		while(rs.next()){
			String id = rs.getString("uId"); 
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

                    <tr>
                        <td><%=id%></a></td>
                        <td><%=name%></td>
                        <td><%=joomin%></td>
                        <td><%=birth%></td>
                        <td><%=email%></td>
                        <td><%=phone%></td>
                        <td><%=zipcode%><br><%=address1%>(<%=address2%>)</td>
                        <td><%=sex%></td>
                        <td><%=point%>원</td>
                        <td><a style = "color:blue;" href="update_ManagerUser.jsp?id=<%=id%>">Yes</a></td>
                        <td><a style = "color:red; cursor: pointer;" href="delete_ManagerUser_1.jsp?uId=<%=id%>">Yes</a></td>
                    </tr>

					
               

				<%
		}  // while문의 끝
%>

	 </tbody>

	 <tbody id="tab-1" class="tab-content">
				<%
			 String jsql1 = "SELECT * FROM USER ORDER BY uName ASC";   
	         PreparedStatement  pstmt1 = con.prepareStatement(jsql1);
	         ResultSet rs1 = pstmt1.executeQuery();

		while(rs1.next()){
			String id = rs1.getString("uId"); 
			String name = rs1.getString("uName");
    		String joomin =  rs1.getString("uJoomin");	
			Date birth = rs1.getDate("uBirth");
    		String solar =  rs1.getString("uSolar");	
			String email = rs1.getString("uEmail");
			String phone = rs1.getString("uPhone");
			String address1 = rs1.getString("uAddress1");
			String address2 = rs1.getString("uAddress2");
			String zipcode = rs1.getString("uZipcode");
			String sex = rs1.getString("uSex");
			int point =  rs1.getInt("Point");		
%>

                    <tr>
                        <td><%=id%></a></td>
                        <td><%=name%></td>
                        <td><%=joomin%></td>
                        <td><%=birth%></td>
                        <td><%=email%></td>
                        <td><%=phone%></td>
                        <td><%=zipcode%><br><%=address1%>(<%=address2%>)</td>
                        <td><%=sex%></td>
                        <td><%=point%>원</td>
                        <td><a style = "color:blue;" href="update_ManagerUser.jsp?id=<%=id%>">Yes</a></td>
                        <td><a style = "color:red; cursor: pointer;"  href="delete_ManagerUser_1.jsp?uId=<%=id%>">Yes</a></td>
                    </tr>
               
			   
         


				<%
		}  // while문의 끝
%>

	 </tbody>

	 <tbody id="tab-2" class="tab-content">
				<%
			 String jsql2 = "SELECT * FROM USER ORDER BY uBirth ASC;";   
	         PreparedStatement  pstmt2 = con.prepareStatement(jsql2);
	         ResultSet  rs2 = pstmt2.executeQuery();

		while(rs2.next()){
			String id = rs2.getString("uId"); 
			String name = rs2.getString("uName");
    		String joomin =  rs2.getString("uJoomin");	
			Date birth = rs2.getDate("uBirth");
    		String solar =  rs2.getString("uSolar");	
			String email = rs2.getString("uEmail");
			String phone = rs2.getString("uPhone");
			String address1 = rs2.getString("uAddress1");
			String address2 = rs2.getString("uAddress2");
			String zipcode = rs2.getString("uZipcode");
			String sex = rs2.getString("uSex");
			int point =  rs2.getInt("Point");		
%>

                    <tr>
                        <td><%=id%></a></td>
                        <td><%=name%></td>
                        <td><%=joomin%></td>
                        <td><%=birth%></td>
                        <td><%=email%></td>
                        <td><%=phone%></td>
                        <td><%=zipcode%><br><%=address1%>(<%=address2%>)</td>
                        <td><%=sex%></td>
                        <td><%=point%>원</td>
                        <td><a style = "color:blue;" href="update_ManagerUser.jsp?id=<%=id%>">Yes</a></td>
                        <td><a style = "color:red; cursor: pointer;" href="delete_ManagerUser_1.jsp?uId=<%=id%>">Yes</a></td>
                    </tr>
               



				<%
		}  // while문의 끝
%>

	 </tbody>


	 <tbody id="tab-3" class="tab-content">
				<%
			 String jsql3 = "SELECT * FROM USER ORDER BY uId ASC;";   
	         PreparedStatement  pstmt3 = con.prepareStatement(jsql3);
	         ResultSet  rs3 = pstmt3.executeQuery();

		while(rs3.next()){
			String id = rs3.getString("uId"); 
			String name = rs3.getString("uName");
    		String joomin =  rs3.getString("uJoomin");	
			Date birth = rs3.getDate("uBirth");
    		String solar =  rs3.getString("uSolar");	
			String email = rs3.getString("uEmail");
			String phone = rs3.getString("uPhone");
			String address1 = rs3.getString("uAddress1");
			String address2 = rs3.getString("uAddress2");
			String zipcode = rs3.getString("uZipcode");
			String sex = rs3.getString("uSex");
			int point =  rs3.getInt("Point");		
%>

                    <tr>
                        <td><%=id%></a></td>
                        <td><%=name%></td>
                        <td><%=joomin%></td>
                        <td><%=birth%></td>
                        <td><%=email%></td>
                        <td><%=phone%></td>
                        <td><%=zipcode%><br><%=address1%>(<%=address2%>)</td>
                        <td><%=sex%></td>
                        <td><%=point%>원</td>
                        <td><a style = "color:blue;" href="update_ManagerUser.jsp?id=<%=id%>">Yes</a></td>
                        <td><a style = "color:red; cursor: pointer;" href="delete_ManagerUser_1.jsp?uId=<%=id%>">Yes</a></td>
                    </tr>

					

               

				<%
		}  // while문의 끝
%>

	 </tbody>


            </table>

			</div>

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
            <img src="./img/logo-ft.png" width = "150" alt="" >
          <p class = "text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
        </p>
          <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       대표자 : 봉조율 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       전화번호 : 02-517-0912
        </p>
          <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
     </div>
    


<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>
<script src="https://kit.fontawesome.com/58c5940c20.js" crossorigin="anonymous"></script>



    <script>

		

		$(document).ready(function(){
  
  $('ul.tabs li').click(function(){
    var tab_id = $(this).attr('data-tab');

    $('ul.tabs li').removeClass('current');
    $('.tab-content').removeClass('current');

    $(this).addClass('current');
    $("#"+tab_id).addClass('current');
  })

})






    </script>
    


</body>
</html>