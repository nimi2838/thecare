<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="css/manager_procedure.css" />
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
            <h1 class="title">시술관리</h1>

            <div class="wrap">

                <div class="titleArea">
                    <h2>전체 시술 조회</h2>
                    <div class="new">
                        <a href="insertsurgery.jsp">
                            <img src="img/manager-plus.png" alt="" width="30px" height="30px">
                            <p>시술등록</p>
                        </a>
                    </div>
                </div>
            </div>
			<div class="container">
			  <ul class="tabs flex">
				<li class="tab-link current" data-tab="tab-1">이름순</li>
				<li class="tab-link" data-tab="tab-2">시술번호순</li>
			  </ul>

            <table>
                <thead>
                    <tr>
                        <th>카테고리</th>
                        <th>시술번호</th>
                        <th>시술이름</th>
						<th>시술옵션</th>
                        <th>시술가격</th>
						<th>수정</th>
						<th>삭제</th>
                    </tr>
                </thead>
                
                <tbody id="tab-0" class="tab-content current">
                   <%
	String jsql = "select * from surgery where prdNo NOT like 'aa'";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery();
	while(rs.next()) {

			String ctgType =  rs.getString("ctgType");	
			String prdNo =  rs.getString("prdNo");
			String prdName =  rs.getString("prdName");	
			String startprice =  rs.getString("startprice");	

			%>
						<%
							String jsql1 = "select * from soption where prdNo = ?";   
								PreparedStatement pstmt1 = con.prepareStatement(jsql1);
								pstmt1.setString(1, prdNo);
								
								ResultSet rs1 = pstmt1.executeQuery();
								
							while(rs1.next()) {

								String opname = rs1.getString("opName");
								String opno = rs1.getString("opNo");
								String opprice = rs1.getString("opPrice");
							%>
								
                    <tr>
                        <td><%=ctgType%></td>
						<td><%=prdNo%></td>
                        <td><%=prdName%></td>
						<td><%=opname%></td>
                        <td><%=opprice%>원</td>
						<td><a style = "color:blue;" href="update_Managersurgery.jsp?prdNo=<%=prdNo%>&opNo=<%=opno%>">Yes</a></td>
                         <td><a style = "color:red; cursor: pointer;" href="delete_Managersurgery_1.jsp?prdNo=<%=prdNo%>&opNo=<%=opno%>">Yes</a></td>
                    </tr>
					<%
		}  
	}// while문의 끝
%>
                </tbody>




				 <tbody id="tab-1" class="tab-content">
								   <%
					String jsql2 = "SELECT * FROM surgery WHERE prdNo NOT LIKE 'aa' ORDER BY prdName ASC";   
					PreparedStatement pstmt2 = con.prepareStatement(jsql2);

					ResultSet rs2 = pstmt2.executeQuery();
					while(rs2.next()) {

							String ctgType =  rs2.getString("ctgType");	
							String prdNo =  rs2.getString("prdNo");
							String prdName =  rs2.getString("prdName");	
							String startprice =  rs2.getString("startprice");	

							%>
										<%
											String jsql3 = "select * from soption where prdNo = ?";   
												PreparedStatement pstmt3 = con.prepareStatement(jsql3);
												pstmt3.setString(1, prdNo);
												
												ResultSet rs3 = pstmt3.executeQuery();
												
											while(rs3.next()) {

												String opname = rs3.getString("opName");
												String opno = rs3.getString("opNo");
												String opprice = rs3.getString("opPrice");
											%>
												
									<tr>
										<td><%=ctgType%></td>
										<td><%=prdNo%></td>
										<td><%=prdName%></td>
										<td><%=opname%></td>
										<td><%=opprice%>원</td>
										<td><a style = "color:blue;" href="update_Managersurgery.jsp?prdNo=<%=prdNo%>&opNo=<%=opno%>">Yes</a></td>
										 <td><a style = "color:red; cursor: pointer;" onclick="real()">Yes</a></td>
									</tr>
									<%
						}  
					}// while문의 끝
				%>
                </tbody>



				<tbody id="tab-2" class="tab-content">
                   <%
	String jsql4 = "select * from surgery where prdNo NOT like 'aa' order by prdNo asc";   
	PreparedStatement pstmt4 = con.prepareStatement(jsql4);

	ResultSet rs4 = pstmt4.executeQuery();
	while(rs4.next()) {

			String ctgType =  rs4.getString("ctgType");	
			String prdNo =  rs4.getString("prdNo");
			String prdName =  rs4.getString("prdName");	
			String startprice =  rs4.getString("startprice");	

			%>
						<%
							String jsql5 = "select * from soption where prdNo = ?";   
								PreparedStatement pstmt5 = con.prepareStatement(jsql5);
								pstmt5.setString(1, prdNo);
								
								ResultSet rs5 = pstmt5.executeQuery();
								
							while(rs5.next()) {

								String opname = rs5.getString("opName");
								String opno = rs5.getString("opNo");
								String opprice = rs5.getString("opPrice");
							%>
								
                    <tr>
                        <td><%=ctgType%></td>
						<td><%=prdNo%></td>
                        <td><%=prdName%></td>
						<td><%=opname%></td>
                        <td><%=opprice%>원</td>
						<td><a style = "color:blue;" href="update_Managersurgery.jsp?prdNo=<%=prdNo%>&opNo=<%=opno%>">Yes</a></td>
                         <td><a style = "color:red; cursor: pointer;" onclick="real()">Yes</a></td>
                    </tr>
					<%
		}  
	}// while문의 끝
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