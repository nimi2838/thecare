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
  <script src="https://kit.fontawesome.com/21f77d5a02.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/rez.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
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


			<div class = "change_tit" ><h1 style = "font-size: 33px;">�ü�����</h1></div>
    <div class="no_box" style=" margin: 20px auto 0px;">
<%
 try{
 	 String DB_URL="jdbc:mysql://localhost:3306/care?characterEncoding=euckr";   
     String DB_ID="skin";  
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String ctNo = session.getId(); 


	String rezNo = request.getParameter("rezNo");
	

			

 int total=0;


				String jsql5= "SELECT * FROM rez WHERE rezNo=?";
			PreparedStatement pstmt5 = con.prepareStatement(jsql5);
			pstmt5.setString(1, rezNo);

			ResultSet rs5 = pstmt5.executeQuery(); 
			while(rs5.next()){
			
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

		

		
			
		

    </div>
<hr>




<form name="res" method=post onSubmit="return false;">
<table class="scriptCalendar" >
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



<div class="BookingTimeArea" alt="����ð�" >
												
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

String jsql8= "SELECT * FROM rezinfo WHERE rezNo=?";
			PreparedStatement pstmt8 = con.prepareStatement(jsql8);
			pstmt8.setString(1, rezNo);

			ResultSet rs8 = pstmt8.executeQuery(); 
			rs8.next();
			
			String uid = rs8.getString("uId"); 
			String ordDate = rs8.getString("ordDate"); 
			String ordCustomer = rs8.getString("ordCustomer"); 
			String ordPhone = rs8.getString("ordPhone"); 
			String ordSex = rs8.getString("ordSex"); 
			String ordPay = rs8.getString("ordPay"); 




	String jsql6= "SELECT * FROM user WHERE uId=?";
					PreparedStatement pstmt6 = con.prepareStatement(jsql6);
					pstmt6.setString(1, uid);

					ResultSet rs6 = pstmt6.executeQuery(); 
					rs6.next();


%>

					<div class = "tit" style = "width: 100%; float:left; border-bottom: 1px solid #ccc;" ><h1 style = "font-size: 33px;">������ �Է�</h1></div>

					
					
					
					
					
					
					
					
					<table class="table" style="font-size:10pt; margin-top:30px; width: 100%;  ">

					 <tr>
									<td class = "td_tit">
									<p style = " position: relative;"> �� �����ݾ�
									<input name='sell4' id='sell4' type='text' value="<%=df.format(Integer.parseInt(ordPay))%>" readonly style = "color: red; border: none; font-size: 18px; text-align: end;width: 295px;">��</td>
					</tr>
					<tr style="margin: 0 auto;">
						<td class = "td_tit">
						���� ����/�ð� : <input type="text" name="orddate" id="orddate" style="width: 280px; cursor: hand; border:none;" readonly value="<%=ordDate%>">
						</td>
						</tr>

 					<tr style="margin: 0 auto;">
						

						<td class = "td_tit">
						���� ����/�ð� : 
						  <input type="text" name="day1" id="day1" style="width: 95px; cursor: hand;" readonly>
						<input type="text" name="date" id="date" style="width: 58px; margin-left: 10px; cursor: hand;" readonly>
						</td>

						


						  
						
					</tr>
					                    
					<tr>
                          <td class = "td_tit">
						  <input type="hidden" name="rezno" style = "margin-left: 75px; " value="<%=rezNo%>">
						  �̸� : <input type="text" name="name" class="name"   value="<%=ordCustomer%>" readonly >
						  </td>
                      </tr>
					  <tr>
                          <td class = "td_tit">
						  ����ó : 
						  
<%
          String[ ] phoneArr  = ordPhone.split("-");  
       //  String hpArr[ ]  = phone.split("-"); �� ����
       // ������(-)�� �߽����� �޴�����ȣ ���ڸ�, �߰��ڸ�, ���ڸ��� ���� �и� ��
       // hpArr[0], hpArr[1], hpArr[2]�� ���� �����Ŵ

         String[ ]  phoneSelected = new String[6];  
       // "selected" ���ڿ��� �����ϱ� ���� �뵵�� �迭 ����

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
         <select name="phone1"  style=" width: 75px; margin: 0 10px 0 23px;">      
            <option value="010" <%=phoneSelected[0]%>>010
            <option value="011" <%=phoneSelected[1]%>>011
            <option value="016" <%=phoneSelected[2]%>>016
            <option value="017" <%=phoneSelected[3]%>>017
            <option value="018" <%=phoneSelected[4]%>>018
            <option value="019" <%=phoneSelected[5]%>>019
         </select>  
		 </span>
    -
          <input type=text name="phone2" value="<%=phoneArr[1]%>" size="4" style=" margin: 0 10px;"> -
          <input type=text name="phone3" value="<%=phoneArr[2]%>" size="4" style=" margin: 0 10px;">
         </td>   

                             <!-- <input type="text" name="phone" style = "margin-left: 75px; " value="<%=ordPhone%>"> -->
                          
                          </td>
                       </tr>
					   <tr>
                          <td class = "td_tit">
                             ���� : <input type="text" name="sex" class="sex" style = "margin-left: 75px; border:none; font-weight: bold;"  value="<%=ordSex%>" readonly>
                          </td>
                       </tr>
					   <tr>
					  
                             <td class = "td_tit">
							 <p style = " position: relative;">��û���� :<textarea name = "memo" style="font-size:16px; padding: 5px; outline:none; resize: none;  position: absolute; top:0; left: 115; border-color: #ccc;" cols="45" rows="3">����</textarea> 
							 </td>
                          
                       </tr>

					     

					

				</table>







 <button class="rez_btn" value= "����" onclick="request()" style= "cursor: pointer;" >����</button>
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
			frm1.action = "manager_cangeResult.jsp"
			
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