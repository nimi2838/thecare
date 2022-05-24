<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <link rel="stylesheet" href="css/rez.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
 <script src="cal.js"></script>
  <title>�ü�����</title>
  
<script>






    </script>
</head>
<%
DecimalFormat df = new DecimalFormat("###,###");
%>
<%
   String myid = (String)session.getAttribute("sid");         
   
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
                        <a href="#" onclick="login();">
                            <div class="img-box">
                                <img src="img/cart_icon.png" alt="">
                            </div>
                            cart
                        </a>
                    </li>
                </ul>
		

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
                            <li><a href="#" onclick="login();">�� üũ</a></li>
							<li><a href="themore.jsp">�� ���</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ɾ����</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">�ȳ�/���</a></li>
                            <li><a href="#" onclick="login();">����Ȯ��/����/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>�������</a>
                    <div>
                        <ul>
                            <li><a href="#" onclick="login();">�����</a></li>
                            <li><a href="noti.jsp">��������</a></li>
                            <li><a href="event.jsp">�̺�Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>


<!-- ����Ϸ� -->
           <header id="header">
            <div class="inner">
                <div class="logo-box flex">
                    <div class="img-box">
                        <a href="main.jsp">
                            <img src="img/logo.png" alt="" width="150px">
                        </a>
                    </div>
    
                    <button class="toggle"><i class="fa-solid fa-bars"></i></button>
                </div>
    
                <nav class="gnb_wrap">
                    <div class="search_wrap">
                        <form accept-charset="utf-8" name="search" class="search-box flex"
                            method="get" action="search.jsp" onsubmit="return keyword_check()" autocomplete=off>
                            <td class="icon">
                                <input class="form" name="keyword" type="text" placeholder="�˻�� �Է����ּ���." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="�˻�" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">�� �ɾ��</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">�ɾ� ������</a></li>
                                        <li><a href="about_3.jsp">���ô±�</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�� �ñ���</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">�� üũ</a></li>
                                        <li><a href="themore.jsp">�� ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�ɾ����</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">�ȳ�/���</a></li>
                                        <li><a href="#" onclick="login();">����Ȯ��/����/���</a></li>
                                        <li><a href="review.jsp">���Ļ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�������</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">�����</a></li>
                                        <li><a href="noti.jsp">��������</a></li>
                                        <li><a href="event.jsp">�̺�Ʈ</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        
                    </ul>
                    
                   
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
                        <a href="#" onclick="login();">
                            <div class="img-box">
                                <img src="img/cart_icon.png" alt="">
                            </div>
                            cart
                        </a>
                    </li>
                </ul>
                </nav>
            </div>
            
            <div class="line"></div>
        </header>
           



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





	
           <!-- ����Ϸ� -->
           <header id="header">
            <div class="inner">
                <div class="logo-box flex">
                    <div class="img-box">
                        <a href="main.jsp">
                            <img src="img/logo.png" alt="" width="150px">
                        </a>
                    </div>
    
                    <button class="toggle"><i class="fa-solid fa-bars"></i></button>
                </div>
    
                <nav class="gnb_wrap">
                    <div class="search_wrap">
                        <form accept-charset="utf-8" name="search" class="search-box flex"
                            method="get" action="search.jsp" onsubmit="return keyword_check()" autocomplete=off>
                            <td class="icon">
                                <input class="form" name="keyword" type="text" placeholder="�˻�� �Է����ּ���." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="�˻�" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">�� �ɾ��</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">�ɾ� ������</a></li>
                                        <li><a href="about_3.jsp">���ô±�</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�� �ñ���</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="custom.jsp">�� üũ</a></li>
                                        <li><a href="themore.jsp">�� ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�ɾ����</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">�ȳ�/���</a></li>
                                        <li><a href="change.jsp">����Ȯ��/����/���</a></li>
                                        <li><a href="review.jsp">���Ļ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�������</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="note.jsp">�����</a></li>
                                        <li><a href="noti.jsp">��������</a></li>
                                        <li><a href="event.jsp">�̺�Ʈ</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        
                    </ul>
                    
                   
                <ul class="icon-box">
                    <li class="icon login">
                        <a href="logout.jsp">
                            <div class="img-box">
                                <img src="img/logout_icon.png" alt="">
                            </div>
                            logout
                        </a>
                        <div class="line-icon"></div>
                    </li>
                    <li class="icon join">
                        <a href="mypage.jsp">
                            <div class="img-box">
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
                </nav>
            </div>
            
            <div class="line"></div>
        </header>



<%
}
%>
      




        <div style="position: fixed; bottom:5%; right:3%;z-index:150;">
            <a alt="�� ����" class="moveTopBtn">
                <div  style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="�ֱ� �� �ü�">
                <div style="border-radius:50%;z-index:150; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">�ֱٺ��ü�</p>
                </div>
            </a>
        </div>



	
<div class = "contents">
<div class = "inner">


			<div class = "tit" ><h1 style = "font-size: 33px;">�ü�����</h1></div>
    <div class="no_box" style=" margin: 20px auto 0px;">
<%
 try{
 	 String DB_URL="jdbc:mysql://localhost:3306/care?characterEncoding=euckr";   
     String DB_ID="skin";  
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String ctNo = session.getId(); 

	

			

 int total=0;

			String jsql8 = "SELECT * FROM gocart";
			PreparedStatement pstmt8 = con.prepareStatement(jsql8);

			ResultSet rs8 = pstmt8.executeQuery();
			if(rs8.next()) {

				String jsql5= "SELECT * FROM gocart WHERE ctNo=?";
			PreparedStatement pstmt5 = con.prepareStatement(jsql5);
			pstmt5.setString(1, ctNo);

			ResultSet rs5 = pstmt5.executeQuery(); 
			while(rs5.next()){
			
			String merchant_uid = rs5.getString("merchant_uid"); 
			String opNo = rs5.getString("opNo"); 
			String prdNo = rs5.getString("prdNo"); 


					String jsql4= "SELECT * FROM surgery WHERE prdNo=?";
					PreparedStatement pstmt4 = con.prepareStatement(jsql4);
					pstmt4.setString(1, prdNo);

					ResultSet rs4 = pstmt4.executeQuery(); 
					rs4.next();

					String name = rs4.getString("prdName"); 
					String price = rs4.getString("startprice"); 

					String jsql3= "SELECT * FROM soption WHERE opNo=?";
					PreparedStatement pstmt3 = con.prepareStatement(jsql3);
					pstmt3.setString(1, opNo);

					ResultSet rs3 = pstmt3.executeQuery(); 
					rs3.next();

					String opname = rs3.getString("opName"); 
					int opprice = rs3.getInt("opPrice"); 

					total = total + opprice;
			%>

				
        
    		<div class="search_box">
            <div class="search1">
			<a href="sub_<%=prdNo%>.jsp?prdNo=<%=prdNo%>" class="search_a">
                <h2><%=name%></h2>
                <p><%=opname%></p>
				</a>
            </div>
            <div class="search2">
                <div class="price">
                    <span><%=df.format(opprice) %></span>��
                </div>
				<a href=deletegocart.jsp?prdNo=<%=prdNo%>&opNo=<%=opNo%> class="btn" style="border: none; background:none;">���</a>
            </div>
			</div>
    			
	<%} //while

	%>

		

		<%

		} else {
			%>

			<div class="icon" style="width: max-content; margin: 0 auto; padding-top: 20px;">
			    		<i class="fa-solid fa-circle-exclamation" style="font-size:150px; color: #999999; margin:0 auto 50px;"></i>
			    		</div>
			    		<p class="title" style="text-align:center; font-size: 30px; font-weight:bold; color:#c5c5c5; margin:0 0 100px;">�ֹ��� ��ǰ�� �����ϴ�.</p>
			    			<div style="margin: 50px auto 60px; width: max-content;">
			    			<a href="guide.jsp" style="text-align:center; font-size: 25px; background: #999999; width:100%; padding: 25px 125px; color:#fff; font-weight: bold; margin: 0 auto;">�ü� ������ ����</a>
			    			</div>

				<%

								}	//if-else gocart �ȿ� ������
				 
		
			

				%>

		

    </div>
<hr>




<form name="res" method=post onSubmit="return false;">
<table class="scriptCalendar" style = "float: left;">
    <thead > 
        <tr>
            <td onClick="prevCalendar();" style="cursor:pointer;">&#60;&#60;</td>
            <td colspan="5">
                <span id="calYear">YYYY</span>��
                <span id="calMonth">MM</span>��
            </td>
            <td onClick="nextCalendar();" style="cursor:pointer;">&#62;&#62;</td>
        </tr>
        <tr>
            <td>��</td><td>��</td><td>ȭ</td><td>��</td><td>��</td><td>��</td><td>��</td>
        </tr>
    </thead>
    <tbody></tbody>
</table>



<div class="BookingTimeArea" alt="����ð�">
												
						<ul class="List">
							<li>
								<label class = "btns">10:00</label></li>
							
							
														<li>
								<label  class = "btns">10:30</label>
							</li>
							
														<li>
								<label class = "btns">11:00</label>
							</li>
							
							
														<li>
								<label class = "btns">11:30</label>
							</li>
							
							
								
														
														<li>
								<label class = "btns">12:00</label>
							</li>
							
							
														<li>
								<label class = "btns">12:30</label>
							</li>
							
							
														<li>
								<label class = "btns">13:00</label>
							</li>
							
							
														<li>
								<label class = "btns">13:30</label>
							</li>
							
							
														<li>
								<label class = "btns">14:00</label>
							</li>
							
							
														<li>
								<label class = "btns">14:30</label>
							</li>
							
							
														<li>
								<label class = "btns">15:00</label>
							</li>
							
							
														<li>
								<label class = "btns">15:30</label>
							</li>
							
							
														<li>
								<label class = "btns">16:00</label>
							</li>
							
							
														<li>
								<label class = "btns">16:30</label>
							</li>
							
							
														<li>
								<label class = "btns">17:00</label>
							</li>
							
							
														<li>
								<label class = "btns">17:30</label>
							</li>

							<li>
								<label class = "btns">18:00</label>
							</li>
							</ul>
					</div>
 

<%
int total2=0;
int point2 = 0;

	String jsql6= "SELECT * FROM user WHERE uId=?";
					PreparedStatement pstmt6 = con.prepareStatement(jsql6);
					pstmt6.setString(1, myid);

					ResultSet rs6 = pstmt6.executeQuery(); 
					rs6.next();

					int point = rs6.getInt("Point"); 

total2= total;
%>

					<div class = "ctit" ><h1 style = "font-size: 33px;">������ �Է�</h1></div>

					
					
					
					
					
					
					
					
					<table class="table1">
 					<tr style="margin: 0 auto;">
						<td class = "td_tit">
						���� ����/�ð� : 
						  <input type="text" name="day1" id="day1" style="width: 95px; cursor: hand;" readonly>
						<input type="text" name="date" id="date" style="width: 58px; margin-left: 10px; cursor: hand;" readonly>

						<%


String jsql2= "SELECT * FROM gocart WHERE ctNo=?";
			PreparedStatement pstmt2 = con.prepareStatement(jsql2);
			pstmt2.setString(1, ctNo);

			ResultSet rs2 = pstmt2.executeQuery(); 
			rs2.next();
			
			String opNo1 = rs2.getString("opNo"); 
			String prdNo1 = rs2.getString("prdNo"); 

			String jsql7= "SELECT * FROM gocart WHERE prdNo=?";
			PreparedStatement pstmt7 = con.prepareStatement(jsql7);
			pstmt7.setString(1, prdNo1);

			ResultSet rs7 = pstmt7.executeQuery(); 
			while(rs7.next()){
				String opNo2 = rs2.getString("opNo"); 

	
%>

						<input type="hidden" name="opno" value="<%=opNo2%>">
						<input type="hidden" name="prdno" value="<%=prdNo1%>">


						<%
			}
							%>


						  </td>
						
					</tr>
					                    
					<tr>
                          <td class = "td_tit">
						  �̸� : <input type="text" name="name" class="name" style = "margin-left: 75px;">
						  </td>
                      </tr>
					  <tr>
                          <td class = "td_tit">
                             ����ó : <span class="pbox">
                             <select class="call" name=phone1>
                                <option value="010" selected>010
                                <option value="011">011
                                <option value="016">016
                                <option value="017">017
                                <option value="018">018
                                <option value="019">019
                             </select>
                          </span> &nbsp;&nbsp;&nbsp;-
                             <input type=text name=phone2 size=5 style="margin: 0; margin-left: 8px;"> &nbsp;&nbsp;&nbsp;-
                             <input type=text name=phone3 size=5 style="margin: 0; margin-left: 8px;">
                          </td>
                       </tr>
					   <tr>
                          <td class = "td_tit">
                             ���� : <input type=radio name=sex value="����" style="margin-left: 75px;">����
                             <input type = radio name=sex value="����">����
                          </td>
                       </tr>
					   <tr>
					  
                             <td class = "td_tit">
							 <p style = " position: relative;">��û���� :<textarea name = "memo" style="font-size:16px; padding: 5px; outline:none; resize: none;  position: absolute; top:0; left: 115; border-color: #ccc;" cols="45" rows="3">����</textarea> 
							 </td>
                          
                       </tr>

				</table>

				<div class = "tit1" ><h1 style = "font-size: 33px;">���� ����</h1></div>



				<table class="price-wrap">
					<tr>
									<td>���űݾ�</td>
									<td colspan="2" class="margin1"><input type='text' name='sell1' id='sell1' value="<%=total%>">��</td>
					</tr>

					<%
						if (point > 0){
						%>


					<tr id="poN">
									<td>������ ���</td>

									<td class="margin2"><input name='sell5' id='sell5' type='text' value="<%=point%>">p ���� </td>
									<td class="margin3"><span id="result"><input type="text" name="sell3" id="sell3" value="<%=point2%>"></span>��
									<input type = "button" class="btn_Point" id="btn_Point" onclick='call();' value="���">
									<input type = "button" class="btn_reset" id="btn_reset" onclick='re();' value="�缱��"></td>

					</tr>

					<tr id="poY" style="visibility: hidden; display:none;">
									<td>������ ���</td>

									<td class="margin2"><input name='sell5' id='sell5' type='text' value="<%=point%>">p ���� </td>
									<td class="margin3"><span id="result"><input type="text" name="sell3" id="sell3" value="<%=point2%>" readonly style="background:#ccc;"></span>��
									<input type = "button" class="btn_Point" id="btn_Point" value="���">
									<input type = "button" class="btn_reset" id="btn_reset" onclick='re();' value="�缱��"></td>

					</tr>


					<%
					if (total > 30000) {	
					%>


					<tr id="couN">
									<td>���� ����</td>
									<td class="margin4" colspan="2">
									
										<select name="coupon" id="coupon" onchange="call1();">
											<option value="0"> [ ������ �����ϼ���. ] </option>
									<%
											String jsql10 = "select * from user where uId = ?";   
										PreparedStatement pstmt10 = con.prepareStatement(jsql10);
										pstmt10.setString(1,myid);

										ResultSet rs10 = pstmt10.executeQuery();
										rs10.next();

										String Coupon = rs10.getString("Coupon"); 
%>

	

<%
										String jsql11 = "SELECT * FROM USER WHERE uId=? AND  Coupon IS NULL;";   
										PreparedStatement pstmt11 = con.prepareStatement(jsql11);
										pstmt11.setString(1,myid);
	
										ResultSet rs11 = pstmt11.executeQuery();
										if(rs11.next()) {

										%>
												<option style="height: 30px;" id="cou" value="null">��� ������ ������ �����ϴ�.</option>
										
<%
	
										} //rs11
										else {

										if(Coupon.contains("c01")) {


										String jsql1 = "select * from coupon where cNo= ?";   
										PreparedStatement pstmt1 = con.prepareStatement(jsql1);
										pstmt1.setString(1,"c01");
	
										ResultSet rs1 = pstmt1.executeQuery();
										rs1.next();

										String cNo = rs1.getString("cNo"); 
										String cName = rs1.getString("cName");
										String cPoint = rs1.getString("cPoint");
										%>
												<option style="height: 30px;" id="cou" value="<%=cPoint%>"><%=cName%></option>
										
					<%

										} //if
%>

	
<%

										if(Coupon.contains("c02")) {


										String jsql1 = "select * from coupon where cNo= ?";   
										PreparedStatement pstmt1 = con.prepareStatement(jsql1);
										pstmt1.setString(1,"c02");
	
										ResultSet rs1 = pstmt1.executeQuery();
										rs1.next();

										String cNo = rs1.getString("cNo"); 
										String cName = rs1.getString("cName");
										String cPoint = rs1.getString("cPoint");
										%>
												<option style="height: 30px;" id="cou" value="<%=cPoint%>"><%=cName%></option>
										
					<%

										} //if
%>

	
<%

										if(Coupon.contains("c03")) {


										String jsql1 = "select * from coupon where cNo= ?";   
										PreparedStatement pstmt1 = con.prepareStatement(jsql1);
										pstmt1.setString(1,"c03");
	
										ResultSet rs1 = pstmt1.executeQuery();
										rs1.next();

										String cNo = rs1.getString("cNo"); 
										String cName = rs1.getString("cName");
										String cPoint = rs1.getString("cPoint");
										%>
												<option style="height: 30px;" id="cou" value="<%=cPoint%>"><%=cName%></option>
										
					<%

										} //if
%>

	
<%

										if(Coupon.contains("c04")) {


										String jsql1 = "select * from coupon where cNo= ?";   
										PreparedStatement pstmt1 = con.prepareStatement(jsql1);
										pstmt1.setString(1,"c04");
	
										ResultSet rs1 = pstmt1.executeQuery();
										rs1.next();

										String cNo = rs1.getString("cNo"); 
										String cName = rs1.getString("cName");
										String cPoint = rs1.getString("cPoint");
										%>
												<option style="height: 30px;" id="cou" value="<%=cPoint%>"><%=cName%></option>
										
					<%

										} //if
%>

	
<%

										if(Coupon.contains("c05")) {


										String jsql1 = "select * from coupon where cNo= ?";   
										PreparedStatement pstmt1 = con.prepareStatement(jsql1);
										pstmt1.setString(1,"c05");
	
										ResultSet rs1 = pstmt1.executeQuery();
										rs1.next();

										String cNo = rs1.getString("cNo"); 
										String cName = rs1.getString("cName");
										String cPoint = rs1.getString("cPoint");
										%>
												<option style="height: 30px;" id="cou" value="<%=cPoint%>"><%=cName%></option>
										
					<%

										} //if

										} //rs11 else
%>






											</select>

									</td>
					</tr>

					<tr id="couY" style="visibility: hidden; display:none;">
									<td>���� ����</td>
									<td class="margin4" colspan="2">
									
										<select name="coupon" id="coupon" onchange="call1();" style="background: #ccc;">
											<option value="0"> [ �����ݰ� ���� ��� �Ұ� ] </option>
									
											</select>

									</td>
					</tr>


										<%


					} else {
						
					%>

						<tr >
									<td>���� ����</td>
									<td class="margin4" colspan="2">
									
										<select name="coupon" id="coupon" onchange="call1();">
											<option value="0"> [ ���űݾ� 3���� ���ϻ�� �Ұ� ] </option>
									
											</select>

									</td>
					</tr>

					<%
					}
					%>



					<%
					} else {
					%>

						<tr id="poN">
										<td>������ ���</td>

										<td class="margin2"><input name='sell5' id='sell5' type='text' value="<%=point%>">p ���� </td>`
										<td class="margin3"><span id="result"><input type="text" name="sell3" id="sell3" value="<%=point2%>" readonly style="background:#ccc;"></span>��
										<input type = "button" class="btn_Point" id="btn_Point" onclick='point_null();' value="���">
										<input type = "button" class="btn_reset" id="btn_reset" onclick='re();' value="�缱��"></td>

						</tr>

						<%
					if (total > 30000) {	
					%>


					<tr>
									<td>���� ����</td>
									<td class="margin4" colspan="2">
									
										<select name="coupon" id="coupon" onchange="call2();">
											<option value="0"> [ ������ �����ϼ���. ] </option>
										<%
											String jsql10 = "select * from user where uId = ?";   
										PreparedStatement pstmt10 = con.prepareStatement(jsql10);
										pstmt10.setString(1,myid);

										ResultSet rs10 = pstmt10.executeQuery();
										rs10.next();

										String Coupon = rs10.getString("Coupon"); 
%>


<%

										if(Coupon.contains("c01")) {


										String jsql1 = "select * from coupon where cNo= ?";   
										PreparedStatement pstmt1 = con.prepareStatement(jsql1);
										pstmt1.setString(1,"c01");
	
										ResultSet rs1 = pstmt1.executeQuery();
										rs1.next();

										String cNo = rs1.getString("cNo"); 
										String cName = rs1.getString("cName");
										String cPoint = rs1.getString("cPoint");
										%>
												<option style="height: 30px;" id="cou" value="<%=cPoint%>"><%=cName%></option>
										
					<%

										} //if
%>

	
<%

										if(Coupon.contains("c02")) {


										String jsql1 = "select * from coupon where cNo= ?";   
										PreparedStatement pstmt1 = con.prepareStatement(jsql1);
										pstmt1.setString(1,"c02");
	
										ResultSet rs1 = pstmt1.executeQuery();
										rs1.next();

										String cNo = rs1.getString("cNo"); 
										String cName = rs1.getString("cName");
										String cPoint = rs1.getString("cPoint");
										%>
												<option style="height: 30px;" id="cou" value="<%=cPoint%>"><%=cName%></option>
										
					<%

										} //if
%>

	
<%

										if(Coupon.contains("c03")) {


										String jsql1 = "select * from coupon where cNo= ?";   
										PreparedStatement pstmt1 = con.prepareStatement(jsql1);
										pstmt1.setString(1,"c03");
	
										ResultSet rs1 = pstmt1.executeQuery();
										rs1.next();

										String cNo = rs1.getString("cNo"); 
										String cName = rs1.getString("cName");
										String cPoint = rs1.getString("cPoint");
										%>
												<option style="height: 30px;" id="cou" value="<%=cPoint%>"><%=cName%></option>
										
					<%

										} //if
%>

	
<%

										if(Coupon.contains("c04")) {


										String jsql1 = "select * from coupon where cNo= ?";   
										PreparedStatement pstmt1 = con.prepareStatement(jsql1);
										pstmt1.setString(1,"c04");
	
										ResultSet rs1 = pstmt1.executeQuery();
										rs1.next();

										String cNo = rs1.getString("cNo"); 
										String cName = rs1.getString("cName");
										String cPoint = rs1.getString("cPoint");
										%>
												<option style="height: 30px;" id="cou" value="<%=cPoint%>"><%=cName%></option>
										
					<%

										} //if
%>

	
<%

										if(Coupon.contains("c05")) {


										String jsql1 = "select * from coupon where cNo= ?";   
										PreparedStatement pstmt1 = con.prepareStatement(jsql1);
										pstmt1.setString(1,"c05");
	
										ResultSet rs1 = pstmt1.executeQuery();
										rs1.next();

										String cNo = rs1.getString("cNo"); 
										String cName = rs1.getString("cName");
										String cPoint = rs1.getString("cPoint");
										%>
												<option style="height: 30px;" id="cou" value="<%=cPoint%>"><%=cName%></option>
										
					<%

										} //if
%>

											</select>

									</td>
					</tr>

					<%
					} else {
						
					%>

						<tr >
									<td>���� ����</td>
									<td class="margin4" colspan="2">
									
										<select name="coupon" id="coupon" onchange="call2();">
											<option value="0"> [ ���űݾ� 3���� ���ϻ�� �Ұ� ] </option>
									
											</select>

									</td>
					</tr>

					<%
					}
					%>

				

					<% }
					%>
					
					

					<tr>
									<td>�� �����ݾ�</td>
									<td class="margin5" colspan="2">
									<input name='sell4' id='sell4' type='text' value="<%=df.format(total2)%>" readonly style = "color: red;">
									<input name='sell6' id='sell6' type='hidden' value="<%=total2%>"readonly>��</td>
					</tr>

					<!-- df.format(total2) -->
					
					

				</table>







				<script>


				  function point_null() {
                alert("������ ����Ʈ�� �����ϴ�.");
             }

             function call_null() {
                document.getElementById('sell3');

                const sell3 = document.getElementById('sell3').value;
                    document.getElementById("result").innerText = sell3;
             }
// location.reload();
							
			//				$("#sell4").read(


	//							window.onload=function(){
	//
	//									var sel4 = document.getElementById('sell4').value;
	//									document.getElementById("sell4").value= sel4.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
	//							}
	//
							function call() {  
								
							   var se3=document.getElementById('sell3').value;// ��� ����Ʈ
							   var se5=document.getElementById('sell5').value;  // ���� ����Ʈ
							   // sell1  ���űݾ�
							   // sell4 ��� �� �ݾ�
								
								document.getElementById("sell5").value= <%=point%>;

									if (parseInt(se3) > <%=point%>)
								   {
									  alert("����Ʈ�� ����� �� �����ϴ�" );

									  document.getElementById('sell3').value=document.getElementById('sell5').value;
								   } else{
									   

									   if(document.getElementById("sell1").value && document.getElementById("sell4").value  && document.getElementById("sell3").value){
										 
										

										document.getElementById('sell4').value =parseInt(document.getElementById('sell1').value) - parseInt(document.getElementById('sell3').value);


									  document.getElementById('sell5').value = parseInt(document.getElementById('sell5').value) - parseInt(document.getElementById('sell3').value);




										const sell3 = document.getElementById('sell3').value;
										document.getElementById("sell3").value= sell3;

										var sel4 = document.getElementById('sell4').value;
										document.getElementById("sell4").value= sel4.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
										document.getElementById("sell6").value= sel4;
//document.getElementById("sell4").value= sel4.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");

										

										

										document.getElementById("couN").style="display: none; visibility:hidden;"
										document.getElementById("couY").style="display: table-row; visibility:visibility;"

									   }

								   }

							}

							function call1() {  
										
										document.getElementById("sell4").value= <%=total2%>;

										document.getElementById('sell4').value = parseInt(document.getElementById('sell4').value) -
										parseInt(document.getElementById('coupon').value);

										const sell4 = document.getElementById('sell4').value;
										var sel4 = sell4;
//										document.getElementById("sell4").value= sel4.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
										document.getElementById("sell4").value= sel4.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
										document.getElementById("sell6").value= sel4;

										document.getElementById("poN").style="display: none; visibility:hidden;"
										document.getElementById("poY").style="display: table-row; visibility:visibility;"

							}

							function call2() {  
										
										document.getElementById("sell4").value= <%=total2%>;

										document.getElementById('sell4').value = parseInt(document.getElementById('sell4').value) -
										parseInt(document.getElementById('coupon').value);

										const sell4 = document.getElementById('sell4').value;
										var sel4 = sell4;
//										document.getElementById("sell4").value= sel4.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
										document.getElementById("sell4").value= sel4.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
										document.getElementById("sell6").value= sel4;


							}

							function re() {  

										document.getElementById("poN").style="display: table-row; visibility:visibility;"
										document.getElementById("poY").style="display:none; visibility:hidden;"

										
										document.getElementById("couN").style="display: table-row; visibility:visibility;"
										document.getElementById("couY").style="display: none; visibility:hidden;"
										
										document.getElementById("sell5").value= <%=point%>;
										document.getElementById("sell4").value= <%=total2%>;
										document.getElementById("sell3").value= 0;
										

							}


				</script>

 <button class="rez_btn" value= "����" onclick="res_null()" style= "cursor: pointer;" >����</button>
</form>
</div>
</div>






	<div class="footer flex flex-jc-c">
            <div class="text">
                <img src="./img/logo-ft.png" width = "150" alt="" style="margin-bottom: 20px;">
              <p class = "text1">��ȣ�� : ���ɾ��Ǻΰ� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   �ּ� : ����Ư���� ���ʱ� ������� 439 ( ��Ƽ���� 4�� )
            </p>
              <p>����ڵ�Ϲ�ȣ : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       ��ǥ�� : ������ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       ��ȭ��ȣ : 02-517-0912
            </p>
              <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
            </div>
         </div>

        
        
<%


    } catch(Exception e) {
		out.println(e);
}


%>
  


  

<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>
<script src="https://kit.fontawesome.com/58c5940c20.js" crossorigin="anonymous"></script>



<!-- Initialize Swiper -->
<script>

            gsap.to('#header', {
                scrollTrigger: {
                    trigger: '#header',
                    start: 'top -98px',
                    scrub: true
                },
                height: '90px',
                textalign: 'center',
                top: '0',
                position: 'fixed',
                background: '#fff', 
            });

        $(document).ready(function(){


var win_w = $(window).width();

$(window).on('resize', function(){
    win_w =$(this).width();
    if(win_w > 980){
        $('.gnb_wrap').removeAttr('style');
    }
});


$('.toggle').on('click', function(){
    $('.gnb_wrap').fadeToggle();
});


$('#gnb>li').on('mouseenter', function(){

    if(win_w > 980){ 
        $('.subwrap').stop().hide();
        $(this).children('.subwrap').stop(true, true).slideDown();

    } else {
        $('#gnb>li>a').off('click');
        $('#gnb>li>a').on('click', function(){
            $('.subwrap').stop().slideUp(); 
            $(this).next('.subwrap').stop().slideToggle(); 
        });

    }

});
$('#header').on('mouseleave', function(){
    if(win_w>980){
        $('.subwrap').stop().slideUp();
    }
});

$('#gnb>li>a').on('focusin', function(){
    if(win_w > 980){
        $(this).next('.subwrap').stop(true, true).slideDown();
    }
});

$('#gnb .last').on('focusout', function(){
    if(win_w > 980){
        $(this).parents('.subwrap').stop(true, true).slideUp();
    }
});


});

        

const $topBtn = document.querySelector(".moveTopBtn");

// ��ư Ŭ�� �� �� ���� �̵�
$topBtn.onclick = () => {
  window.scrollTo({ top: 0, behavior: "smooth" });
}

gsap.to('.top-wrap > .top-box2', {
  scrollTrigger: {
      trigger: '.top-wrap',
      start: 'top -98px',
      scrub: true
  },
  height: '61px',
  textalign: 'center',
  top: '0',
  position: 'fixed',
  background: '#fff',
  borderBottom: '1px solid #ccc'
});


            $('#best .tab>li>a').on('click', function(e){
                var i = $(this).parents('li').index();
              e.preventDefault();

              $('#best .panel').hide();
              $(this).next('.panel').show();
            $('#best .tab>li>.menu').removeClass('on').eq(i).addClass('on');
            });

            $('#best .tab>li>a').first().trigger('click');




    
     function keyword_check(){
    
                  if(document.search.keyword.value==''){ 
    
                  alert('�˻�� �Է��ϼ���');
    
                  document.search.keyword.focus(); 
    
                  return false; 
    
                  }
    
                  else return true;
    
                 }
    
    
    
    
    
        function search_form()
            {
                var frm = document.search;
                frm.action = "search.jsp";
                frm.submit();
            }
    

			function login()
		{
			alert('�α��� �� �̿� ������ �������Դϴ�.');
			document.location.href="login.jsp";
		}



		function request()              //  "��ٱ��ϴ��" ��ư�� Ŭ���� ȣ��
		{
			var frm1 = document.res;
			frm1.action = "kakaoPay_test.jsp"
			frm1.submit();

		}

		function res_null() {

		var frm1 = document.res;
		frm1.action = "kakaoPay_test.jsp"

			if (res.day1.value == "") 
                  {
                     alert("��¥�� ������ �ּ���!"); 
					 res.day1.focus();
                     return false; 
                  }
			if (res.date.value == "") 
                  {
                     alert("�ð��� ������ �ּ���!"); 
					 res.date.focus();
                     return false; 
                  }
			if (res.name.value == "") 
                  {
                     alert("�̸��� �Է��� �ּ���!"); 
					 res.name.focus();
                     return false; 
                  }
			if (res.phone1.value == "") 
                  {
                     alert("��ȣ�� �Է��� �ּ���!"); 
					 res.phone1.focus();
                     return false; 
                  }
			if (res.phone2.value == "") 
                  {
                     alert("��ȣ�� �Է��� �ּ���!"); 
					 res.phone2.focus();
                     return false; 
                  }
			if (res.phone3.value == "") 
                  {
                     alert("��ȣ�� �Է��� �ּ���!");
					 res.phone3.focus();
                     return false; 
                  }
			if (res.sex.value == "") 
                  {
                     alert("������ ������ �ּ���!"); 
					 res.sex.focus();
                     return false; 
                  }
			
			frm1.submit();


		}




		</script>
        
        </body>
        </html>