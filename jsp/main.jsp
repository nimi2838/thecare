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
                    <a>�� �ɾ��</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">���丮</a></li>
                            <li><a href="about_3.jsp">���ô±�</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>�Ǻ�Ÿ��</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">�� üũ</a></li>
                            <li><a href="qna.jsp">�� ����</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ü�</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">�ȳ�/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>����</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">�ٷο���</a></li>
                            <li><a href="change.jsp">����Ȯ��/����/���</a></li>
                            <li><a href="new_view.jsp">�ֱٺ��ü�</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>Ŀ�´�Ƽ</a>
                    <div>
                        <ul>
                            <li><a href="noti.jsp">��������</a></li>
                            <li><a href="event.jsp">�̺�Ʈ</a></li>
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
                    <h1 style="font-size:45px; margin:0; font-weight:600;">���帧 ���Ͱ���</h1>
                    <p style="font-size:45px; margin:-3px 0 0 0;font-weight:600;">������ �Ǻ� ǥ�鸸 ġ���ϰ� ��Ű��� ?</p>
                    
                </div>

				<div class="text-2">
                        <p style="font-size:50px; margin:0;">�Ǻ� �Ѱ� ���� ��� ġ���ϴ�!</p>
						<h1 style="font-size:70px; margin:10px 0 0; color:#555;">���帧 �ɾ�</h1>
                    </div>
            </div>

            <div class="swiper-slide swiper-slide2">
                <img src="img/banner02.jpg" alt="">
                <div class="text-1" style="  position: absolute;  top: 38%;
  left: 60%;
  transform: translate(-30%, -20%);
  text-align: start; font-size: 30px; text-align:end; color: #af83b8;">
                    <h1 style="font-size:40px; margin-top: 10px;padding: 10px 0; font-weight: 300;color: #684070;">�������� ������ �󱼶���<br> <span style="font-size:70px; line-height: 130px;color: #52205c;">�����ֻ�</span></h1>
                    <p style="font-size:45px; margin:-35px 0 0;color: #684070;">���� ȿ�� ���� �ٷ� ����������!</p>
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
	color: #ff8290; ">������ʸ�</h1>
					<div style="text-align:center;">
					������ �����ϰ�! <br> ������ ä���!
				</div>
                </div>
				
            </div>

			<div class="swiper-slide swiper-slide4" style="background:#ccc;">
                <img src="img/banner04.jpg" alt="">
                <div class="text-1" style="position: absolute; top: 37%; left: 24%; transform: translate(-30%, -20%); text-align: start;">
                    <h3 style="font-size: 48px; margin:0 0 0 5px; font-weight:300;">���� ���� ���� !</h3>
					<h1 style="font-size: 100px; padding: 0; margin: 0px 0 15px;">������</h1>
                    <div style="font-size: 35px; padding: 0px 0 0; margin:0 0 0 5px; ">
                        ������ <span>����</span>������ ����� <span>Ȯ��</span>�ϰ�! <br>
						���ɾ��� <span>�ٽɱ����</span>�Դϴ�.
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
                        <span>��ö��</span> ����
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum03.png);"></div>
                    <div class="name">
                        <span>������</span> ����
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum04.png);"></div>
                    <div class="name">
                        <span>��&nbsp;&nbsp;&nbsp;��</span> ����
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum05.png);"></div>
                    <div class="name">
                        <span>�迵��</span> ����
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum07.png);"></div>
                    <div class="name">
                        <span>������</span> ����
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum08.png);"></div>
                    <div class="name">
                        <span>������</span> ����
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
                The Care�� ����</i>
            <p>���� �ٶ�� �ֻ��� �Ƹ��ٿ��� �ϼ�, �Ǻ� �ϼ��� �� ڸ�� �ϼ��̶�� �ų�����<br>
                ���� ������ ������ �Ƹ��ٿ� ������ �Բ� �����̾� ����¡�� �߱��մϴ�.</p>
        </div>
    </div>


    <div class="card-wrap">

        <div class="card_box card_box1 flex flex-jc-c">
            <a href="about_1.html" class="card1 card">
                <div class="text-box">
                    <h1>THE CARE</h1>
                    <p>������ ���� ġ���<br> ����� �Ǻ� �뷱���� ���ѵ帮�� ���ɾ� �Դϴ�.</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>

            <a href="#" class="card2 card">
                <div class="text-box">
                    <h1>���帧�ɾ�</h1>
                    <p>���帧 �ڱ����� �Ϻ��ϰ�</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>
        </div>

        <div class="card_box card_box2 flex  flex-jc-c">
            <a href="#" class="card3 card">
                <div class="text-box">
                    <h1>�ɱ׷��ֻ�</h1>
                    <p>���ʺ� ���Ű� �� �� �ִ� ���彺</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>

            <a href="#" class="card4 card">
                <div class="text-box">
                    <h1>�ʷ�</h1>
                    <p>Ʈ������ ������
                        ������</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>

            <a href="#" class="card5 card">
                <div class="text-box">
                    <h1>�����Ʈ��</h1>
                    <p>�Ǻκ����� �Ƹ��ٿ�</p>
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
                    ��ȯ�� ���� ������ ����
				</h1>
                <p>
				���õ� �Ǻΰ� �����ǿ� ÷�� ����� ��������<br>
				ȯ�ں��� ����ϰ� ������ ��ȭ�� �������� ġ�Ḧ �����մϴ�.
				</p>
				<a href="guide">VIEW</a>
            </div>
        </div>
    </div>



    <div class="content-f flex">

        <div class="before-box">
            <h1>BEFORE & AFTER</h1>
            <p>������ ���ĸ��</p>
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
            <p>������ ���ĸ��</p>
            <ul>
                <li><a href="event.html">[�̺�Ʈ] 2022�� ���γ� ���� ȣ������ �̺�Ʈ ! </a></li>
                <li><a href="event.html">[�̺�Ʈ] 2022�� ���γ� ���� ȣ������ �̺�Ʈ ! </a></li>
                <li><a href="event.html">[�̺�Ʈ] 2022�� ���γ� ���� ȣ������ �̺�Ʈ ! </a></li>
                <li><a href="event.html">[�̺�Ʈ] 2022�� ���γ� ���� ȣ������ �̺�Ʈ ! </a></li>
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
            <img src="./img/logo.png" width="150" alt="" style="margin-bottom: 20px;">
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
            height: '60px',
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




    </script>

</body>

</html>