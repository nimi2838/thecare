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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <title>�� �� ����</title>
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
                            <li><a href="about_1.jsp">�ɾ������</a></li>
                            <li><a href="about_3.jsp">���ô±�</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>�Ǻ�Ÿ��</a>
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
                            <li><a href="noti.jsp">��������</a></li>
                            <li><a href="event.jsp">�̺�Ʈ</a></li>
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


    <div class="about-ban">
        <div class="text-box">
            <i>BEORE & AFTER</i>
            <div class="sun"></div>
            <p>�� �� ����</p>
        </div>
    </div>



    <section id="review" class="content">
        <div class="inner">

            <div class="wrap">
                <div class="box">
                    <img src="img/review-bodytok1.jpg" alt="">
                    <div class="info">
                        <h3 class="review_title">
                            22.01.13<br>
                            ��<br>
                            ��
                        </h3>

                        <h3 class="review_title-2">22.02.13<br>
                                ��<br>
                                ��
                            </h3>
                    </div>

                    <div class="review_txt">�ٵ� ���彺</div>

                </div>

                <div class="box">
                    <img src="img/review-bodytok2.jpg" alt="">
                    
                    <div class="info">
                        <h3 class="review_title">
                            22.03.03<br>
                            ��<br>
                            ��</h3>

                            <h3 class="review_title-2">22.04.03<br>
                                    ��<br>
                                    ��
                                </h3>
                    </div>

                    <div class="review_txt">�ɱ׷� �ֻ�</div>

                </div>

                <div class="box">
                    <img src="img/review-flling.jpg" alt="">
                    <div class="info">
                        
                        <h3 class="review_title">
                            22.04.13<br>
                            ��<br>
                            ��</h3>

                            <h3 class="review_title-2">22.05.16<br>
                                    ��<br>
                                    ��
                                </h3>
                    </div>

                    <div class="review_txt">���̽� �ʷ�</div>
                </div>
            </div>

            <div class="wrap">
                <div class="box">
                    <img src="img/review-girl1.jpg" alt="">
                    <div class="info">
                        <h3 class="review_title">
                            22.04.23<br>
                            ��<br>
                            ��
                        </h3>

                        <h3 class="review_title-2">22.05.13<br>
                                ��<br>
                                ��
                            </h3>
                    </div>

                    <div class="review_txt">�ٵ� ���彺</div>

                </div>

                <div class="box">
                    <img src="img/review-hiko1.jpg" alt="">
                    
                    <div class="info">
                        <h3 class="review_title">
                            22.05.17<br>
                            ��<br>
                            ��</h3>

                            <h3 class="review_title-2">22.05.30<br>
                                    ��<br>
                                    ��
                                </h3>
                    </div>

                    <div class="review_txt">������</div>

                </div>

                <div class="box">
                    <img src="img/review-jogak1.jpg" alt="">
                    <div class="info">
                        
                        <h3 class="review_title">
                            22.06.01<br>
                            ��<br>
                            ��</h3>

                            <h3 class="review_title-2">22.06.27<br>
                                    ��<br>
                                    ��
                                </h3>
                    </div>

                    <div class="review_txt">�����ֻ�</div>
                </div>
            </div>

            <div class="wrap">
                <div class="box">
                    <img src="img/review-nemotok1.jpg" alt="">
                    <div class="info">
                        <h3 class="review_title">
                            22.06.24<br>
                            ��<br>
                            ��
                        </h3>

                        <h3 class="review_title-2">22.07.13<br>
                                ��<br>
                                ��
                            </h3>
                    </div>

                    <div class="review_txt">�簢�� ���彺</div>

                </div>

                <div class="box">
                    <img src="img/review-themo1.jpg" alt="">
                    
                    <div class="info">
                        <h3 class="review_title">
                            22.07.05<br>
                            ��<br>
                            ��</h3>

                            <h3 class="review_title-2">22.07.25<br>
                                    ��<br>
                                    ��
                                </h3>
                    </div>

                    <div class="review_txt">NCTF ����ġ��</div>

                </div>

                <div class="box">
                    <img src="img/review-yungak.jpg" alt="">
                    <div class="info">
                        
                        <h3 class="review_title">
                            22.08.18<br>
                            ��<br>
                            ��</h3>

                            <h3 class="review_title-2">22.09.01<br>
                                    ��<br>
                                    ��
                                </h3>
                    </div>

                    <div class="review_txt">�����ֻ�</div>
                </div>
            </div>

        </div>
    </section>









<!-- Ǫ�� -->

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
},height:'67px',textalign:'center',top:'0',position:'fixed',background:'white'
});



    // swiper-pagination-bullet-active
</script>
</body>
</html>