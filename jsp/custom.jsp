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
  <title>����ü�</title>
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
                    <a>ȸ��Ұ�</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">���ɾ��?</a>
                            </li>
                            <li><a href="about_2.jsp">���ɾ� �Ƿ���</a></li>
                            <li><a href="about_3.jsp">���ɾ� ���ô±�</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ü��ȳ�</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">�ü��ȳ�</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ü�����</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">�ü�����</a></li>
                            <li><a href="change.jsp">����Ȯ��/����/���</a></li>
                            <li><a href="new_view.jsp">�ֱٺ��ü�</a></li>
                        </ul>
                    </div>
                </li>
                
                <li class="menu">
                    <a href="custom.jsp">����ü�</a>
                </li>
                <li class="menu">
                    <a>Ŀ�´�Ƽ</a>
                    <div>
                        <ul>
                            <li><a href="noti.jsp">��������</a></li>
                            <li><a href="qna.jsp">1:1����</a></li>
                            <li><a href="event.jsp">�̺�Ʈ</a></li>
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
                    <h2>�Ǻ�Ÿ���� <br>
                        �˰�����Ű���?</h2>
                    <p>���� �Ǻ�Ÿ���� �˾ƺ�����!<br>
                        �������� ��õ�ص帱�Կ�</p>
                    <a href="custom-test.html">���� �����ϱ�
                    </a>
                </div>
        </div>
    </header>
    </section>



<div class="question">
    <div class="swiper mySwiper">
        <h2>�Ǻΰ����ϱ� �������?</h2>

        <div class="swiper-wrapper">

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <img src="img/custom-icon-1.png" alt="" >
                        <h2>�μ��� �߶�<br>
                            �Ǻδ���� ��������.</h2>
                        <p>��**��, 21�� , ���л� </p>
                    </div>
                </div>
            </div>

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <img src="img/custom-icon-2.png" alt="" width="60px" height="60px">
                        <h2>���� ����ũ�� ����<br>
                            �Ǻΰ� ���������� �ӻ��ؿ�.</h2>
                        <p>��**��, 25�� , ���л� </p>
                    </div>
                </div>
            </div>

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <img src="img/custom-icon-3.png" alt="" width="60px" height="60px">
                        <h2>ȭ���� �ϰ� ���� �ð��� ������<br>
                            �󱼿� ���бⰡ ��������.</h2>
                        <p>��**��, 28�� , ������  </p>
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
            <h3>����, �����ƿ�.</h3>
            <div>
                <ul>
                    <li class="test">
                        <h1 >01</h1>
                        <img class="animate__animated animate__flash animate__delay-2s"  src="img/custom-1.png" alt="" width="80px" height="80px" >
                        <h2>���㼳��</h2>
                        <p>�� 3��! �����ϰ� üũ�ϰ�<br>
                            �� ��ο� �´� �Ǻ�Ÿ�� ã�� </p>
                    </li>
                    <li class="test">
                        <h1>02</h1>
                        <img class="animate__animated animate__shakeX animate__delay-2s" src="img/custom-2.png" alt="" width="80px" height="80px">
                        <h2>������</h2>
                        <p>�Ǻ�Ÿ�Կ� �´� ����������<br>
                         ���ϴ� �Ǻ� ������ </p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    </div>
</section>


<div class="start">
    <div class="wrapper">
        <h1>���㼳������<br>
            �Ǻ�Ÿ���� �˾ƺ�����.</h1>
        <a href="custom-test.html">���� �����ϱ�</a>
    </div>
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