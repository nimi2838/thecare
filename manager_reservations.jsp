<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="css/manager_reservations.css" />
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
	
	request.setCharacterEncoding("euc-kr");



%>




    <section id="content" >
        <div class="inner">
            <h1 class="title">예약관리</h1>

            <div class="wrap">

                <div class="titleArea">
                    <h2>전체 예약 조회</h2>
                </div>
            </div>
<div class="container">
  <ul class="tabs flex">
    <li class="tab-link current" data-tab="tab-1">이름순</li>
    <li class="tab-link" data-tab="tab-2">아이디순</li>
    <li class="tab-link" data-tab="tab-3">결제순</li>
  </ul>



            <table>
                <thead>
                    <tr>
                        <th>예약번호</th>
						<th>예약아이디</th>
                        <th>예약자</th>
						<th>연락처</th>
                        <th>예약일자</th>
                        <th>시술정보</th>
						<th>시술가격</th>
						<th>결제일자</th>
                        <th>요청사항</th>
						<th>수정</th>
						<th>삭제</th>
                    </tr>
                </thead>
                
                
              <tbody id="tab-0" class="tab-content current">
			  <%
	String jsql = "select * from rezinfo";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery();
	while(rs.next()) {

			String rezNo =  rs.getString("rezNo");	
			String uId =  rs.getString("uId");
			String ordDate =  rs.getString("ordDate");	
			String ordCustomer =  rs.getString("ordCustomer");	
			String ordPhone =  rs.getString("ordPhone");	
			String ordPay =  rs.getString("ordPay");	
			String ordSex =  rs.getString("ordSex");	
			String ordBank =  rs.getString("ordBank");
			String ordMemo =  rs.getString("ordMemo");

			String jsql1 = "select * from rez";   
			PreparedStatement pstmt1 = con.prepareStatement(jsql1);

			ResultSet rs1 = pstmt1.executeQuery();
			rs1.next();

			String rezNo1 =  rs1.getString("rezNo");	
	//		String prdNo =  rs1.getString("prdNo");	
	//		String rezDate =  rs1.getString("rezDate");	


				  %>
                    <tr>
                        <td><%=rezNo%></td>
						<td><%=uId%></td>
                        <td><%=ordCustomer%></td>
                        <td><%=ordPhone%></td>
						<%
				String jsql2= "SELECT * FROM rez WHERE rezNo=?";
						PreparedStatement pstmt2 = con.prepareStatement(jsql2);
						pstmt2.setString(1, rezNo);

						ResultSet rs2 = pstmt2.executeQuery();	
						rs2.next();

						Timestamp rezDate = rs2.getTimestamp("rezDate");
						String prdNo = rs2.getString("prdNo");

						String curDate = rezDate.toLocaleString();

						
						String jsql7= "SELECT * FROM surgery WHERE prdNo=?";
						PreparedStatement pstmt7 = con.prepareStatement(jsql7);
						pstmt7.setString(1, prdNo);

						ResultSet rs7 = pstmt7.executeQuery();	
						rs7.next();

						String prdName = rs7.getString("prdName");
				  %>
						<td><%=curDate%></td>
                        <td class="opname">
						<%
					  String jsql6= "SELECT * FROM rez WHERE rezNo=?";
						PreparedStatement pstmt6 = con.prepareStatement(jsql6);
						pstmt6.setString(1, rezNo);

						ResultSet rs6 = pstmt6.executeQuery();	
						while(rs6.next()) {
							String opNo = rs6.getString("opNo");


						String jsql8= "SELECT * FROM soption WHERE opNo=?";
						PreparedStatement pstmt8 = con.prepareStatement(jsql8);
						pstmt8.setString(1, opNo);

						ResultSet rs8 = pstmt8.executeQuery();	
						rs8.next();

						String opName = rs8.getString("opName");

							
					  %>
					  <%=prdName%>(<%=opName%>) <br>
					  <%
						  }
					  %></td>
					  <td><%=ordPay%></td>
					  <td><%=ordDate.substring(0,14)%></td>
                        <td><%=ordMemo%></td>
						<td><a style = "color:blue;" href="update_ManagerRez.jsp?rezNo=<%=rezNo%>">Yes</a></td>
                        <td><a style = "color:red;"  href="delete_ManagerRez_1.jsp?rezNo=<%=rezNo%>">Yes</a></td>
                    </tr>

					<%
	}
				  %>
                </tbody>



 <tbody id="tab-1" class="tab-content">
			  <%
	String jsql20 = "select * from rezinfo order by ordCustomer asc";   
	PreparedStatement pstmt20 = con.prepareStatement(jsql20);

	ResultSet rs20 = pstmt20.executeQuery();
	while(rs20.next()) {

			String rezNo =  rs20.getString("rezNo");	
			String uId =  rs20.getString("uId");
			String ordDate =  rs20.getString("ordDate");	
			String ordCustomer =  rs20.getString("ordCustomer");	
			String ordPhone =  rs20.getString("ordPhone");	
			String ordPay =  rs20.getString("ordPay");	
			String ordSex =  rs20.getString("ordSex");	
			String ordBank =  rs20.getString("ordBank");
			String ordMemo =  rs20.getString("ordMemo");

			String jsql21 = "select * from rez";   
			PreparedStatement pstmt21 = con.prepareStatement(jsql21);

			ResultSet rs21 = pstmt21.executeQuery();
			rs21.next();

			String rezNo1 =  rs21.getString("rezNo");	
	//		String prdNo =  rs1.getString("prdNo");	
	//		String rezDate =  rs1.getString("rezDate");	


				  %>
                    <tr>
                        <td><%=rezNo%></td>
						<td><%=uId%></td>
                        <td><%=ordCustomer%></td>
                        <td><%=ordPhone%></td>
						<%
				String jsql22= "SELECT * FROM rez WHERE rezNo=?";
						PreparedStatement pstmt22 = con.prepareStatement(jsql22);
						pstmt22.setString(1, rezNo);

						ResultSet rs22 = pstmt22.executeQuery();	
						rs22.next();

						Timestamp rezDate = rs22.getTimestamp("rezDate");
						String prdNo = rs22.getString("prdNo");

						String curDate = rezDate.toLocaleString();

						
						String jsql23= "SELECT * FROM surgery WHERE prdNo=?";
						PreparedStatement pstmt23 = con.prepareStatement(jsql23);
						pstmt23.setString(1, prdNo);

						ResultSet rs23 = pstmt23.executeQuery();	
						rs23.next();

						String prdName = rs23.getString("prdName");
				  %>
						<td><%=curDate%></td>
                        <td class="opname">
						<%
					  String jsql24= "SELECT * FROM rez WHERE rezNo=?";
						PreparedStatement pstmt24 = con.prepareStatement(jsql24);
						pstmt24.setString(1, rezNo);

						ResultSet rs24 = pstmt24.executeQuery();	
						while(rs24.next()) {
							String opNo = rs24.getString("opNo");


						String jsql25= "SELECT * FROM soption WHERE opNo=?";
						PreparedStatement pstmt25 = con.prepareStatement(jsql25);
						pstmt25.setString(1, opNo);

						ResultSet rs25 = pstmt25.executeQuery();	
						rs25.next();

						String opName = rs25.getString("opName");

							
					  %>
					  <%=prdName%>(<%=opName%>) <br>
					  <%
						  }
					  %></td>
					  <td><%=ordPay%></td>
					  <td><%=ordDate.substring(0,14)%></td>
                        <td><%=ordMemo%></td>
						<td><a style = "color:blue;" href="update_ManagerRez.jsp?rezNo=<%=rezNo%>">Yes</a></td>
                        <td><a style = "color:red;"  href="delete_ManagerRez_1.jsp?rezNo=<%=rezNo%>">Yes</a></td>
                    </tr>

					<%
	}
				  %>
                </tbody>




				 <tbody id="tab-2" class="tab-content">
			  <%
	String jsql3 = "select * from rezinfo order by uId asc";   
	PreparedStatement pstmt3 = con.prepareStatement(jsql3);

	ResultSet rs3 = pstmt3.executeQuery();
	while(rs3.next()) {

			String rezNo =  rs3.getString("rezNo");	
			String uId =  rs3.getString("uId");
			String ordDate =  rs3.getString("ordDate");	
			String ordCustomer =  rs3.getString("ordCustomer");	
			String ordPhone =  rs3.getString("ordPhone");	
			String ordPay =  rs3.getString("ordPay");	
			String ordSex =  rs3.getString("ordSex");	
			String ordBank =  rs3.getString("ordBank");
			String ordMemo =  rs3.getString("ordMemo");

			String jsql4 = "select * from rez";   
			PreparedStatement pstmt4 = con.prepareStatement(jsql4);

			ResultSet rs4 = pstmt4.executeQuery();
			rs4.next();

			String rezNo1 =  rs4.getString("rezNo");	
	//		String prdNo =  rs1.getString("prdNo");	
	//		String rezDate =  rs1.getString("rezDate");	


				  %>
                    <tr>
                        <td><%=rezNo%></td>
						<td><%=uId%></td>
                        <td><%=ordCustomer%></td>
                        <td><%=ordPhone%></td>
						<%
				String jsql5= "SELECT * FROM rez WHERE rezNo=?";
						PreparedStatement pstmt5 = con.prepareStatement(jsql5);
						pstmt5.setString(1, rezNo);

						ResultSet rs5 = pstmt5.executeQuery();	
						rs5.next();

						Timestamp rezDate = rs5.getTimestamp("rezDate");
						String prdNo = rs5.getString("prdNo");

						String curDate = rezDate.toLocaleString();

						
						String jsql9= "SELECT * FROM surgery WHERE prdNo=?";
						PreparedStatement pstmt9 = con.prepareStatement(jsql9);
						pstmt9.setString(1, prdNo);

						ResultSet rs9 = pstmt9.executeQuery();	
						rs9.next();

						String prdName = rs9.getString("prdName");
				  %>
						<td><%=curDate%></td>
                        <td class="opname">
						<%
					  String jsql10= "SELECT * FROM rez WHERE rezNo=?";
						PreparedStatement pstmt10 = con.prepareStatement(jsql10);
						pstmt10.setString(1, rezNo);

						ResultSet rs10 = pstmt10.executeQuery();	
						while(rs10.next()) {
							String opNo = rs10.getString("opNo");


						String jsql11= "SELECT * FROM soption WHERE opNo=?";
						PreparedStatement pstmt11 = con.prepareStatement(jsql11);
						pstmt11.setString(1, opNo);

						ResultSet rs11 = pstmt11.executeQuery();	
						rs11.next();

						String opName = rs11.getString("opName");

							
					  %>
					  <%=prdName%>(<%=opName%>) <br>
					  <%
						  }
					  %></td>
					  <td><%=ordPay%></td>
					  <td><%=ordDate.substring(0,14)%></td>
                        <td><%=ordMemo%></td>
						<td><a style = "color:blue;" href="update_ManagerRez.jsp?rezNo=<%=rezNo%>">Yes</a></td>
                        <td><a style = "color:red;"  href="delete_ManagerRez_1.jsp?rezNo=<%=rezNo%>">Yes</a></td>
                    </tr>

					<%
	}
				  %>
                </tbody>


				 <tbody id="tab-3" class="tab-content">
			  <%
	String jsql12 = "select * from rezinfo order by ordDate asc";   
	PreparedStatement pstmt12 = con.prepareStatement(jsql12);

	ResultSet rs12 = pstmt12.executeQuery();
	while(rs12.next()) {


			String rezNo =  rs12.getString("rezNo");	
			String uId =  rs12.getString("uId");
			String ordDate =  rs12.getString("ordDate");	
			String ordCustomer =  rs12.getString("ordCustomer");	
			String ordPhone =  rs12.getString("ordPhone");	
			String ordPay =  rs12.getString("ordPay");	
			String ordSex =  rs12.getString("ordSex");	
			String ordBank =  rs12.getString("ordBank");
			String ordMemo =  rs12.getString("ordMemo");


			String jsql13 = "select * from rez";   
			PreparedStatement pstmt13 = con.prepareStatement(jsql13);

			ResultSet rs13 = pstmt13.executeQuery();
			rs13.next();

			String rezNo1 =  rs13.getString("rezNo");	
	//		String prdNo =  rs1.getString("prdNo");	
	//		String rezDate =  rs1.getString("rezDate");	


				  %>
                    <tr>
                        <td><%=rezNo%></td>
						<td><%=uId%></td>
                        <td><%=ordCustomer%></td>
                        <td><%=ordPhone%></td>
						<%
				String jsql14= "SELECT * FROM rez WHERE rezNo=?";
						PreparedStatement pstmt14 = con.prepareStatement(jsql14);
						pstmt14.setString(1, rezNo);

						ResultSet rs14 = pstmt14.executeQuery();	
						rs14.next();

						Timestamp rezDate = rs14.getTimestamp("rezDate");
						String prdNo = rs14.getString("prdNo");

						String curDate = rezDate.toLocaleString();

						
						String jsql15= "SELECT * FROM surgery WHERE prdNo=?";
						PreparedStatement pstmt15 = con.prepareStatement(jsql15);
						pstmt15.setString(1, prdNo);

						ResultSet rs15 = pstmt15.executeQuery();	
						rs15.next();

						String prdName = rs15.getString("prdName");
				  %>
						<td><%=curDate%></td>
                        <td class="opname">
						<%
					  String jsql16= "SELECT * FROM rez WHERE rezNo=?";
						PreparedStatement pstmt16 = con.prepareStatement(jsql16);
						pstmt16.setString(1, rezNo);

						ResultSet rs16 = pstmt16.executeQuery();	
						while(rs16.next()) {
							String opNo = rs16.getString("opNo");


						String jsql17= "SELECT * FROM soption WHERE opNo=?";
						PreparedStatement pstmt17 = con.prepareStatement(jsql17);
						pstmt17.setString(1, opNo);

						ResultSet rs17 = pstmt17.executeQuery();	
						rs17.next();

						String opName = rs17.getString("opName");

							
					  %>
					  <%=prdName%>(<%=opName%>) <br>
					  <%
						  }
					  %></td>
					  <td><%=ordPay%></td>
					  <td><%=ordDate.substring(0,14)%></td>
                        <td><%=ordMemo%></td>
						<td><a style = "color:blue;" href="update_ManagerRez.jsp?rezNo=<%=rezNo%>">Yes</a></td>
                        <td><a style = "color:red;"  href="delete_ManagerRez_1.jsp?rezNo=<%=rezNo%>">Yes</a></td>
                    </tr>

					<%
	}
				  %>
                </tbody>


            </table>

			</div>  

            <a href="manager_main.jsp">
                <div class="btn">메인</div>
            </a> 


        </div> <!-- <div class="container"> -->
    </section>

	





    


	<%
    } 
catch(Exception e) {
		out.println(e);
}
%>







    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo-ft.png" width="150" alt="" style="margin-bottom: 20px;">
            <p class="text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
            </p>
            <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 대표자 : 봉조율
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 전화번호 : 02-517-0912
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