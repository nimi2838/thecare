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
    <link rel="stylesheet" href="css/themore.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <title>THE MORE</title>
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
							<li><a href="guide.jsp">안내/비용</a></li>
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
                                        <li><a href="guide.jsp">안내/비용</a></li>
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
							<li><a href="guide.jsp">안내/비용</a></li>
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
                                        <li><a href="guide.jsp">안내/비용</a></li>
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








        <section id="tip" class="content">
            <div class="inner">

                <div class="title">
                    <div class="title-img"><img src="img/color-left.png" alt=""></div>    
                    <div class="title-imgs"><img src="img/color-right.png" alt=""></div>
                    
                    <h1>Beauty Tips</h1>
                    <div class="sun">
                        <p>피부 타입별</p>
                        <h4>피부 유형 TIP</h4>
                    </div>
                </div>

                <div class="cont">
                    <img data-aos="fade-down" src="img/tip-1.jpg" alt="" width="500px" height="300px">
                    <div class="cont-txt">
                        <p>대기가 차가워지고 건조한<br>
                    날씨는 우리의 피부를 더욱 상하게합니다.</p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img data-aos="fade-right" src="img/tip-2.jpg" alt="" width="500px" height="300px">
                    </div>
                    <div class="conts-txt">
                        <p>낮과 밤의 일교차가 커,<br>
                            피부가 자극받기 쉽기 때문에<br>
                            더욱 각별한 관리를 필요로 하죠.
                        </p>
                        <p>올바른 피부 관리를 위해서는<br>
                            본인의 피부가 어떤 타입인지<br>
                            확실히 알아두는 것이 좋습니다.
                        </p>
                    </div>
                </div>

                <div class="cont">
                    <img data-aos="fade-down" src="img/tip-3.png" alt="">
                    <div class="cont-txt">
                        <p>바우만 박사의 유전학에서 다루는<br>
                            피부의 특성을 바탕으로 3가지 기준으로<br>
                            피부 유형을 나눴습니다. </p>
                    </div>
                </div>
            </div>
        </section>


    


       
        <section id="mbti" class="content">
            <div class="inner">
                <div class="wrap">

                    <div class="con">
                        <h2>유수분 밸런스</h2>
                        <div class="you">
                            <div class="box box1">
                                <p>피지 분비량과 수분 보유랑<br>
                                    모두 적어 거칠고<br>
                                    각질과 주름이 잘 생기는 타입
                                </p>
                                <div class="circle circle1">
                                    <h1>D</h1>
                                    <p>건성<br>
                                        Dry
                                    </p>
                                </div>
                            </div>
                            <div class="box box2">
                                <p>피지 분비량이 많아<br>
                                    번들거리고 여드름이<br>
                                    자주 생기는 타입<br>
                                </p>
                                <div class="circle circle2">
                                    <h1>O</h1>
                                    <p>지성<br>
                                        Oily
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="con">
                        <h2>피부 민감도 </h2>
                        <div class="you">
                            <div class="box box3">
                                <p style="margin-top: 30px;">피부가 얇고 섬세해<Br>
                                    외부 자극에 쉽게 반응하는 타입
                                </p>
                                <div class="circle circle3">
                                    <h1>S</h1>
                                    <p>민감성<br>
                                        Sensitive
                                    </p>
                                </div>
                            </div>
                            <div class="box box4">
                                <p>피부 장벽이 견고해<br>
                                    외부적인 스트레스에 대해<br>
                                    견디는 힘이 강한 타입<br>
                                </p>
                                <div class="circle circle4">
                                    <h1>R</h1>
                                    <p>저항성<br>
                                        Resistant
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="con">
                        <h2>색소 활성도 </h2>
                        <div class="you">
                            <div class="box box5">
                                <p>멜라닌 활성도가 높아<Br>
                                    기미, 주근깨 혹은 잡티 등<br>
                                    눈에 보이는 색소가 많은 타입
                                </p>
                                <div class="circle circle5">
                                    <h1>P</h1>
                                    <p>색소성<br>
                                        Pigment
                                    </p>
                                </div>
                            </div>
                            <div class="box box6">
                                <p style="margin-top: 30px;">멜라닌 활성도가 낮아<Br>
                                    눈에 보이는 색소가 적은 타입
                                </p>
                                <div class="circle circle6">
                                    <h1>N</h1>
                                    <p>비색소성<br>
                                        Non-Pigment
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>



<section id="type" class="content">
            <div class="inner">
                <h2>"피부 유형 8가지"</h2>
                <div class="wrap">
                    <ul class="tab">
                        <li>
                            <a href="#" class="menu menu1">DSP</a>
                            <div class="panel">
                                <div class="type-img">
                                    <img src="img/dsp.png" alt="" width="250px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>DSP</h1>
                                    <p class="type_txt">반복되는 피부 염증과 피부색이 고르지 않군요!</p>
                                    <p class="type_txt">피부건조와 염증이 잘 나타나 주름이 생기기 쉽고,<br>
                                     &nbsp;&nbsp;&nbsp;피부건조 방지를 주 목표로 하여 피부장벽을 보호해주는<br>&nbsp;&nbsp; 스킨케어 제품을 사용해주세요!</p>
                                    <p class="type_txt">염증과 색소 침착을 잡는 것이 중요해 레이저 치료를 <br>&nbsp;&nbsp; 추천드려요 ! </p>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu2">DSN</a>
                            <div class="panel ">
                                <div class="type-img">
                                    <img src="img/dsn.png" alt="" width="250px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>DSN</h1>
                                    <p class="type_txt">과거염증으로 인해서 피부건조가 나타난 경우가 많군요!</p>
                                    <p class="type_txt">특히 이 유형은 피부결은 고르나 주름이 잘 생겨요 </p> 
                                    <p class="type_txt">피부장벽을 보호하기 위해 리놀레익산, 오메가3 섭취와<br>
                                        &nbsp;&nbsp;&nbsp;보습제, 레티노이드, 항상환제, 항염증 제품을 추천드려요.
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu3">DRP</a>
                            <div class="panel ">
                                <div class="type-img">
                                    <img src="img/drp.png" alt="" width="280px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>DRP</h1>
                                    <p class="type_txt" style="margin: -6px 0;">피부색이 고르지 않고 피부가 건조하군요 !</p>
                                    <p class="type_txt" style="margin: -6px 0;">피부건조, 색소침착이 불균형하게 있어 주름이 생기기 <br>&nbsp;&nbsp;&nbsp;쉬워요. </p>
                                    <p class="type_txt" style="margin: -6px 0;">매일 SPF30이상의 선크림과 보습제, 피부미백제를 <br>&nbsp;&nbsp;&nbsp;사용해주세요!</p>
                                    <p class="type_txt" style="margin: -6px 0;">보습제, 항산화제, 레티노이드, 알파히드록시산제품은<br>&nbsp;&nbsp;&nbsp;피부색을 균일하게 하는데 도움을 줘요 !
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu4">DRN</a>
                            <div class="panel ">
                                <div class="type-img">
                                    <img src="img/drn.png" alt="" width="250px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>DRN</h1>
                                    <p class="type_txt">피부색은 고르지만 쉽게 건조해지군요 !</p>
                                    <p class="type_txt">건조한 피부는 주름이 쉽게 생길 수 있으니 항산화제,<br>&nbsp;&nbsp;&nbsp;SPF15이상의 제품을 사용하는 것이 좋고 
                                        밤엔 레티노이드<br>&nbsp;&nbsp;&nbsp;제품을 사용하는 것이 좋아요 !</p>
                                    <p class="type_txt">식생활과 생활습관 교정이 꼭 ! 필요하며 폼클렌징 사용은 &nbsp;&nbsp;&nbsp;좋지 않아요.
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu5">OSP</a>
                            <div class="panel ">
                                <div class="type-img" style="margin-left: -20px;">
                                    <img src="img/osp.png" alt="" width="310px" height="250px">
                                </div>
                                <div class="type-txt" >
                                    <h1>OSP</h1>
                                    <p class="type_txt">피부염증과  고르지 않은 색소침착, 주름이 생기기 쉬운 <br>&nbsp;&nbsp;&nbsp;타입이에요! </p>
                                    <p class="type_txt">반드시 민감성 제품만 사용할 것을 추천하며 각질제거를 <br>&nbsp;&nbsp;&nbsp;위한 필링과  가급적 자제하셔야 합니다 !</p>
                                    <p class="type_txt">여드름부터 색소,주름까지 모든 종류의 문제를 보일 수 <br>&nbsp;&nbsp;&nbsp;있는
                                        피부로 민감성 제품만 사용하도록 유의해주세요!
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu6">OSN</a>
                            <div class="panel ">
                                <div class="type-img" style="margin-left: -20px;">
                                    <img src="img/osn.png" alt="" width="290px" height="250px">
                                </div>
                                <div class="type-txt" >
                                    <h1>OSN</h1>
                                    <p class="type_txt">피부가 번들거리며 염증이 생기기 쉽군요 !</p>
                                    <p class="type_txt">햇빛에 쉽게 붉어지고 번들거려 주름이 생기기 쉽지만 
                                        <br>&nbsp;&nbsp;&nbsp;피지가 항산화 작용을 하여 주름이 덜 생기고 피부노화를 <br>&nbsp;&nbsp;&nbsp;조금 막아주지만 부족해요.</p>
                                    <p class="type_txt">번들거림과 염증반응으로 붉은 기가 있어 저자극 제품 <br>&nbsp;&nbsp;&nbsp;사용을 추천드려요 !
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu7">ORP</a>
                            <div class="panel ">
                                <div class="type-img" style="margin-left: 30px;">
                                    <img src="img/orp.png" alt="" width="190px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>ORP</h1>
                                    <p class="type_txt">피부색이 고르지 않고 주름이 덜 생기지만 피부결 유지를 <br>&nbsp;&nbsp;&nbsp;위해선 선크림은 필수에요!</p>
                                    <p class="type_txt">피지분비는 많으나 노화를 방지하긴 모자라서
                                        항산화제를 <br>&nbsp;&nbsp;&nbsp;식이요법과 스킨케어제품에서 보충해야해요! </p>
                                    <p class="type_txt">SPF 30+ 이상의 제품은 브라이트닝, SPF 50+ 이상의 <br>&nbsp;&nbsp;&nbsp;제품은 항산화 기능이 되는 제품 사용을 권장드려요 !
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu8">ORN</a>
                            <div class="panel ">
                                <div class="type-img">
                                    <img src="img/orn.png" alt="" width="250px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>ORN</h1>
                                    <p class="type_txt">피부색이 고르며 노화도 적은 이 유형은 건강하고 광채가 <br>&nbsp;&nbsp;&nbsp;나는 탱탱한 피부에요!</p>
                                    <p class="type_txt">부드럽고 유연한 피부가 특징이며 모공은 조금 큰 편이라 <br>&nbsp;&nbsp;&nbsp;관리를 해주지 않으면
                                        블랙헤드가 생기기 쉬워요 ! </p>
                                    <p class="type_txt">피지 흡착 성분이 있는 제품과 항산화 기능이 있는 <br>&nbsp;&nbsp;&nbsp;필링제를 추천드려요!
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <p>글씨를 클릭해보세요.</p>
            </div>
        </section>




        <section id="choice" class="content">
            <div class="inner">

                <div class="title">
                    <h1>클렌저 CHOICE</h1>
                    <p>‘피부 타입’은 피부의 모든 기능에 대한 요약입니다.<br>
                        피부 타입과 개별적인 피부의 니즈에 맞춘 부드러운 클렌징 제품의 사용을 권장합니다. </p>
                </div>
                <div class="wrap">
                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-1.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>클렌징 밀크 -- 관리가 필요한 피부를 위한 부드러운 세정</h2>
                        <p>
                            가볍고 섬세한 텍스처를 선호하는 분들이 좋아하는 클렌징 밀크타입은<br>
                            피부에서 수분을 앗아가지 않고 아주 순하면서도 꼼꼼한 클렌징이 가능합니다. <br>
                            다양한 피부 타입에 적합하지만 특히 건성 피부와 민감성 피부에 이상적입니다. 
                        </p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-2.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>크림 클렌징 -- 건성 피부를 비롯해 추운 기후와 겨울철에 이상적</h2>
                        <p>
                            건성 피부와 악건성 피부에 적합한 크림 클렌저는 <br>
                            화이트 클레이가 풍부하게 함유되어 잔여물을 씻어내고 지방산이 풍부한 
                            식물성 성분이 거품 없는 순한 클렌징을 제공하여 피부를 유연하고 부드럽게 가꿔줍니다. 
                        </p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-3.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>클렌징 오일 -- 메이크업과 잔여물을 효과적으로 부드럽게 관리</h2>
                        <p>
                            메이크업, 피지, 잔여물의 지질 성분을 분해해서 신속하게 제거하는 역할을 합니다.<br>
                            오일 제품들은 건성 피부에만 어울린다는 인식이 있지만 
                            클렌징 오일은 적절한 피지를 유지하는데 일조해 <br>
                            지성 피부에도 도움이 될 수 있습니다.  
                        </p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-4.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>젤 클렌저 -- 다양한 피부 타입을 위한 깊은 세정</h2>
                        <p>
                            젤 클렌저는 일반적으로 오일, 밀크나 크림 타입 클렌저에 비해 <br>
                            계면 활성제 함량이 다소 높아서 특히 피지 생성이 늘어나는 여름철에 적합하며<br> 
                            철저하고 상쾌한 클렌징을 도와줍니다.  
                        </p>
                    </div>
                </div>
            </div>
            </div>
        </section>

    
    
    
        <div class="footer flex flex-jc-c">
            <div class="text">
                <img src="./img/logo.png" width="150" alt="" style="margin-bottom: 20px;">
                <p class="text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
                </p>
                <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 대표자 : 봉조율
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 전화번호 : 02-517-0912
                </p>
                <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
            </div>
        </div>
    


         <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
     
         <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>
     
         <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<script>

        AOS.init();


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


         $('#type .tab>li>a').on('click', function(e){
              e.preventDefault();
              $('#type .panel').hide();
              $(this).next('.panel').show();
            });

            $('#type .tab>li>a').first().trigger('click');

            

     </script>
    
    </body>
    
    </html>