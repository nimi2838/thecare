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
  <link rel="stylesheet" href="css/about_3.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <title>더케어란?</title>
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
                    <a>더 케어란</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">스토리</a></li>
                            <li><a href="about_3.jsp">오시는길</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>피부타입</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">더 체크</a></li>
                            <li><a href="qna.jsp">더 소통</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>시술</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">안내/비용</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>예약</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">바로예약</a></li>
                            <li><a href="change.jsp">예약확인/변경/취소</a></li>
                            <li><a href="new_view.jsp">최근본시술</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>커뮤니티</a>
                    <div>
                        <ul>
                            <li><a href="noti.jsp">공지사항</a></li>
                            <li><a href="event.jsp">이벤트</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>



    <div class="about-ban">
        <div class="text-box">
            <span>마 음 편 히 방 문 하 세 요.</span><br>
            <i>진료시간/오시는길</i>
            <p>플렉스피부과는 고객님들의 시간도 생각합니다.<br>
                예약 및 상담을 원하시는 고객님께서는 진료시간을 참고하시어 예약 및 내원해주시기 바랍니다.</p>
        </div>
    </div>



   


    <section id="welcome" class="content">
        <div class="inner">
            <div class="title">본점 둘러보기</div>
            <div class="wrap">
    <div class="swiper mySwiper">
        
        <div class="swiper-wrapper">

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <h1>1F 데스크, 대기실</h1>
                        <p>The Care 1층 대기실에서 접수 및 진료안내를 받으실 수 있습니다.</p>
                    </div>
                    <div class="img-1">
                        <img src="img/thecare-info1.jpg" alt="" width="460px" height="300px" >
                    </div>
                    <div class="img-2">
                        <img src="img/thecare-info2.jpg" alt="" width="1000px" height="600px">
                            <p>1F Desk, Waiting Room</p>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <h1>2F 수면마취, 제모 시술 </h1>
                        <p>The Care 본점 2층에서는 수면 마취, 제모 시술을 받아보실 수 있습니다.</p>
                    </div>
                    <div class="img-1">
                        <img src="img/thecare-info3.jpg" alt="" width="460px" height="300px" >
                    </div>
                    <div class="img-2">
                        <img src="img/thecare-info4.jpg" alt="" width="1000px" height="600px">
                        <p>2F Sleep anesthesia, Hair removal</p>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <h1>3F 보톡스, 필러, 레이저 시술실</h1>
                        <p>The Care 본점 3층은 보톡스, 필러, 레이저 시술실입니다.</p>
                    </div>
                    <div class="img-1">
                        <img src="img/thecare-info5.jpg" alt="" width="460px" height="300px" >
                    </div>
                    <div class="img-2">
                        <img src="img/thecare-info6.jpg" alt="" width="1000px" height="600px">
                        <p>3F Botox, Filler, Laser Room</p>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <h1>4F 보톡스, 필러, 레이저 시술실</h1>
                        <p>The Care 본점 4층은 보톡스, 필러, 레이저 시술실입니다.</p>
                    </div>
                    <div class="img-1">
                        <img src="img/thecare-info7.jpg" alt="" width="460px" height="300px" >
                    </div>
                    <div class="img-2">
                        <img src="img/thecare-info8.jpg" alt="" width="1000px" height="600px">
                        <p>4F Botox, Filler, Laser Room</p>
                    </div>
                </div>
            </div>

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <h1>5F 두피탈모케어, 스파시설</h1>
                        <p>The Care 본점 5층은 두피케어&스파시설이 마련되어 있습니다.</p>
                    </div>
                    <div class="img-1">
                        <img src="img/thecare-info9.jpg" alt="" width="460px" height="300px" >
                    </div>
                    <div class="img-2">
                        <img src="img/thecare-info10.jpg" alt="" width="1000px" height="600px">
                        <p>5F Hair, loss care, Spa</p>
                    </div>
                </div>
            </div>
        </div>
            
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>

    </div>
</div>
</div>
</section>




<!-- 
<div class="map_wrap">
    <div class="bg_box flex">
        <div class="bg_box1"></div>
        <div class="bg_box2"></div>
    </div>
    <div class="map_box">

        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.2719577905823!2d127.02316621491029!3d37.501503435608285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca158e9c7640f%3A0xaa22996c3b700d95!2z7ISc7Jq47Yq567OE7IucIOyEnOy0iOq1rCDqsJXrgqjrjIDroZwgNDM5!5e0!3m2!1sko!2skr!4v1644303822867!5m2!1sko!2skr"style="border:0;" allowfullscreen="" loading="lazy"></iframe>



    </div>

    <div class="text_box">
        <h1>THE CARE</h1>
        <div class="text flex">

            <div class="text1">
                <p class="p1">주소</p>
                <p class="p2">진로시간안내</p><br><br><br><br><br>
                <p class="p3">주차안내</p>
            </div>

            <div class="text2">
                <p class="p4">
                    서울특별시 서초구 강남대로 439 ( 멀티빌딩 9층 )
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
                    병원 건물 주차장 주차 가능<br>
                    · 건물 내부 주차장 (30분 무료 / 2000cc급 승용차 가능)<br>
                    · 외부 건물 주차장 (지점 문의)
                </p>
            </div>
        </div>
    </div>
</div>

 -->


 <div class="map_wrap">
    <div class="bg_box flex">
        <div class="bg_box1"></div>
        <div class="bg_box2"></div>
    </div>
    <div class="map_box">

        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.2719577905823!2d127.02316621491029!3d37.501503435608285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca158e9c7640f%3A0xaa22996c3b700d95!2z7ISc7Jq47Yq567OE7IucIOyEnOy0iOq1rCDqsJXrgqjrjIDroZwgNDM5!5e0!3m2!1sko!2skr!4v1644303822867!5m2!1sko!2skr"style="border:0;" allowfullscreen="" loading="lazy"></iframe>



    </div>

    <div class="text_box">
        <h1>THE CARE</h1>
        <div class="text flex">

            <div class="text1">
                <p class="p1">주소</p>
                <p class="p2">진로시간안내</p><br><br><br><br><br>
                <p class="p3">주차안내</p>
            </div>

            <div class="text2">
                <p class="p4">
                    서울특별시 서초구 강남대로 439 ( 멀티빌딩 9층 )
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
                    병원 건물 주차장 주차 가능<br>
                    · 건물 내부 주차장 (30분 무료 / 2000cc급 승용차 가능)<br>
                    · 외부 건물 주차장 (지점 문의)
                </p>
            </div>
        </div>
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
},height:'67px',textalign:'center',top:'0',position:'fixed',background:'white'
});



    // swiper-pagination-bullet-active
</script>
</body>
</html>