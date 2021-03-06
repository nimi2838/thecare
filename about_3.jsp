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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <title>???ô? ??</title>
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
                            <input class="form" name="keyword" type="text" placeholder="?˻?? ?Է????ּ???." >
                        </td>
                        <td class="schBtn">
                            <input type="image" src="img/Search_thin_icon.png" alt="?˻?" onsubmit="search_form()" style="width: 30px; height: 30px;">
                        </td>
                    </form>
                </div>






        </div>
        <div class="line"></div>


     <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>?? ?ɾ?</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">?ɾ? ??????</a></li>
                            <li><a href="about_3.jsp">???ô±?</a></li>
                        </ul>
                    </div>
                </li>
            <li class="menu">
                    <a>?? ?ñ???</a>
               <div>
                        <ul>
                            <li><a href="#" onclick="login();">?? üũ</a></li>
                     <li><a href="themore.jsp">?? ????</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>?ɾ?????</a>
                    <div>
                        <ul>
                     <li><a href="guide.jsp">?ü??ȳ?/????</a></li>
                            <li><a href="#" onclick="login();">????Ȯ??/????/????</a></li>
                            <li><a href="review.jsp">???Ļ???</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>????????</a>
                    <div>
                        <ul>
                            <li><a href="#" onclick="login();">??????</a></li>
                            <li><a href="noti.jsp">????????</a></li>
                            <li><a href="event.jsp">?̺?Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>


<!-- ?????Ϸ? -->
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
                                <input class="form" name="keyword" type="text" placeholder="?˻?? ?Է????ּ???." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="?˻?" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">?? ?ɾ???</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">?ɾ? ??????</a></li>
                                        <li><a href="about_3.jsp">???ô±?</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">?? ?ñ???</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">?? üũ</a></li>
                                        <li><a href="themore.jsp">?? ????</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">?ɾ?????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">?ü??ȳ?/????</a></li>
                                        <li><a href="#" onclick="login();">????Ȯ??/????/????</a></li>
                                        <li><a href="review.jsp">???Ļ???</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">????????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">??????</a></li>
                                        <li><a href="noti.jsp">????????</a></li>
                                        <li><a href="event.jsp">?̺?Ʈ</a></li>
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
                            <input class="form" name="keyword" type="text" placeholder="?˻?? ?Է????ּ???." >
                        </td>
                        <td class="schBtn">
                            <input type="image" src="img/Search_thin_icon.png" alt="?˻?" onsubmit="search_form()" style="width: 30px; height: 30px;">
                        </td>
                    </form>
                </div>






        </div>
        <div class="line"></div>




   
        <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>?? ?ɾ?</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">?ɾ? ??????</a></li>
                            <li><a href="about_3.jsp">???ô±?</a></li>
                        </ul>
                    </div>
                </li>
            <li class="menu">
                    <a>?? ?ñ???</a>
               <div>
                        <ul>
                            <li><a href="custom.jsp">?? üũ</a></li>
                     <li><a href="themore.jsp">?? ????</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>?ɾ?????</a>
                    <div>
                        <ul>
                     <li><a href="guide.jsp">?ü??ȳ?/????</a></li>
                            <li><a href="change.jsp">????Ȯ??/????/????</a></li>
                            <li><a href="review.jsp">???Ļ???</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>????????</a>
                    <div>
                        <ul>
                            <li><a href="note.jsp">??????</a></li>
                            <li><a href="noti.jsp">????????</a></li>
                            <li><a href="event.jsp">?̺?Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>





   
           <!-- ?????Ϸ? -->
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
                                <input class="form" name="keyword" type="text" placeholder="?˻?? ?Է????ּ???." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="?˻?" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">?? ?ɾ???</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">?ɾ? ??????</a></li>
                                        <li><a href="about_3.jsp">???ô±?</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">?? ?ñ???</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="custom.jsp">?? üũ</a></li>
                                        <li><a href="themore.jsp">?? ????</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">?ɾ?????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">?ü??ȳ?/????</a></li>
                                        <li><a href="change.jsp">????Ȯ??/????/????</a></li>
                                        <li><a href="review.jsp">???Ļ???</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">????????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="note.jsp">??????</a></li>
                                        <li><a href="noti.jsp">????????</a></li>
                                        <li><a href="event.jsp">?̺?Ʈ</a></li>
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
            <a href="" alt="?? ????">
                <div class="moveTopBtn" style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="?ֱ? ?? ?ü?">
                <div style="border-radius:50%;z-index:2; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">?ֱٺ??ü?</p>
                </div>
            </a>
        </div>
    





    <div class="about-ban">
        <div class="text-box">
            <span>?? ?? ?? ?? ?? ?? ?? ?? ??.</span><br>
            <i>?????ð?/???ô±?</i>
            <p>???ɾ??? ?????Ե??? ?ð??? ?????մϴ?.<br>
                ???? ?? ?????? ???Ͻô? ?????Բ????? ?????ð??? ?????Ͻþ? ???? ?? ???????ֽñ? ?ٶ??ϴ?.</p>
        </div>
    </div>



   


    <section id="welcome" class="content">
        <div class="inner">
            <div class="title">???? ?ѷ?????</div>
            <div class="wrap">
    <div class="swiper mySwiper">
        
        <div class="swiper-wrapper">

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <h1>1F ????ũ, ??????</h1>
                        <p>The Care 1?? ?????ǿ??? ???? ?? ?????ȳ??? ?????? ?? ?ֽ??ϴ?.</p>
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
                        <h1>2F ???鸶??, ???? ?ü? </h1>
                        <p>The Care ???? 2???????? ???? ????, ???? ?ü??? ?޾ƺ??? ?? ?ֽ??ϴ?.</p>
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
                        <h1>3F ???彺, ?ʷ?, ?????? ?ü???</h1>
                        <p>The Care ???? 3???? ???彺, ?ʷ?, ?????? ?ü????Դϴ?.</p>
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
                        <h1>4F ???彺, ?ʷ?, ?????? ?ü???</h1>
                        <p>The Care ???? 4???? ???彺, ?ʷ?, ?????? ?ü????Դϴ?.</p>
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
                        <h1>5F ????Ż???ɾ?, ???Ľü?</h1>
                        <p>The Care ???? 5???? ?????ɾ?&???Ľü??? ???õǾ? ?ֽ??ϴ?.</p>
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
                        <p class="p1">?ּ?</p>
                        <p class="p2">???νð??ȳ?</p><br><br><br><br><br>
                        <p class="p3">ã?ƿ??ô? ??</p>
                    </div>
    
                    <div class="text2">
                        <p class="p4">
                            ????Ư???? ???ʱ? ???????? 439 ( ??Ƽ???? 4?? )
                        </p>
    
                        <p class="p5">
                            ?? ȭ ?? ?? : AM 10:00 ~ PM 08:00<br>
                            ?? ?? ?? : PM 02:00 ~ PM08:00<br>
                            ?? ?? ?? : AM 10:00 ~ PM 03:00<br>
                            ???ɽð? : PM 01:00 ~ PM 02:00<br>
                            ?Ͽ???, ?????? ????<br>
                            ?????? ???ɽð? ????.
                        </p>
    
                        <p class="p6">
                            ?? ?????? 10?? ?ⱸ ???? 5??<br>
                            ?? ?ų????? 6?? ?ⱸ ???? 5??<br>
                            ?? ???? 146?? ?ų?????.??????Ÿ?????Ÿ? ???? ?? ???? 141m<br>
                            ?? ???? 7007 ?ų?????.???????? ???? ?? ???? 53m<br>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    



    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo-ft.png" width = "150" alt="" style="margin-bottom: 20px;">
          <p class = "text1">??ȣ?? : ???ɾ??Ǻΰ? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   ?ּ? : ????Ư???? ???ʱ? ???????? 439 ( ??Ƽ???? 4?? )
        </p>
          <p>?????ڵ??Ϲ?ȣ : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       ??ǥ?? : ?????? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       ??ȭ??ȣ : 02-517-0912
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

// ??ư Ŭ?? ?? ?? ???? ?̵?
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
    
                  alert('?˻?? ?Է??ϼ???');
    
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
			alert('?α??? ?? ?̿? ?????? ???????Դϴ?.');
			document.location.href="login.jsp";
		}




    var swiper = new Swiper(".mySwiper", {
        cssMode: true,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true // ??ư Ŭ?? ????
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