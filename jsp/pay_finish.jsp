<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <script src="https://kit.fontawesome.com/21f77d5a02.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/pay_finish.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <title>�����Ϸ�</title>
  </head>

<%
   String myid = (String)session.getAttribute("sid");       
   Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy�� MM�� dd�� a hh:mm:ss");
   
%>


<body>




    <div class="top-wrap">
        <div class="top-box1 flex flex-jc-sb flex-ai-c">


                        	  <%
   if(myid == null) {

%>
            <ul class="icon-box">
                <li class="icon login">
                    <a href="login.jsp">
                        <div class="img-box">
                            <img src="img/login_icon.png" alt="">
                        </div>
                        login
                    </a>
                    <div class="line-icon"></div>
                </li>
                <li class="icon join">
                    <a href="join.jsp">
                        <div class="img-box">
                            <img src="img/join_icon.png" alt="">
                        </div>
                        join
                    </a>
                    <div class="line-icon"></div>
                </li>
                <li class="icon cart">
                    <a href="cart.jsp">
                        <div class="img-box">
                            <img src="img/cart_icon.png" alt="">
                        </div>
                        cart
                    </a>
                </li>
            </ul>
			<%
}
else{
%>

	<ul class="icon-box">
                <li class="icon login">
                    <a href="logout.jsp">
                        <div class="img-box" style= "margin-left: 3px;">
                            <img src="img/logout_icon.png" alt="">
                        </div>
                        logout
                    </a>
                    <div class="line-icon"></div>
                </li>
                <li class="icon join">
                    <a href="mypage.jsp">
                        <div class="img-box" style= "margin-left: 8px;">
                            <img src="img/join_icon.png" alt="">
                        </div>
                        mypage
                    </a>
                    <div class="line-icon"></div>
                </li>
                <li class="icon cart">
                    <a href="cart.jsp">
                        <div class="img-box">
                            <img src="img/cart_icon.png" alt="">
                        </div>
                        cart
                    </a>
                </li>
            </ul>

<%
}
%>
            <div class="logo-box flex flex-jc-c">
                <div class="img-box">
                    <a href="main.jsp">
                        <img src="img/logo.png" alt="">
                    </a>
                </div>
            </div>
            <div class="search_wrap">
                <form accept-charset="utf-8" name="search" class="search-box flex flex-jc-end"
                    method="get" action="search.jsp" onsubmit="return keyword_check()" autocomplete=off>
                    <td class="icon">
                        <input class="form" name="keyword" type="text" placeholder="�˻�� �Է����ּ���." >
                    </td>
                    <td class="schBtn">
                        <input type="image" src="img/Search_thin_icon.png" alt="�˻�" onsubmit="search_form()" style="width: 30px; height: 30px;">
                    </td>
                </form>
            </div>






        </div>
        <div class="line"></div>


         <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>�� �ɾ�</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">�ɾ� ������</a></li>
                            <li><a href="about_3.jsp">���ô±�</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>�� �ñ���</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">�� üũ</a></li>
							<li><a href="themore.jsp">�� ���</a></li>
                        </ul>
                    </div>
                </li>
               <!--  <li class="menu">
                    <a>������</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">�ȳ�/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li> -->
                <li class="menu">
                    <a>�ɾ����</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">�ȳ�/���</a></li>
                            <li><a href="change.jsp">����Ȯ��/����/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>�������</a>
                    <div>
                        <ul>
                            <li><a href="note.jsp">�����</a></li>
                            <li><a href="noti.jsp">��������</a></li>
                            <li><a href="event.jsp">�̺�Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>

        <div style="position: fixed; bottom:5%; right:3%;z-index:150;">
            
            <a href="new_view.jsp" alt="�ֱ� �� �ü�">
                <div style="border-radius:50%;z-index:150; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold; color: #fff;">�ֱٺ��ü�</p>
                </div>
            </a>
        </div>



<%


try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	request.setCharacterEncoding("euc-kr");


	String jsql = "select MAX(rezNo) from rez";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery(); 
	int oNum;
	if(rs.next())                        
		oNum = rs.getInt(1) + 1;  
	else                     
		oNum = 1;   

//	String opno = request.getParameter("opno");
	String prdno = request.getParameter("prdno");
	String rvprice = request.getParameter("sell6");
	String day1 = request.getParameter("day1");
	String date = request.getParameter("date");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String sex = request.getParameter("sex");
	String memo = request.getParameter("memo");
	String point = request.getParameter("sell3");
	String coupon = request.getParameter("coupon");



	
String jsql1= "SELECT * FROM user WHERE uId=?";
			PreparedStatement pstmt1 = con.prepareStatement(jsql1);
			pstmt1.setString(1, myid);

			ResultSet rs1 = pstmt1.executeQuery(); 
			rs1.next();

			int point1 = rs1.getInt("Point");
			int rvprice1 = Integer.parseInt(rvprice);

			int point2 = point1-Integer.parseInt(point);
			point2 = (int) point2 + (rvprice1/100);



String jsql5 = "UPDATE USER SET Point=? WHERE uId=?";
					PreparedStatement pstmt5 = con.prepareStatement(jsql5);
					pstmt5.setInt(1,point2);
					pstmt5.setString(2,myid);

					pstmt5.executeUpdate();





										if(coupon.equals("2000")) {

										String jsql2 = "UPDATE USER SET Coupon = REPLACE(Coupon, 'c01,' , '' ) WHERE uId=?;";   
										PreparedStatement pstmt2 = con.prepareStatement(jsql2);
										pstmt2.setString(1,myid);
	
										pstmt2.executeUpdate();

										} //if


										if(coupon.equals("5000")) {


										String jsql2 = "UPDATE USER SET Coupon = REPLACE(Coupon, 'c02,' ,'') WHERE uId=?;";   
										PreparedStatement pstmt2 = con.prepareStatement(jsql2);
										pstmt2.setString(1,myid);
	
										pstmt2.executeUpdate();


										} //if


										if(coupon.equals("10000")) {


										String jsql2 = "UPDATE USER SET Coupon = REPLACE(Coupon, 'c03,' ,'') WHERE uId=?;";   
										PreparedStatement pstmt2 = con.prepareStatement(jsql2);
										pstmt2.setString(1,myid);
	
										pstmt2.executeUpdate();


										} //if


										if(coupon.equals("30000")) {


										String jsql2 = "UPDATE USER SET Coupon = REPLACE(Coupon, 'c04,' ,'') WHERE uId=?;";   
										PreparedStatement pstmt2 = con.prepareStatement(jsql2);
										pstmt2.setString(1,myid);
	
										pstmt2.executeUpdate();

										} //if

										if(coupon.equals("20000")) {


										String jsql2 = "UPDATE USER SET Coupon = REPLACE(Coupon, 'c05,' ,'') WHERE uId=?;";   
										PreparedStatement pstmt2 = con.prepareStatement(jsql2);
										pstmt2.setString(1,myid);
	
										pstmt2.executeUpdate();


										} //if









	%>







		<div class="finish">
			<div class="icon">
				<i class="fa-solid fa-circle-check"></i>
			</div>
			  <h1>������ �Ϸ�Ǿ����ϴ� !</h1>
			  <p>
					�������ּż� ����� �����մϴ� ! <br>
					�� ���� ���񽺷� �����ϰڽ��ϴ�.
			  </p>
			  <div class="btn">
				<a href="change.jsp">���� ���� ��������</a>
			  </div>
		</div>


		
		<%

    } catch(Exception e) {
		out.println(e);
}

%>


		<div class="footer flex flex-jc-c">
            <div class="text">
                <img src="./img/logo.png" width = "150" alt="" style="margin-bottom: 20px;">
              <p class = "text1">��ȣ�� : ���ɾ��Ǻΰ� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   �ּ� : ����Ư���� ���ʱ� ������� 439 ( ��Ƽ���� 4�� )
            </p>
              <p>����ڵ�Ϲ�ȣ : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       ��ǥ�� : ������ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       ��ȭ��ȣ : 02-517-0912
            </p>
              <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
            </div>
         </div>



  </body>

  </html>
  