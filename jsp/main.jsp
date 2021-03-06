<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <title>메인페이지</title>
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
							<li><a href="guide.jsp">시술안내/예약</a></li>
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
                                        <li><a href="guide.jsp">시술안내/예약</a></li>
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
							<li><a href="guide.jsp">시술안내/예약</a></li>
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
                                        <li><a href="guide.jsp">시술안내/예약</a></li>
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
      



<div style="position: fixed; bottom:5%; right:3%;z-index:2;">
            <a href="" alt="맨 위로">
                <div class="moveTopBtn" style="border-radius:50%;z-index:2; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="최근 본 시술">
                <div style="border-radius:50%;z-index:2; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">최근본시술</p>
                </div>
            </a>
        </div>
    





        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                
                <div class="swiper-slide  swiper-slide1">
                    <img src="img/banner01.jpg" alt="">
    
                </div>
    
                <div class="swiper-slide swiper-slide2">
                    <img src="img/banner04.jpg" alt="">
                </div>
    
            </div>
            <div class="swiper-pagination"></div>
        </div>







        <section id="best" class="content">
            <div class="inner">
                <div class="title">
                    <h2>THE CARE</h2>
                    <p>20대 남녀가 받고 싶어하는 시술은?</p>
                </div>
                <div class="wrap">
                    <ul class="tab">
                        <li>
                            <a href="#" class="menu menu1">공통</a>
                            <div class="panel ">
                                <div class="mini">
                                    <h1>TOP 3</h1>
                                <!-- <img src="img/top.png" alt="" width="50px" height="50px"> -->
                                </div>
                                <div class="con gender">
                                    <ul>
                                        <li>
                                            <div class="top top1">
                                                <a href="sub_sk02.jsp?prdNo=sk02" class="yeo"><img src="img/best-yeo.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>1위</p>
                                                <h4>여드름 케어</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top1">
                                                <a href="sub_sk01.jsp?prdNo=sk01" class="yeo"><img src="img/best-ah.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>2위</p>
                                                <h4>아쿠아 필</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top1">
                                                <a href="sub_li02.jsp?prdNo=li02" class="yeo" class="yeo"><img src="img/best-yun.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>3위</p>
                                                <h4>윤곽 주사</h4>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu2">남자</a>
                            <div class="panel ">
                                <div class="mini">
                                    <h1>TOP 3</h1>
                                <!-- <img src="img/top.png" alt="" width="50px" height="50px"> -->
                                </div>
                                <div class="con man">
                                    <ul>
                                        <li>
                                            <div class="top top2">
                                                <a href="sub_sk02.jsp?prdNo=sk02" class="yeo"><img src="img/bestm-yeo.jpg" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>1위</p>
                                                <h4>여드름 케어</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top2">
                                                <a href="sub_li02.jsp?prdNo=li02" class="yeo"><img src="img/bestm-yun.jpg" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>2위</p>
                                                <h4>윤곽 주사</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top2">
                                                <a href="sub_sk01.jsp?prdNo=sk01" class="yeo"><img src="img/bestm-ah.jpg" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>3위</p>
                                                <h4>아쿠아 필링</h4>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu3">여자</a>
                            <div class="panel ">
                                <div class="mini">
                                    <h1>TOP 3</h1>
                                <!-- <img src="img/top.png" alt="" width="50px" height="50px"> -->
                                </div>
                                <div class="con woman">
                                    <ul>
                                        <li>
                                            <div class="top top3">
                                                <a href="sub_sk01.jsp?prdNo=sk01" class="yeo"><img src="img/best-ah.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>1위</p>
                                                <h4>아쿠아 필링</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top3">
                                                <a href="sub_li02.jsp?prdNo=li02" class="yeo"><img src="img/best-yun.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>2위</p>
                                                <h4>윤곽 주사</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top3">
                                                <a href="sub_li01.jsp?prdNo=li01" class="yeo"><img src="img/best-sa.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>3위</p>
                                                <h4>사각턱 보톡스</h4>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <p>20대 남녀에게 설문조사한 결과를 바탕으로 제작하였습니다.</p>
            </div>
        </section>



    
    
        <div class="slider-box-1">
            <h4>DOCTORS</h4>
            <p>의료진</p>
            <div class="slick">
    
                <div class="item">
                    <a href="about_2.jsp">
                        <div class="bg" style="background-image:url(img/doctor_list_thum02.png);"></div>
                        <div class="name">
                            <p>보톡스 전문</p>
                            <span>김철수</span> 원장
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
                <div class="item">
                    <a href="about_2.jsp">
                        <div class="bg" style="background-image:url(img/doctor_list_thum03.png);"></div>
                        <div class="name">
                        <p>보톡스 전문</p>
                            <span>강건희</span> 원장
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
                <div class="item">
                    <a href="about_2.jsp">
                        <div class="bg" style="background-image:url(img/doctor_list_thum04.png);"></div>
                        <div class="name">
                        <p>체형 전문</p>
                            <span>이&nbsp;&nbsp;&nbsp;훈</span> 원장
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
                <div class="item">
                    <a href="about_2.jsp">
                        <div class="bg" style="background-image:url(img/doctor_list_thum05.png);"></div>
                        <div class="name">
                        <p>필러 전문</p>
                            <span>김영희</span> 원장
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
                <div class="item">
                    <a href="about_2.jsp">
                        <div class="bg" style="background-image:url(img/doctor_list_thum07.png);"></div>
                        <div class="name">
                        <p>레이저 전문</p>
                            <span>최은혜</span> 원장
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
                <div class="item">
                    <a href="about_2.jsp">
                        <div class="bg" style="background-image:url(img/doctor_list_thum08.png);"></div>
                        <div class="name">
                        <p>피부 전문</p>
                            <span>박정우</span> 원장
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
            </div>
        </div>
    
     <%
   if(myid == null) {

%>
        <div class="mini-ban">
            <div class="text-box">
                <div>
                    <p>
                    내 피부타입이 궁금하다면?<br>
                    테스트를 통해 알아보세요!
                    </p><a href="#" onclick="login();">TEST</a>
                </div>
            </div>
        </div>
<%
}
else{
%>        
       <div class="mini-ban">
            <div class="text-box">
                <div>
                    <p>
                    내 피부타입이 궁금하다면?<br>
                    테스트를 통해 알아보세요!
                    </p><a href="custom.jsp">TEST</a>
                </div>
            </div>
        </div>
    
    
<%
}
%>
      

        <div class="card-wrap">
            <div class="cardtt">
                <h1>SEASONS</h1>
                <h4>계절마다 필요한 시술</h4>
            </div>
            
            <div class="card_box card_box1 flex ">
                <a href="sub_sk01.jsp?prdNo=sk01" class="card1 card">
                    <div class="text-box">
                        <h1>SPRING</h1>
                        <p>봄</p>
                        
                    </div>
                    <div class="bg">
                        <h4>
                            건조해진 공기,<br>
                            미세먼지로 민감해진 피부엔<br>
                            <span>아쿠아 필</span>
                        </h4>
                        <div class="view">GO</div>
                    </div>
                </a> 

                <a href="sub_sk02.jsp?prdNo=sk02" class="card2 card">
                    <div class="text-box">
                        <h1>SUMMER</h1>
                        <p>여름</p>
                    </div>
                    <div class="bg">
                        <h4>
                            강한 자외선으로<br>
                            피지와 염증이 과다한 여름엔<br>
                            <span>여드름 케어</span>

                        </h4>
                        <div class="view">GO</div>
                    </div>
                </a>
    
                <a href="sub_sk03.jsp?prdNo=sk03" class="card3 card">
                    <div class="text-box">
                        <h1>FALL</h1>
                        <p>가을</p>
                    </div>
                    <div class="bg">
                        <h4>
                            일교차 크고 건조해<br>
                            모세혈관이 확장되는 가을엔<br>
                            <span>클라리티</span>
                        </h4>
                        <div class="view">GO</div>
                    </div>
                </a>
    
                <a href="sub_li03.jsp?prdNo=li03" class="card4 card">
                    <div class="text-box">
                        <h1>WINTER</h1>
                        <p>겨울</p>
                    </div>
                    <div class="bg">
                        <h4>
                            여름보다 기온이 낮아<br>
                            빠른 회복이 가능한 겨울엔<br>
                            <span>조각주사</span>
                        </h4>
                        <div class="view">GO</div>
                    </div>
                </a>
            </div>
        </div>


        


    
    
    
        <div class="content-f flex">
    
            <div class="before-box">
                <h1>BEFORE & AFTER</h1>
                <p>고객님의 전후모습</p>
                <div class="slider-box-2">
    
                    <div class="slick">
                        <div class="item">
                            <a href="review.jsp">
                                <div class="bg1" style="background-image:url(img/main-before-01.jpg);"></div>
                                <i class="fas fa-chevron-circle-right arr"></i>
                                <div class="bg2" style="background-image:url(img/main-after-01.jpg);"></div>
                            </a>
                        </div>
    
                        <div class="item">
                            <a href="review.jsp">
                                <div class="bg1" style="background-image:url(img/main-before-02.jpg);"></div>
                                <i class="fas fa-chevron-circle-right arr"></i>
                                <div class="bg2" style="background-image:url(img/main-after-02.jpg);"></div>
                            </a>
                        </div>
    
                        <div class="item">
                            <a href="review.jsp">
                                <div class="bg1" style="background-image:url(img/main-before-03.jpg);"></div>
                                <i class="fas fa-chevron-circle-right arr"></i>
                                <div class="bg2" style="background-image:url(img/main-after-03.jpg);"></div>
                            </a>
                        </div>
    
                    </div>
                    <div class="arrows">
                        <div class="btn-right">
                            <img src="img/bef_right_icon.png" alt="">
                        </div>
                        <div class="btn-left">
                            <img src="img/bef_left_icon.png" alt="">
                        </div>
                    </div>
                </div>
    
            </div>
    
            <div class="noti-box">
                <h1>EVENT</h1>
                <p>다양한 혜택이 가득</p>
                <ul>
                    <li><a href="event.jsp">[이벤트] 2022년 임인년 검은 호랑이해 이벤트 ! </a></li>
                    <li><a href="event.jsp">[이벤트] 가정의 달 이벤트 ! </a></li>
                    <li><a href="event.jsp">[이벤트] 코로나 극복 이벤트 ! </a></li>
                    <li><a href="event.jsp">[이벤트] 여름 이벤트 ! </a></li>
                </ul>
            </div>
        </div>
    
        <div class="map_wrap">
            <div class="bg_box flex">
                <div class="bg_box1"></div>
                <div class="bg_box2"></div>
            </div>
            <div class="map_box">
    
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.2719577905823!2d127.02316621491029!3d37.501503435608285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca158e9c7640f%3A0xaa22996c3b700d95!2z7ISc7Jq47Yq567OE7IucIOyEnOy0iOq1rCDqsJXrgqjrjIDroZwgNDM5!5e0!3m2!1sko!2skr!4v1644303822867!5m2!1sko!2skr"
                    style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    
            </div>
    
            <div class="text_box">
                <h1>THE CARE</h1>
                <div class="text flex">
    
                    <div class="text1">
                        <p class="p1">주소</p>
                        <p class="p2">진로시간안내</p><br><br><br><br><br>
                        <p class="p3">찾아오시는 길</p>
                    </div>
    
                    <div class="text2">
                        <p class="p4">
                            서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
                        </p>
    
                        <p class="p5">
                            월 화 목 금 : AM 10:00 ~ PM 08:00<br>
                            수 요 일 : PM 02:00 ~ PM08:00<br>
                            토 요 일 : AM 10:00 ~ PM 03:00<br>
                            점심시간 : PM 01:00 ~ PM 02:00<br>
                            일요일, 공휴일 휴진<br>
                            토요일 점심시간 없음.
                        </p>
    
                        <p class="p6">
                            · 강남역 10번 출구 도보 5분<br>
                            · 신논현역 6번 출구 도보 5분<br>
                            · 버스 146번 신논현역.구교보타워사거리 하자 후 도보 141m<br>
                            · 버스 7007 신논현역.우딩빌딩 하자 후 도보 53m<br>
                        </p>
                    </div>
                </div>
            </div>
        </div>



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



    <!-- Initialize Swiper -->

    <!-- 3. 실행 스크립트 -->
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




            var swiper = new Swiper(".mySwiper", {
                cssMode: true,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                pagination: {
                    el: ".swiper-pagination",
                    clickable: true // 버튼 클릭 여부
                },
               autoplay: true,
                autoplaySpeed: 5000,
                keyboard: true
            });
    
    
            function SliderBox1__init() {
                $('.slider-box-1 > .slick').slick({
                    autoplay: true,
                    autoplaySpeed: 5000,
                    pauseOnHover: false,
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    responsive: [{
                        breakpoint: 1050, // 화면의 넓이가 600px 이상일 때 
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2
                        }
                    }, {
                        breakpoint: 850, // 화면의 넓이가 320px 이상일 때 
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1
                        }
                    }],
    
                    // arrows:true,
                    prevArrow: ".slider-box-1 > .arrows > .btn-left",
                    nextArrow: ".slider-box-1 > .arrows > .btn-right"
                });
            }
    
            $(function () {
                SliderBox1__init();
            });
    
    
            function SliderBox2__init() {
                $('.slider-box-2 > .slick').slick({
                    autoplay: true,
                    autoplaySpeed: 5000,
                    pauseOnHover: false,
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    prevArrow: ".slider-box-2 > .arrows > .btn-left",
                    nextArrow: ".slider-box-2 > .arrows > .btn-right"
                });
            }
    
            $(function () {
                SliderBox2__init();
            });
    
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