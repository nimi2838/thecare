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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

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

    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            
            <div class="swiper-slide  swiper-slide1">
                <img src="img/banner03.jpg" alt="">
                <div class="text-1"  style="position: absolute;
  top: 25%;
  left: 15%;
  transform: translate(-30%, -20%);
  text-align: start;">
                    <h1 style="font-size:45px; margin:0; font-weight:600;">여드름 흉터관리</h1>
                    <p style="font-size:45px; margin:-3px 0 0 0;font-weight:600;">아직도 피부 표면만 치료하고 계신가요 ?</p>
                    
                </div>

				<div class="text-2">
                        <p style="font-size:50px; margin:0;">피부 겉과 속을 모두 치료하는!</p>
						<h1 style="font-size:70px; margin:10px 0 0; color:#555;">여드름 케어</h1>
                    </div>
            </div>

            <div class="swiper-slide swiper-slide2">
                <img src="img/banner02.jpg" alt="">
                <div class="text-1" style="  position: absolute;  top: 38%;
  left: 60%;
  transform: translate(-30%, -20%);
  text-align: start; font-size: 30px; text-align:end; color: #af83b8;">
                    <h1 style="font-size:40px; margin-top: 10px;padding: 10px 0; font-weight: 300;color: #684070;">수술없이 슬림한 얼굴라인<br> <span style="font-size:70px; line-height: 130px;color: #52205c;">윤곽주사</span></h1>
                    <p style="font-size:45px; margin:-35px 0 0;color: #684070;">놀라운 효과 지금 바로 느껴보세요!</p>
                </div>
            </div>

			 <div class="swiper-slide swiper-slide3" style="color: #ff8290;">
                <img src="img/banner01.jpg" alt="">
                <div class="text-1" style=" position: absolute;
  top: 33%;
  left: 69%;
  transform: translate(-30%, -20%);
  text-align: start;  "> 
                    <h1 style="font-size: 70px;
	color: #ff8290; ">아쿠아필링</h1>
					<div style="text-align:center;">
					노폐물은 제거하고! <br> 수분은 채우고!
				</div>
                </div>
				
            </div>

			<div class="swiper-slide swiper-slide4" style="background:#ccc;">
                <img src="img/banner04.jpg" alt="">
                <div class="text-1" style="position: absolute; top: 37%; left: 24%; transform: translate(-30%, -20%); text-align: start;">
                    <h3 style="font-size: 48px; margin:0 0 0 5px; font-weight:300;">나를 위한 선택 !</h3>
					<h1 style="font-size: 100px; padding: 0; margin: 0px 0 15px;">하이코</h1>
                    <div style="font-size: 35px; padding: 0px 0 0; margin:0 0 0 5px; ">
                        과정은 <span>간단</span>하지만 결과는 <span>확실</span>하게! <br>
						더케어의 <span>핵심기술력</span>입니다.
						</div>
                </div>
            </div>

        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
    </div>


    <div class="slider-box-1">
        <p>DOCTORS</p>
        <div class="slick">

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum02.png);"></div>
                    <div class="name">
                        <span>김철수</span> 원장
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum03.png);"></div>
                    <div class="name">
                        <span>강건희</span> 원장
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum04.png);"></div>
                    <div class="name">
                        <span>이&nbsp;&nbsp;&nbsp;훈</span> 원장
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum05.png);"></div>
                    <div class="name">
                        <span>김영희</span> 원장
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum07.png);"></div>
                    <div class="name">
                        <span>최은혜</span> 원장
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum08.png);"></div>
                    <div class="name">
                        <span>박정우</span> 원장
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

        </div>
        <div class="arrows">
            <div class="btn-right">
                <img src="icon/doc_right.png" alt="">
            </div>
            <div class="btn-left">
                <img src="icon/doc_left.png" alt="">
            </div>
        </div>
    </div>


    <div class="mini-ban">
        <div class="text-box">
            <i>About, The Care <br>
                The Care의 생각</i>
            <p>고객이 바라는 최상의 아름다움의 완성, 피부 완성이 곧 美의 완성이라는 신념으로<br>
                고객의 젊음을 간직한 아름다운 비전과 함께 프리미엄 디에이징을 추구합니다.</p>
        </div>
    </div>


    <div class="card-wrap">

        <div class="card_box card_box1 flex flex-jc-c">
            <a href="about_1.html" class="card1 card">
                <div class="text-box">
                    <h1>THE CARE</h1>
                    <p>진심을 담은 치료로<br> 당신의 피부 밸런스를 지켜드리는 더케어 입니다.</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>

            <a href="#" class="card2 card">
                <div class="text-box">
                    <h1>여드름케어</h1>
                    <p>여드름 자국까지 완벽하게</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>
        </div>

        <div class="card_box card_box2 flex  flex-jc-c">
            <a href="#" class="card3 card">
                <div class="text-box">
                    <h1>걸그룹주사</h1>
                    <p>워너비 몸매가 될 수 있는 보톡스</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>

            <a href="#" class="card4 card">
                <div class="text-box">
                    <h1>필러</h1>
                    <p>트렌디한 감각과
                        디자인</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>

            <a href="#" class="card5 card">
                <div class="text-box">
                    <h1>브라이트닝</h1>
                    <p>피부본연의 아름다움</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>
        </div>

    </div>




    <div class="mini-banner">
        <div class="mini-box mini-1" style="">
		<div style="width: 900px; height:500px; top:-30px; left:-30px; position: absolute; background: #FF9a9a; z-index:-10;"></div>
            <div class="img-box">
                <img src="img/main-company-inpomation.jpg" alt="">
            </div>
        </div>
        <div class="mini-box mini-2">
            <div class="text-box">
                <h1>
                    질환별 맞춤 레이저 보유
				</h1>
                <p>
				숙련된 피부과 전문의와 첨단 장비의 만남으로<br>
				환자분이 편안하고 생생한 변화가 느껴지는 치료를 제공합니다.
				</p>
				<a href="guide">VIEW</a>
            </div>
        </div>
    </div>



    <div class="content-f flex">

        <div class="before-box">
            <h1>BEFORE & AFTER</h1>
            <p>고객님의 전후모습</p>
            <div class="slider-box-2">

                <div class="slick">
                    <div class="item">
                        <a href="review.html">
                            <div class="bg1" style="background-image:url(img/main-before-01.jpg);"></div>
                            <i class="fas fa-chevron-circle-right arr"></i>
                            <div class="bg2" style="background-image:url(img/main-after-01.jpg);"></div>
                        </a>
                    </div>

                    <div class="item">
                        <a href="review.html">
                            <div class="bg1" style="background-image:url(img/main-before-02.jpg);"></div>
                            <i class="fas fa-chevron-circle-right arr"></i>
                            <div class="bg2" style="background-image:url(img/main-after-02.jpg);"></div>
                        </a>
                    </div>

                    <div class="item">
                        <a href="review.html">
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
            <p>고객님의 전후모습</p>
            <ul>
                <li><a href="event.html">[이벤트] 2022년 임인년 검은 호랑이해 이벤트 ! </a></li>
                <li><a href="event.html">[이벤트] 2022년 임인년 검은 호랑이해 이벤트 ! </a></li>
                <li><a href="event.html">[이벤트] 2022년 임인년 검은 호랑이해 이벤트 ! </a></li>
                <li><a href="event.html">[이벤트] 2022년 임인년 검은 호랑이해 이벤트 ! </a></li>
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
                    <p class="p3">주차안내</p>
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
            <img src="./img/logo.png" width="150" alt="" style="margin-bottom: 20px;">
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
           // autoplay: true,
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
                // responsive: [{
                //     breakpoint: 1050, // 화면의 넓이가 600px 이상일 때 
                //     settings: {
                //         slidesToShow: 2,
                //         slidesToScroll: 2
                //     }
                // }, {
                //     breakpoint: 850, // 화면의 넓이가 320px 이상일 때 
                //     settings: {
                //         slidesToShow: 1,
                //         slidesToScroll: 1
                //     }
                // }],

                // arrows:true,
                prevArrow: ".slider-box-2 > .arrows > .btn-left",
                nextArrow: ".slider-box-2 > .arrows > .btn-right"
            });
        }

        $(function () {
            SliderBox2__init();
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
            scrollTrigger: {
                trigger: '.top-wrap',
                start: 'top -98px',
                scrub: true
            },
            height: '60px',
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




    </script>

</body>

</html>