<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="css/custom-finish.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <script src="https://kit.fontawesome.com/214669976f.js" crossorigin="anonymous"></script>
  <title>맞춤시술</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
</head>
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
                            <input class="form" name="keyword" type="text" placeholder="검색어를 입력해주세요." >
                        </td>
                        <td class="schBtn">
                            <input type="image" src="img/Search_thin_icon.png" alt="검색" onsubmit="search_form()" style="width: 30px; height: 30px;">
                        </td>
                    </form>
                </div>






        </div>
        <div class="line"></div>


	  <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>더 케어</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">케어 라이프</a></li>
                            <li><a href="about_3.jsp">오시는길</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>더 궁금해</a>
					<div>
                        <ul>
                            <li><a href="#" onclick="login();">더 체크</a></li>
							<li><a href="themore.jsp">더 모어</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>케어원해</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">안내/예약</a></li>
                            <li><a href="#" onclick="login();">예약확인/변경/취소</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>소통원해</a>
                    <div>
                        <ul>
                            <li><a href="#" onclick="login();">기록장</a></li>
                            <li><a href="noti.jsp">공지사항</a></li>
                            <li><a href="event.jsp">이벤트</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>


<!-- 모바일로 -->
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
                                <input class="form" name="keyword" type="text" placeholder="검색어를 입력해주세요." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="검색" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">더 케어란</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">케어 라이프</a></li>
                                        <li><a href="about_3.jsp">오시는길</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">더 궁금해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">더 체크</a></li>
                                        <li><a href="themore.jsp">더 모어</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">케어원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">안내/예약</a></li>
                                        <li><a href="#" onclick="login();">예약확인/변경/취소</a></li>
                                        <li><a href="review.jsp">전후사진</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">소통원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">기록장</a></li>
                                        <li><a href="noti.jsp">공지사항</a></li>
                                        <li><a href="event.jsp">이벤트</a></li>
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
                            <input class="form" name="keyword" type="text" placeholder="검색어를 입력해주세요." >
                        </td>
                        <td class="schBtn">
                            <input type="image" src="img/Search_thin_icon.png" alt="검색" onsubmit="search_form()" style="width: 30px; height: 30px;">
                        </td>
                    </form>
                </div>






        </div>
        <div class="line"></div>




	
        <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>더 케어</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">케어 라이프</a></li>
                            <li><a href="about_3.jsp">오시는길</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>더 궁금해</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">더 체크</a></li>
							<li><a href="themore.jsp">더 모어</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>케어원해</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">안내/예약</a></li>
                            <li><a href="change.jsp">예약확인/변경/취소</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>소통원해</a>
                    <div>
                        <ul>
                            <li><a href="note.jsp">기록장</a></li>
                            <li><a href="noti.jsp">공지사항</a></li>
                            <li><a href="event.jsp">이벤트</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>





	
           <!-- 모바일로 -->
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
                                <input class="form" name="keyword" type="text" placeholder="검색어를 입력해주세요." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="검색" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">더 케어란</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">케어 라이프</a></li>
                                        <li><a href="about_3.jsp">오시는길</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">더 궁금해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="custom.jsp">더 체크</a></li>
                                        <li><a href="themore.jsp">더 모어</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">케어원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">안내/예약</a></li>
                                        <li><a href="change.jsp">예약확인/변경/취소</a></li>
                                        <li><a href="review.jsp">전후사진</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">소통원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="note.jsp">기록장</a></li>
                                        <li><a href="noti.jsp">공지사항</a></li>
                                        <li><a href="event.jsp">이벤트</a></li>
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
            <a alt="맨 위로" class="moveTopBtn">
                <div  style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="최근 본 시술">
                <div style="border-radius:50%;z-index:150; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">최근본시술</p>
                </div>
            </a>
        </div>
	<%




	
	request.setCharacterEncoding("euc-kr");




	String aa9 = request.getParameter("aa9");

		
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String id = session.getId();

	

	
	 String jsql1 = "INSERT INTO test (uId, testNo, YN) VALUES (?,?,?)";	

	 PreparedStatement pstmt1  = con.prepareStatement(jsql1);
	 pstmt1.setString(1,myid);
	 pstmt1.setString(2,"num"+9);
	 pstmt1.setString(3,aa9);
	



	pstmt1.executeUpdate();

	 
	

	     
 %>
 
	

	<%
	String jsql2 = "select * from test where uId = ?";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setString(1, myid); 

    ResultSet rs2 = pstmt2.executeQuery();
    rs2.next();


	%>

	<%
	String jsql3 = "select count(?) as cnt from test where YN ='no1'" ;
	PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	pstmt3.setString(1,myid);
	ResultSet rs3 = pstmt3.executeQuery();
    rs3.next();
	
	int no1 = rs3.getInt("cnt");
%>
	<%
	String jsql4 = "select count(?) as cnt from test where YN ='no2'" ;
	PreparedStatement pstmt4 = con.prepareStatement(jsql4);
	pstmt4.setString(1,myid);
	ResultSet rs4 = pstmt4.executeQuery();
    rs4.next();
	
	int no2 = rs4.getInt("cnt");
%>
	<%
	String jsql5 = "select count(?) as cnt from test where YN ='no3'" ;
	PreparedStatement pstmt5 = con.prepareStatement(jsql5);
	pstmt5.setString(1,myid);
	ResultSet rs5 = pstmt5.executeQuery();
    rs5.next();
	
	int no3 = rs5.getInt("cnt");
%>
	<%
	String jsql6 = "select count(?) as cnt from test where YN ='yes1'" ;
	PreparedStatement pstmt6 = con.prepareStatement(jsql6);
	pstmt6.setString(1,myid);
	ResultSet rs6 = pstmt6.executeQuery();
    rs6.next();
	
	int yes1 = rs6.getInt("cnt");
%>
	<%
	String jsql7 = "select count(?) as cnt from test where YN ='yes2'" ;
	PreparedStatement pstmt7 = con.prepareStatement(jsql7);
	pstmt7.setString(1,myid);
	ResultSet rs7 = pstmt7.executeQuery();
    rs7.next();
	
	int yes2 = rs7.getInt("cnt");
%>
	<%
	String jsql8 = "select count(?) as cnt from test where YN ='yes3'" ;
	PreparedStatement pstmt8 = con.prepareStatement(jsql8);
	pstmt8.setString(1,myid);
	ResultSet rs8 = pstmt8.executeQuery();
    rs8.next();
	
	int yes3 = rs8.getInt("cnt");

	
%>

		<div class="survery content">
        <div class="inner">
            <h1>피부타입 자가진단 결과</h1>
            <div class="wrap">
                    <div class="survery-test">
                        <div class="title">

	<%

   
		if(2 <= yes1 && 2 <= yes2 && 2 <= yes3){
		
		
		%>

			<p>당신의 피부 타입은 &nbsp;<span>OSP</span></p>
			 </div>

                        <div class="title-txt">
                            <img src="img/osp.png" height= "450" alt="">
                            <h1>영원히 고통받는 총체적 난국 복어</h1>
                        </div>

                        <div class="sarp">
                            <h4># 민감</h4>
                            <h4># 색소침착</h4>
                            <h4># 여드름</h4>
                        </div>

                        <div class="finish-txt">
                            <h1>OSP(민감한 악지성)의 피부는 어떤 타입인가요?</h1><br>
                            <p>건조하고 민감하며 색소 침착된(주름이 없는) 피부에는 <br>일반적으로 여드름 발진이 있고 
                                피부 발진과 자극이 자주 있습니다.<br>
                                피부의 보호 장벽은 불행히도 약하고 그 결과 피부 발진과 탈수에 더 취약해집니다. <br>
                                태양 노출로 인해 얼굴에 검은 반점이 생길 수 있습니다. <br>
                                이 피부 타입은 피부 색소 침착이 증가하여 다른 타입에 비해 주름이 생기는 경향이 적고<br>
                                피부 보호에 도움이 됩니다.
                            </p>
                        </div>
                        <h1>함께하면 좋은 시술추천</h1>
                        <div class="chu">
                            <div class="chu-img">
                                <img src="img/chu.png" alt="" width="180px" height="180px">
                            </div>
                            <div class="chu-txt">
                                <p><span>여드름 케어</span> - 여드름 진정 및 흉터 지우기</p>
                            </div>
                        </div>



		<%
			
		} else if(2 <= yes1 && 2 <= yes2 && 2 <= no3){
%>
			<p>당신의 피부 타입은 &nbsp;<span>OSN</span></p>
			 </div>

                        <div class="title-txt">
                            <img src="img/osn.png" height= "450" alt="">
                            <h1>햇빛에 쉽게 붉어지고 번들거리는 토마토</h1>
                        </div>

                        <div class="sarp">
                            <h4># 홍조</h4>
                            <h4># 염증</h4>
                            <h4># 피부노화</h4>
                        </div>

                        <div class="finish-txt">
                            <h1>OSN(민감한 약지성)의 피부는 어떤 타입인가요?</h1><br>
                            <p>피부가 번들거리며 염증이 생기기 쉽군요! <br>햇빛에 쉽게 붉어지고 번들거려 주름이 생기기 쉽지만<br>
                                피지가 항산화 작용을 하여 주름이 덜 생기고 <br>
                                피부노화를 조금 막아주지만 부족해요. <br>
                                내일 항산화, 항염증제품을 사용하는 것이 좋아요.<br>
                                번들거림과 염증반응으로 붉은 기가 있어 저자극 제품 사용을 추천드려요!
                            </p>
                        </div>
                        <h1>함께하면 좋은 시술추천</h1>
                        <div class="chu">
                            <div class="chu-img">
                                <img src="img/chu.png" alt="" width="180px" height="180px">
                            </div>
                            <div class="chu-txt">
                                <p><span>클라리티</span> - 붉은 얼굴 개선하기</p>
                            </div>
                        </div>




						<%
			
					} else if(2 <= yes1 && 2 <= no2 && 2 <= no3){
			%>
			<p>당신의 피부 타입은 &nbsp;<span>ORN</span></p>
			 </div>

                         <div class="title-txt">
                            <img src="img/orn.png" height= "450" alt="">
                            <h1>흠잡을 것 하나 없는 건강한 광채 탱탱볼</h1>
                        </div>

                        <div class="sarp">
                            <h4># 건강한피부</h4>
                            <h4># 광채</h4>
                            <h4># 탱탱</h4>
                        </div>

                        <div class="finish-txt">
                            <h1>ORN(민감하지 않은 악지성)의 피부는 어떤 타입인가요?</h1><br>
                            <p>피부색이 고르며 노화도 적은 이 유형은 건강하고 <br>광채가 나는 탱탱한 피부에요!<br>
                                부드럽고 유연한 피부가 특징이며 모공은 조금 큰 편이라 관리를 해주지 않으면 블랙헤드가 생기기 쉬워요 !<br>
                               피지 흡착 성분이 있는 제품과 항산화 기능이 있는 필링제를 추천드려요! <br>
                                
                            </p>
                        </div>
                        <h1>함께하면 좋은 시술추천</h1>
                        <div class="chu">
                            <div class="chu-img">
                                <img src="img/chu.png" alt="" width="180px" height="180px">
                            </div>
                            <div class="chu-txt">
                                <p><span>아쿠아필</span> - 모공 속 노폐물 제거</p>
                            </div>
                        </div>
						<%
			
					} else if(2 <= yes1 && 2 <= no2 && 2 <= yes3){
			%>
			<p>당신의 피부 타입은 &nbsp;<span>ORP</span></p>
			 </div>

                         <div class="title-txt">
                            <img src="img/orp.png" height= "450" alt="">
                            <h1>단점보다 장점이 많고 관리하기 쉬운 알로에</h1>
                        </div>

                        <div class="sarp">
                            <h4># 선크림 필수</h4>
                            <h4># 피부결 유지</h4>
                            
                        </div>

                        <div class="finish-txt">
                            <h1>ORN(민감하지 않은 약지성)의 피부는 어떤 타입인가요?</h1><br>
                            <p>주름이 덜 생기고 피부자극이 적은 편이군요!<br>
                                피부색이 고르지 않고 주름이 덜 생기지만 피부결 유지를 위해선 선크림은 필수에요!<br>
                               피지분비는 많으나 노화를 방지하긴 모자라서 <br> 항산화제를 식이요법과 스킨케어제품에서 보충해야해요! <br>
							   SPF 30+ 이상의 제품은 브라이트닝, SPF 50+ 이상의 제품은 항산화 기능이 되는 제품 사용을 권장드려요!
                                
                            </p>
                        </div>
                        <h1>함께하면 좋은 시술추천</h1>
                        <div class="chu">
                            <div class="chu-img">
                                <img src="img/chu.png" alt="" width="180px" height="180px">
                            </div>
                            <div class="chu-txt">
                               <p><span>아쿠아 필</span> - 모공 속 노폐물 제거</p>
                            </div>
                        </div>
						<%
			
					} else if(2 <= no1 && 2 <= no2 && 2 <= yes3){
			%>
			<p>당신의 피부 타입은 &nbsp;<span>DRP</span></p>
			 </div>

                         <div class="title-txt">
                            <img src="img/drp.png" height= "450" alt="">
                            <h1>여드름 & 모공 하나 보이지 않는 타고난 달걀</h1>
                        </div>

                        <div class="sarp">
                            <h4># 피부건조</h4>
                            <h4># 색소침착</h4>
                            
                        </div>

                        <div class="finish-txt">
                            <h1>DRP(민감하지 않은 약건성)의 피부는 어떤 타입인가요?</h1><br>
                            <p>피부색이 고르지 않고 피부가 건조하군요!<br>
                                피부건조, 색소침착이 불균형하게 있어 주름이 생기기 쉬워요. <br>
                               매일 SPF30이상의 선크림과 보습제, 피부미백제를 사용해주세요! <br>
							   보습제, 항산화제, 레티노이드, 알파히드록시산제품은 피부색을 균일하게 하는데 도움을 줘요!
                                
                            </p>
                        </div>
                        <h1>함께하면 좋은 시술추천</h1>
                        <div class="chu">
                            <div class="chu-img">
                                <img src="img/chu.png" alt="" width="180px" height="180px">
                            </div>
                            <div class="chu-txt">
                               <p><span>클라리티</span> - 저하된 피부 탄력 개선하기</p>
                            </div>
                        </div>
						<%
			
					} else if(2 <= no1 && 2 <= no2 && 2 <= no3){
			%>
			<p>당신의 피부 타입은 &nbsp;<span>DRN</span></p>
			 </div>

                         <div class="title-txt">
                            <img src="img/drn.png" height= "450" alt="">
                            <h1>모든 피부 고민으로부터 자유로운 여신상</h1>
                        </div>

                        <div class="sarp">
                            <h4># 식생활 개선</h4>
                            <h4># 생활습관 개선</h4>
                            
                        </div>

                        <div class="finish-txt">
                            <h1>DRN(민감하지 않은 악건성)의 피부는 어떤 타입인가요?</h1><br>
                            <p>피부색은 고르지만 쉽게 건조해지군요!<br>
                               건조한 피부는 주름이 쉽게 생길 수 있으니 항산화제, SPF15이상의 제품을 사용하는 것이 좋고  <br>
                               밤엔 레티노이드 제품을 사용하는 것이 좋아요! <br>
							   식생활과 생활습관 교정이 꼭 필요하며 폼클렌징 사용은 좋지 않아요!
                            </p>
                        </div>
                        <h1>함께하면 좋은 시술추천</h1>
                        <div class="chu">
                            <div class="chu-img">
                                <img src="img/chu.png" alt="" width="180px" height="180px">
                            </div>
                            <div class="chu-txt">
                                <p><span>아쿠아필</span> - 보습, 진정용액으로 수분 공급하기</p>
                            </div>
                        </div>

						<%
			
					} else if(2 <= no1 && 2 <= yes2 && 2 <= no3){
			%>
			<p>당신의 피부 타입은 &nbsp;<span>DSN</span></p>
			 </div>

                         <div class="title-txt">
                            <img src="img/dsn.png" height= "450" alt="">
                            <h1>작은 자극에도 쉽게 붉어지는 홍당무</h1>
                        </div>

                        <div class="sarp">
						    <h4># 피부건조</h4>
                            <h4># 보습필수</h4>
                            
                        </div>

                        <div class="finish-txt">
                            <h1>DSN(민감한 약건성)의 피부는 어떤 타입인가요?</h1><br>
                            <p>과거염증으로 인해서 피부건조가 나타난 경우가 많군요!<br>
                               특히 이 유형은 피부결은 고르나 주름이 잘 생기기 때문에 피부장벽을 보호하기 위해 <br>
                               밤엔 레티노이드 제품을 사용하는 것이 좋아요! <br>
							   리놀레익산, 오메가3 섭취와 보습제, 레티노이드, 항상환제, 항염증 제품을 추천드려요.
                            </p>
                        </div>
                        <h1>함께하면 좋은 시술추천</h1>
                        <div class="chu">
                            <div class="chu-img">
                                <img src="img/chu.png" alt="" width="180px" height="180px">
                            </div>
                            <div class="chu-txt">
                                <p><span>클라리티</span> - 붉은 얼굴 개선하기</p>
                            </div>
                        </div>

						<%
			
					} else if(2 <= no1 && 2 <= yes2 && 2 <= yes3){
			%>
			<p>당신의 피부 타입은 &nbsp;<span>DSP</span></p>
			 </div>

                         <div class="title-txt">
                            <img src="img/dsp.png" height= "450" alt="">
                            <h1>피부가 좋았던 적이 없는 모태 선인장</h1>
                        </div>

                        <div class="sarp">
						    <h4># 염증</h4>
                            <h4># 색소침착</h4>
                            
                        </div>

                        <div class="finish-txt">
                            <h1>DSP(민감한 악건성)의 피부는 어떤 타입인가요?</h1><br>
                            <p>반복되는 피부 염증과 피부색이 고르지 않군요!<br>
                               피부건조와 염증이 잘 나타나 주름이 생기기 쉽고 피부건조 방지를 <br>
                               주 목표로 하여 피부장벽을 보호해주는 스킨케어 제품을 사용해주세요!<br>
							   염증과 색소 침착을 잡는 것이 중요해 레이저 치료를 추천드려요! 
                            </p>
                        </div>
                        <h1>함께하면 좋은 시술추천</h1>
                        <div class="chu">
                            <div class="chu-img">
                                <img src="img/chu.png" alt="" width="180px" height="180px">
                            </div>
                            <div class="chu-txt">
                               <p><span>아쿠아필</span> - 보습, 진정용액으로 수분 공급하기</p>
                            </div>
                        </div>

<%
					}
	

%>
                            <a href="main.jsp">
                                <div class="close-test">
                                    <img src="img/test-close.png" alt="">
                                </div>
                            </a>
                    </div>
                
            </div>
            <!-- 임시 버튼 -->
            <div class="button">
                <a href="main.jsp" class="next">끝내기</a>
            </div>
            <!-- 찐 버튼 -->
            <!-- <div class="button">
                <button class="survery-btn prev">이전</button>
                <button class="survery-btn next">다음</button>
            </div> -->
        </div>
    </div>



 

    <div class="footer flex flex-jc-c">
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
    

 } catch(Exception e) { 
		out.println(e);
}
%>
<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>

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

// 버튼 클릭 시 맨 위로 이동
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
    
            
    
    
     function keyword_check(){
    
                  if(document.search.keyword.value==''){ 
    
                  alert('검색어를 입력하세요');
    
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
			alert('로그인 후 이용 가능한 페이지입니다.');
			document.location.href="login.jsp";
		}



    </script>
</body>
</html>