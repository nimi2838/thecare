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
  <link rel="stylesheet" href="css/custom.css" />
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
                        <input class="form" name="keyword" type="text" placeholder="검색어를 입력해주세요." >
                    </td>
                    <td class="schBtn">
                        <input type="image" src="img/Search_thin_icon.png" alt="검색" onsubmit="search_form()" style="width: 30px; height: 30px;">
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
                    <a>회사소개</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">더케어란?</a>
                            </li>
                            <li><a href="about_2.jsp">더케어 의료진</a></li>
                            <li><a href="about_3.jsp">더케어 오시는길</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>시술안내</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">시술안내</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>시술예약</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">시술예약</a></li>
                            <li><a href="change.jsp">예약확인/변경/취소</a></li>
                            <li><a href="new_view.jsp">최근본시술</a></li>
                        </ul>
                    </div>
                </li>
                
                <li class="menu">
                    <a href="custom.jsp">맞춤시술</a>
                </li>
                <li class="menu">
                    <a>커뮤니티</a>
                    <div>
                        <ul>
                            <li><a href="noti.jsp">공지사항</a></li>
                            <li><a href="qna.jsp">1:1문의</a></li>
                            <li><a href="event.jsp">이벤트</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>





    <section id="welcome" class="content">
        <header>
        <div class="inner">
                <div class="header-content">
                    <h2>피부타입을 <br>
                        알고싶으신가요?</h2>
                    <p>나의 피부타입을 알아보세요!<br>
                        관리법을 추천해드릴게요</p>
                    <a href="custom-test.html">지금 시작하기
                    </a>
                </div>
        </div>
    </header>
    </section>



<div class="question">
    <div class="swiper mySwiper">
        <h2>피부관리하기 힘드시죠?</h2>

        <div class="swiper-wrapper">

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <img src="img/custom-icon-1.png" alt="" >
                        <h2>로션을 발라도<br>
                            피부당김이 느껴져요.</h2>
                        <p>정**님, 21세 , 대학생 </p>
                    </div>
                </div>
            </div>

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <img src="img/custom-icon-2.png" alt="" width="60px" height="60px">
                        <h2>요즘 마스크로 인해<br>
                            피부가 뒤집어져서 속상해요.</h2>
                        <p>이**님, 25세 , 대학생 </p>
                    </div>
                </div>
            </div>

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <img src="img/custom-icon-3.png" alt="" width="60px" height="60px">
                        <h2>화장을 하고 나서 시간이 지나면<br>
                            얼굴에 유분기가 많아져요.</h2>
                        <p>김**님, 28세 , 직장인  </p>
                    </div>
                </div>
            </div>

            
        </div>
        <div class="swiper-pagination"></div>
    </div>
</div>



<section id="fine" >
    <div class="inner">

        <div class="wrap">
            <div class="thank">
            <h3>이젠, 괜찮아요.</h3>
            <div>
                <ul>
                    <li class="test">
                        <h1 >01</h1>
                        <img class="animate__animated animate__flash animate__delay-2s"  src="img/custom-1.png" alt="" width="80px" height="80px" >
                        <h2>맞춤설문</h2>
                        <p>딱 3분! 간단하게 체크하고<br>
                            내 고민에 맞는 피부타입 찾기 </p>
                    </li>
                    <li class="test">
                        <h1>02</h1>
                        <img class="animate__animated animate__shakeX animate__delay-2s" src="img/custom-2.png" alt="" width="80px" height="80px">
                        <h2>관리법</h2>
                        <p>피부타입에 맞는 관리법으로<br>
                         원하는 피부 가지기 </p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    </div>
</section>


<div class="start">
    <div class="wrapper">
        <h1>맞춤설문으로<br>
            피부타입을 알아보세요.</h1>
        <a href="custom-test.html">지금 시작하기</a>
    </div>
</div>





    


    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo.png" width = "150" alt="" style="margin-bottom: 20px;">
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
            // arrows:true,
            prevArrow: ".slider-box-1 > .arrows > .btn-left",
            nextArrow: ".slider-box-1 > .arrows > .btn-right"
        });
    }

    $(function () {
        SliderBox1__init();
    });


//         gsap.to('body', {
//   scrollTrigger:{
//     start:'top 0',
//     end:'top 800px',
//     trigger:'.top-box2',
//     markers: true,
//     pin:true
//   },
// });

gsap.to('.top-wrap > .top-box2', {
scrollTrigger:{
trigger:'.top-wrap',
start:'top -98px',
scrub:true
},height:'60px',textalign:'center',top:'0',position:'fixed',background:'white'
});



    // swiper-pagination-bullet-active


    let no;


$(function() {
    $("#welcome .wrap > .box").on("click", function() {
        no=$(this).index()+1;
        $("#welcome .inner .art1_big").hide();
        $("#welcome .art1_big"+no).show();
    })

    $(".art1_big_close").on("click", function() {
        $("#welcome .inner .art1_big").hide();
    })
    
});

$(".art1 .art1_big").click(function (e) {
        if (e.target.className != ".modal") {
          return false;
        } else {
          $(".modal").hide();
        }
});


</script>
</body>
</html>