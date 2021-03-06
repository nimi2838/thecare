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
  <link rel="stylesheet" href="css/review.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <title>전후사진</title>
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
							<li><a href="guide.jsp">시술안내/비용</a></li>
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
                                        <li><a href="guide.jsp">시술안내/비용</a></li>
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
							<li><a href="guide.jsp">시술안내/비용</a></li>
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
                                        <li><a href="guide.jsp">시술안내/비용</a></li>
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






    <div class="about-ban">
        <div class="text-box">
            <h1>케어원해</h1>
        </div>
    </div>


    <section id="review" class="content">
        <div class="inner">
            <h1>전후사진</h1>
            <p>치료 전후 달라진 상태를 직접 확인하세요</p>
            <div class="wrap">

                <ul class="tab">
                    <!-- 페이스 -->
                    <li>
                        <a href="#" class="menu">페이스</a>
                        <div class="panel ">
                            <div class="con"><ul>
                                <li>
                                    <div class="top top1">
                                        <div class="imgs">
                                            <img src="img/review-f-yun.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.01.05</h1>
                                                    <h1>22.04.18</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>윤곽주사</h1>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top top1">
                                        <div class="imgs">
                                            <img src="img/review-f-face.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.02.15</h1>
                                                    <h1>22.06.27</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>페이스필러</h1>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top top1">
                                        <div class="imgs">
                                            <img src="img/review-f-hi.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.03.07</h1>
                                                    <h1>22.07.26</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>하이코</h1>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top">
                                        <div class="imgs">
                                            <img src="img/review-f-jo.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.05.16</h1>
                                                    <h1>22.08.12</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>조각주사</h1>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top">
                                        <div class="imgs">
                                            <img src="img/review-f-sa.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.06.14</h1>
                                                    <h1>22.07.25</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>사각턱 보톡스</h1>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top">
                                        <div class="imgs">
                                            <img src="img/review-f-sa2.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.09.04</h1>
                                                    <h1>22.11.15</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>입꼬리 필러</h1>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            </div>
                        </div>
                    </li>

                    <!-- 스킨 -->

                    <li>
                        <a href="#" class="menu">스킨</a>
                        <div class="panel ">
                            <div class="con">
                                <ul>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-s-clarity2.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.01.20</h1>
                                                        <h1>22.04.27</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>클라리티</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-s-yeo2.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.02.05</h1>
                                                        <h1>22.06.13</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>여드름 케어</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-s-a.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.03.14</h1>
                                                        <h1>22.07.16</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>아쿠아필</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-s-yeo.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.05.10</h1>
                                                        <h1>22.08.08</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>여드름 관리</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-s-clarity.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.09.14</h1>
                                                        <h1>22.10.25</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>클라리티</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-s-fil.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.09.23</h1>
                                                        <h1>22.11.18</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>알라딘 필링</h1>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>

                    <!-- 바디 -->
                    <li>
                        <a href="#" class="menu">바디</a>
                        <div class="panel ">
                            <div class="con">
                                <ul>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-b-girl.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.01.01</h1>
                                                        <h1>22.04.12</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>걸그룹 주사</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-b-jong2.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.02.11</h1>
                                                        <h1>22.06.21</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>종아리 보톡스</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-b-body.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.03.21</h1>
                                                        <h1>22.05.26</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>바디 보톡스</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-b-body2.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.05.16</h1>
                                                        <h1>22.08.19</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>바디 슈링크</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-b-jong.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.06.04</h1>
                                                        <h1>22.07.20</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>종아리 보톡스</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-b-girl2.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.09.12</h1>
                                                        <h1>22.11.18</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>걸그룹 주사</h1>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
                <p>개개인에 따라 시술 후 붓기, 염증 등 부작용이 발생 할 수 있으니 시술과 관련된 주의사항을 충분히 숙지하시기 바랍니다.</p>
            </div>

        </div>
    </section>










<!-- 푸터 -->

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
    


    



<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>

<!-- Initialize Swiper -->
<script>

    var menu = document.querySelector('.menu');
    menu.onclick = function() {
        text.style.color = 'pink';
    }


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

$(function(){
    $('#review .menu').on('click', function(e){
        var i = $(this).parents('li').index();
        e.preventDefault(); 
    
        $('#review .panel').hide();
        $(this).next('.panel').show();
        $('#review .tab>li').removeClass('on').eq(i).addClass('on');
    });
    $('#review .menu').first().trigger('click');

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

    

gsap.to('.top-wrap > .top-box2', {
scrollTrigger:{
trigger:'.top-wrap',
start:'top -98px',
scrub:true
},height:'60px',textalign:'center',top:'0',position:'fixed',background:'white'
});





</script>
</body>
</html>