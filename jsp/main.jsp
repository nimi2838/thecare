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

    <title>����������</title>
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
               <!--  <li class="menu">
                    <a>������</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">�ȳ�/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li> -->
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
                            <li><a href="noti.html">��������</a></li>
                            <li><a href="event.html">�̺�Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>

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
                    <h2>THE CARE ��õ</h2>
                    <p>20�� ���డ �ް� �;��ϴ� �ü���?</p>
                </div>
                <div class="wrap">
                    <ul class="tab">
                        <li>
                            <a href="#" class="menu menu1">����</a>
                            <div class="panel ">
                                <div class="mini">
                                    <h1>TOP 3</h1>
                                <img src="img/top.png" alt="" width="50px" height="50px">
                                </div>
                                <div class="con gender">
                                    <ul>
                                        <li>
                                            <div class="top top1">
                                                <a href="sub_sk02.jsp?prdNo=sk02" class="yeo"><img src="img/best-yeo.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>1��</p>
                                                <h4>���帧 �ɾ�</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top1">
                                                <a href="sub_sk01.jsp?prdNo=sk01" class="yeo"><img src="img/best-ah.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>2��</p>
                                                <h4>����� ��</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top1">
                                                <a href="sub_li02.jsp?prdNo=li02" class="yeo" class="yeo"><img src="img/best-yun.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>3��</p>
                                                <h4>���� �ֻ�</h4>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu2">����</a>
                            <div class="panel ">
                                <div class="mini">
                                    <h1>TOP 3</h1>
                                <img src="img/top.png" alt="" width="50px" height="50px">
                                </div>
                                <div class="con man">
                                    <ul>
                                        <li>
                                            <div class="top top2">
                                                <a href="sub_sk02.jsp?prdNo=sk02" class="yeo"><img src="img/best-yeo.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>1��</p>
                                                <h4>���帧 �ɾ�</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top2">
                                                <a href="sub_li02.jsp?prdNo=li02" class="yeo"><img src="img/best-yun.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>2��</p>
                                                <h4>���� �ֻ�</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top2">
                                                <a href="sub_sk01.jsp?prdNo=sk01" class="yeo"><img src="img/best-ah.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>3��</p>
                                                <h4>����� ��</h4>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu3">����</a>
                            <div class="panel ">
                                <div class="mini">
                                    <h1>TOP 3</h1>
                                <img src="img/top.png" alt="" width="50px" height="50px">
                                </div>
                                <div class="con woman">
                                    <ul>
                                        <li>
                                            <div class="top top3">
                                                <a href="sub_sk01.jsp?prdNo=sk01" class="yeo"><img src="img/best-ah.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>1��</p>
                                                <h4>����� ��</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top3">
                                                <a href="sub_li02.jsp?prdNo=li02" class="yeo"><img src="img/best-yun.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>2��</p>
                                                <h4>���� �ֻ�</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top top3">
                                                <a href="sub_li01.jsp?prdNo=li01" class="yeo"><img src="img/best-sa.png" alt=""></a>
                                            </div>
                                            <div class="txt">
                                                <p>3��</p>
                                                <h4>�簢�� ���彺</h4>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <p>20�� ���࿡�� ���������� ����� �������� �����Ͽ����ϴ�.</p>
            </div>
        </section>



     <div class="slider-box-1">
            <h4>DOCTORS</h4>
            <p>�Ƿ���</p>
            <div class="slick">
    
                <div class="item">
                    <a >
                        <div class="bg" style="background-image:url(img/doctor_list_thum02.png);"></div>
                        <div class="name">
                            <p>���彺 ����</p>
                            <span>��ö��</span> ����
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
                <div class="item">
                    <a >
                        <div class="bg" style="background-image:url(img/doctor_list_thum03.png);"></div>
                        <div class="name">
                        <p>���彺 ����</p>
                            <span>������</span> ����
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
                <div class="item">
                    <a >
                        <div class="bg" style="background-image:url(img/doctor_list_thum04.png);"></div>
                        <div class="name">
                        <p>ü�� ����</p>
                            <span>��&nbsp;&nbsp;&nbsp;��</span> ����
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
                <div class="item">
                    <a>
                        <div class="bg" style="background-image:url(img/doctor_list_thum05.png);"></div>
                        <div class="name">
                        <p>�ʷ� ����</p>
                            <span>�迵��</span> ����
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
                <div class="item">
                    <a >
                        <div class="bg" style="background-image:url(img/doctor_list_thum07.png);"></div>
                        <div class="name">
                        <p>������ ����</p>
                            <span>������</span> ����
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
                <div class="item">
                    <a >
                        <div class="bg" style="background-image:url(img/doctor_list_thum08.png);"></div>
                        <div class="name">
                        <p>�Ǻ� ����</p>
                            <span>������</span> ����
                            <div class="bg1"></div>
                        </div>
                    </a>
                </div>
    
            </div>
        </div>
    
    
        <div class="mini-ban">
            <div class="text-box">
                <div>
                    <p>
                    �� �Ǻ�Ÿ���� �ñ��ϴٸ�?<br>
                    �׽�Ʈ�� ���� �˾ƺ�����!
                    </p><a href="custom-test.jsp">TEST</a>
                </div>
            </div>
        </div>


	 <div class="card-wrap">
            <div class="cardtt">
                <h1>SEASONS</h1>
                <h4>�������� �ʿ��� �ü�</h4>
            </div>
            
            <div class="card_box card_box1 flex ">
                <a href="sub_sk01.jsp?prdNo=sk01" class="card1 card">
                    <div class="text-box">
                        <h1>SPRING</h1>
                        <p>��</p>
                    </div>
                    <div class="bg">
                        <h4>
                            �������� ����,<br>
                            �̼������� �ΰ����� �Ǻο�<br>
                            <span>����� ��</span>
                        </h4>
                        <div class="view">GO</div>
                    </div>
                </a> 

                <a href="sub_sk02.jsp?prdNo=sk02" class="card2 card">
                    <div class="text-box">
                        <h1>SUMMER</h1>
                        <p>����</p>
                    </div>
                    <div class="bg">
                        <h4>
                            ���� �ڿܼ�����<br>
                            ������ ������ ������ ������<br>
                            <span>���帧 �ɾ�</span>

                        </h4>
                        <div class="view">GO</div>
                    </div>
                </a>
    
                <a href="sub_sk03.jsp?prdNo=sk03" class="card3 card">
                    <div class="text-box">
                        <h1>FALL</h1>
                        <p>����</p>
                    </div>
                    <div class="bg">
                        <h4>
                            �ϱ��� ũ�� ������<br>
                            �������� Ȯ��Ǵ� ������<br>
                            <span>Ŭ��Ƽ</span>
                        </h4>
                        <div class="view">GO</div>
                    </div>
                </a>
    
                <a href="sub_li03.jsp?prdNo=li03" class="card4 card">
                    <div class="text-box">
                        <h1>WINTER</h1>
                        <p>�ܿ�</p>
                    </div>
                    <div class="bg">
                        <h4>
                            �������� ����� ����<br>
                            ���� ȸ���� ������ �ܿ￣<br>
                            <span>�����ֻ�</span>
                        </h4>
                        <div class="view">GO</div>
                    </div>
                </a>
            </div>
        </div>



    <div class="content-f flex">
    
            <div class="before-box">
                <h1>BEFORE & AFTER</h1>
                <p>������ ���ĸ��</p>
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
                <p>�پ��� ������ ����</p>
                <ul>
                    <li><a href="event.html">[�̺�Ʈ] 2022�� ���γ� ���� ȣ������ �̺�Ʈ ! </a></li>
                    <li><a href="event.html">[�̺�Ʈ] ������ �� �̺�Ʈ ! </a></li>
                    <li><a href="event.html">[�̺�Ʈ] �ڷγ� �غ� �̺�Ʈ ! </a></li>
                    <li><a href="event.html">[�̺�Ʈ] ���� �̺�Ʈ ! </a></li>
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
                    <p class="p1">�ּ�</p>
                    <p class="p2">���νð��ȳ�</p><br><br><br><br><br>
                    <p class="p3">�����ȳ�</p>
                </div>

                <div class="text2">
                    <p class="p4">
                        ����Ư���� ���ʱ� ������� 439 ( ��Ƽ���� 4�� )
                    </p>

                    <p class="p5">
                        �� ȭ �� �� : AM 10:00 ~ PM 08:00<br>
                        �� �� �� : PM 02:00 ~ PM08:00<br>
                        �� �� �� : AM 10:00 ~ PM 03:00<br>
                        ���ɽð� : PM 01:00 ~ PM 02:00<br>
                        �Ͽ���, ������ ����<br>
                        ����� ���ɽð� ����.
                    </p>

                    <p class="p6">
                        ���� �ǹ� ������ ���� ����<br>
                        �� �ǹ� ���� ������ (30�� ���� / 2000cc�� �¿��� ����)<br>
                        �� �ܺ� �ǹ� ������ (���� ����)
                    </p>
                </div>
            </div>
        </div>
    </div>




    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo-ft.png" width="150" alt="" style="margin-bottom: 20px;">
            <p class="text1">��ȣ�� : ���ɾ��Ǻΰ� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ּ� : ����Ư���� ���ʱ� ������� 439 ( ��Ƽ���� 4�� )
            </p>
            <p>����ڵ�Ϲ�ȣ : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ǥ�� : ������
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ȭ��ȣ : 02-517-0912
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

    <!-- 3. ���� ��ũ��Ʈ -->
    <script>


            $('#best .tab>li>a').on('click', function(e){
              e.preventDefault();
              $('#best .panel').hide();
              $(this).next('.panel').show();
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
                    clickable: true // ��ư Ŭ�� ����
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
                        breakpoint: 1050, // ȭ���� ���̰� 600px �̻��� �� 
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2
                        }
                    }, {
                        breakpoint: 850, // ȭ���� ���̰� 320px �̻��� �� 
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
                    //     breakpoint: 1050, // ȭ���� ���̰� 600px �̻��� �� 
                    //     settings: {
                    //         slidesToShow: 2,
                    //         slidesToScroll: 2
                    //     }
                    // }, {
                    //     breakpoint: 850, // ȭ���� ���̰� 320px �̻��� �� 
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
            height: '61px',
            textalign: 'center',
            top: '0',
            position: 'fixed',
            background: '#fff',
            borderBottom: '1px solid #ccc'
        });



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


		const $topBtn = document.querySelector(".moveTopBtn");

// ��ư Ŭ�� �� �� ���� �̵�
$topBtn.onclick = () => {
  window.scrollTo({ top: 0, behavior: "smooth" });
}





    </script>

</body>

</html>