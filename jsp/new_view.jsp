<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <link rel="stylesheet" href="css/searchno.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <title>��Ű ���</title>
</head>
<body>
	<!-- 	<%
			String cookie_check = request.getHeader("Cookie");
			if(cookie_check != null) {
					Cookie[] cookies = request.getCookies();
					for(Cookie cookie_prdno : cookies) {
						if(cookie_prdno.getName().equals("prdNo")) {
								%>
												<p> ��ǰ : <%=cookie_prdno.getValue()%> </p>
									<%
							}
					}
			}
			
		%> -->


<%
   String myid = (String)session.getAttribute("sid");    
   
   
					try{
						 String DB_URL="jdbc:mysql://localhost:3306/care?characterEncoding=euckr";   
						 String DB_ID="skin";  
						 String DB_PASSWORD="1234";
						 
						 Class.forName("org.gjt.mm.mysql.Driver"); 
						 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

						 String ctNo = session.getId(); 

						 String jsql4= "SELECT * FROM newview WHERE ctNo=?";
						PreparedStatement pstmt4 = con.prepareStatement(jsql4);
						pstmt4.setString(1, ctNo);      
			
						ResultSet rs4 = pstmt4.executeQuery(); 
						if(!rs4.next()){

		%>



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
                    <a href="join.jsp">
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
                    <!-- <a href="searchform.html" class="btn_search">
                            <div class="img-box">
                                <img src="img/Search_thin_icon.png" alt="">
                            </div>
                        </a> -->
                </form>
            </div>

        </div>
        <div class="line"></div>


        <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>�� �ɾ��</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">���丮</a></li>
                            <li><a href="about_3.jsp">���ô±�</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>�Ǻ�Ÿ��</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">�� üũ</a></li>
                            <li><a href="qna.jsp">�� ����</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ü�</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">�ȳ�/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>����</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">�ٷο���</a></li>
                            <li><a href="change.jsp">����Ȯ��/����/���</a></li>
                            <li><a href="new_view.jsp">�ֱٺ��ü�</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>Ŀ�´�Ƽ</a>
                    <div>
                        <ul>
                            <li><a href="noti.jsp">��������</a></li>
                            <li><a href="event.jsp">�̺�Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>



<div class="about-ban1">
        <div class="text-box1">
			<p class="title">�ֱ� �� �ü�</p>
            <hr>
        </div>
    </div>


<div class="no_box" style="width:max-content; margin: 100px auto 150px;">
        <div class="icon" style="width: max-content; margin: 0 auto;">
		<i class="fa-solid fa-circle-exclamation" style="font-size:150px; color: #999999; margin:0 auto 50px;"></i>
		</div>
		<p class="title" style="text-align:center; font-size: 30px; font-weight:bold; color:#c5c5c5; margin:0 0 100px;">�ֱ� �� �ü��� �����ϴ�.</p>
			<div style="margin: 50px auto; ">
			<a href="guide.jsp" style="text-align:center; font-size: 25px; background: #999999; width:100%; padding: 25px 125px; color:#fff; font-weight: bold;">�ü� ���� ����</a>
			</div>
    </div>




	<%
						}else{ 
		%>









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
                    <a href="join.jsp">
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
                    <!-- <a href="searchform.html" class="btn_search">
                            <div class="img-box">
                                <img src="img/Search_thin_icon.png" alt="">
                            </div>
                        </a> -->
                </form>
            </div>

        </div>
        <div class="line"></div>



 <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>�� �ɾ��</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">���丮</a></li>
                            <li><a href="about_3.jsp">���ô±�</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>�Ǻ�Ÿ��</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">�� üũ</a></li>
                            <li><a href="qna.jsp">�� ����</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ü�</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">�ȳ�/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>����</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">�ٷο���</a></li>
                            <li><a href="change.jsp">����Ȯ��/����/���</a></li>
                            <li><a href="new_view.jsp">�ֱٺ��ü�</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>Ŀ�´�Ƽ</a>
                    <div>
                        <ul>
                            <li><a href="noti.jsp">��������</a></li>
                            <li><a href="event.jsp">�̺�Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>



<div class="about-ban1">
        <div class="text-box1">
			<p class="title">�ֱ� �� �ü�</p>
            <hr>
        </div>
    </div>


    <div class="search_wrap1">
	

			<%
				Date now = new Date();

			String jsql3="DELETE FROM newview WHERE DATE_SUB(now(), INTERVAL 5 MINUTE) > added_time";
			PreparedStatement pstmt3 = con.prepareStatement(jsql3);

			pstmt3.executeUpdate();
			
			
			String jsql2= "SELECT * FROM newview WHERE ctNo=?";
			PreparedStatement pstmt2 = con.prepareStatement(jsql2);
			pstmt2.setString(1, ctNo);      
			
			ResultSet rs2 = pstmt2.executeQuery(); 
			while(rs2.next()){
			
			String prdNo = rs2.getString("prdNo"); 
			

			String jsql= "SELECT * FROM surgery WHERE prdNo=?";
			PreparedStatement pstmt = con.prepareStatement(jsql);
			pstmt.setString(1, prdNo);      
			
			ResultSet rs = pstmt.executeQuery(); 

			rs.next();

			String pname = rs.getString("prdName"); 
			String pmemo = rs.getString("prdMemo"); 
			String  price =  rs.getString("startprice");

			
			
			%>
									
			
        <div class="search_box">
            <div class="search1">
                <h2><%=pname%></h2>
                <p><%=pmemo%></p>
            </div>
            <div class="search2">
                <div class="price">
                    <span><%=price%></span>�� ����
                </div>
				<a href="sub_1.jsp?prdNo=<%=prdNo%>" class="btn">�󼼺���</a>
            </div>
        </div>



		
								<%
					} 
	}
		%>

			


		


    </div>


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

<%
	    } catch(Exception e) {
		out.println(e);
}
   
%>


<script src="https://kit.fontawesome.com/58c5940c20.js" crossorigin="anonymous"></script>

</body>
</html>