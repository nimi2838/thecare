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

<body>


    <div class="top-wrap">
        <div class="top-box1 flex flex-jc-sb flex-ai-c">
            <ul class="icon-box">
                <li class="icon login">
                    <a href="login.html">
                        <div class="img-box">
                            <img src="img/login_icon.png" alt="">
                        </div>
                        login
                    </a>
                    <div class="line-icon"></div>
                </li>
                <li class="icon join">
                    <a href="join.html">
                        <div class="img-box">
                            <img src="img/join_icon.png" alt="">
                        </div>
                        join
                    </a>
                    <div class="line-icon"></div>
                </li>
                <li class="icon cart">
                    <a href="cart.html">
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






            <!-- 
                <form accept-charset="utf-8" name="search" align="right" style="margin-right:70px;" method = "get" action ="NextFile.jsp" onsubmit="return keyword_check()" autocomplete=off>
					<td class="search">
					  <input class="form" type="text"  name="keyword" placeholder="�˻�" style="position: absolute;top: 50%;
					  left: 50%; transform: translate(-50%,-50%);  width: 900px; height: 50px; font-size: 25px; color: white;text-align: left; margin: 0 auto; 
					  padding: 18px 0 18px 10px; outline: none; display: block; border: 0; border-bottom: 1px solid white; background: rgba(87, 87, 87, 0);
					   box-shadow: none;">
					  </td>
					<td class="schBtn" style="top: 0; left: 10px;">
					<input  type="image" src="img-1/schBtn.png" alt="�˻�" onsubmit="search_form()"
					style="position: absolute;top: 49%;
					  left: 72%; transform: translate(-49%,-72%); width: 30px; height: 30px;">
					</td>  
					</form> -->






            <!-- <div class="flex-1-0-0 flex flex-ai-c flex-jc-e">
                    <div class="search-form form flex flex-ai-c">
                      <input type="text" placeholder="�˻�� �Է����ּ���.">
                      <a href="#" class="btn-type-1 btn-search">
                        <div class="img-box">
                            <img src="img/Search_thin_icon.png" alt="">
                        </div>
                      </a>
                    </div>
                  </div> -->


        </div>
        <div class="line"></div>


        <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>ȸ��Ұ�</a>
                    <div>
                        <ul>
                            <li><a href="about_1.html">���ɾ��?</a>
                            </li>
                            <li><a href="about_2.html">���ɾ� �Ƿ���</a></li>
                            <li><a href="about_3.html">���ɾ� ���ô±�</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ü��ȳ�</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">�ü��ȳ�</a></li>
                            <li><a href="review.html">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ü�����</a>
                    <div>
                        <ul>
                            <li><a href="reservation.html">�ü�����</a></li>
                            <li><a href="change.html">����Ȯ��/����/���</a></li>
                            <li><a href="new_view.html">�ֱٺ��ü�</a></li>
                        </ul>
                    </div>
                </li>

                <li class="menu">
                    <a href="custom.html">����ü�</a>
                </li>
                <li class="menu">
                    <a>Ŀ�´�Ƽ</a>
                    <div>
                        <ul>
                            <li><a href="noti.html">��������</a></li>
                            <li><a href="qna.html">1:1����</a></li>
                            <li><a href="event.html">�̺�Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <img src="img/banner01.jpg" alt="">
                <div class="text-1">
                    <h1>THE CARE <br> DOUBLE <span>DUAL</span></h1>
                    <p>THE CARE DERMATOLOGY CLINIC</p>
                    <div>
                        �̱� FDA ���� <br>
                        ��ħ���� ����ź�� ������ <br>
                        THE CARE ����
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <img src="img/banner02.jpg" alt="">
                <div class="text-1">
                    <h1>THE CARE <br> DESIGN <span>LIFTING</span></h1>
                    <p>THE CARE DERMATOLOGY CLINIC</p>
                    <div>
                        �ô븦 �����ϴ� <br>
                        �ڿ������� �Ƹ��ٿ� <br>
                        ���ɾ�� �ϼ��ϴ�
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <img src="img/banner03.jpg" alt="">
                <div class="text-1">
                    <h1>THE CARE <br> BRIGHT <span>SKIN</span></h1>
                    <p>THE CARE DERMATOLOGY CLINIC</p>
                    <div>
                        ��Ƽ���� ������ <br>
                        ���ڱ� �Ǻ�, <br>
                        �Ǻο� ������ �Ѵ�. �ñ׳�72
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
                        <span>������</span> ����
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
                        <span>������</span> ����
                        <div class="bg1"></div>
                    </div>
                </a>
            </div>

            <div class="item">
                <a href="about_2.html">
                    <div class="bg" style="background-image:url(img/doctor_list_thum05.png);"></div>
                    <div class="name">
                        <span>������</span> ����
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
                    <p>���ɾ ��¼����¼��</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>

            <a href="#" class="card2 card">
                <div class="text-box">
                    <h1>���� ������</h1>
                    <p>���� ���� ���ϰ�</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>
        </div>

        <div class="card_box card_box2 flex  flex-jc-c">
            <a href="#" class="card3 card">
                <div class="text-box">
                    <h1>�Ḷ�� FLX</h1>
                    <p>�ݶ�� ��� ������ ������</p>
                </div>
                <div class="bg">
                    <div class="view">VIEW</div>
                </div>
            </a>

            <a href="#" class="card4 card">
                <div class="text-box">
                    <h1>���� & �ʷ�</h1>
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
        <div class="mini-box mini-1">
            <div class="img-box">
                <img src="img/main-company-inpomation.jpg" alt="">
            </div>
        </div>
        <div class="mini-box mini-2">
            <div class="text-box">
                <h1>
                    ź���߽�, <br>
                    ÷�� ��Ƽ����¡ �ü�.
                </h1>
                �����ο� �´� ���α׷��� �����Ͽ� �Ǻΰ� �����ǰ�
                �Ǻ� �ǰ��� ����� �˸��� �ü��� �����մϴ�.
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                            <div class="bg1" style="background-image:url(img/main-before.png);"></div>
                            <i class="fas fa-chevron-circle-right arr"></i>
                            <div class="bg2" style="background-image:url(img/main-after-01.png);"></div>
                        </a>
                    </div>

                    <div class="item">
                        <a href="review.html">
                            <div class="bg1" style="background-image:url(img/main-before.png);"></div>
                            <i class="fas fa-chevron-circle-right arr"></i>
                            <div class="bg2" style="background-image:url(img/main-after-02.png);"></div>
                        </a>
                    </div>

                    <div class="item">
                        <a href="review.html">
                            <div class="bg1" style="background-image:url(img/main-before.png);"></div>
                            <i class="fas fa-chevron-circle-right arr"></i>
                            <div class="bg2" style="background-image:url(img/main-after-03.png);"></div>
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
                        ����Ư���� ���ʱ� ������� 439 ( ��Ƽ���� 9�� )
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