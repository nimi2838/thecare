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
    <link rel="stylesheet" href="css/about_1.css" />
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
                            <li><a href="guide.jsp">시술비용</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>시술예약</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">예약하기</a></li>
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





    <div class="boxsize moduleWrap fnloadContent poRel box_module_box_add" id="box_module_box_add_356823"
        style="z-index:0;overflow:hidden;">


        <div style="position: absolute; top: 66.3%; left: 50%; width:100%; height:100%; z-index:-100;
        -webkit-transform: translateX(-50%) translateY(-50%);-moz-transform: translateX(-50%) translateY(-50%);
        -ms-transform: translateX(-50%) translateY(-50%);-o-transform: translateX(-50%) translateY(-50%);
        transform: translateX(-50%) translateY(-50%); ">
            <div style="position:relative; width:100%; padding-bottom:56.25%; ">

                <iframe class="dynamic_vimeo"
                    src="https://player.vimeo.com/video/557883798?muted=1&amp;loop=1&amp;background=1" frameborder="0"
                    webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""
                    style="position:absolute; left:0; top:-0px; width:100%; height:100%; " data-ready="true"></iframe>
                <div id="coverbg_356823"></div>

            </div>

        </div>



        <div class="moduleinner modulekey_box_add module_box_add modulekey_box_add_356823 boxsize cboth poRel"
            id="module_box_add_356823">

            <div class=" boxsize module_subobj module_subobj_box_add  " id="box_add_356824" onclick="">
                <div class="boxsize posRel mobj  " onclick="" id="box_add_356824_inner">
                    <ul id="ul_uid_356824" class="posRel isWidget">
                        <li id="uidnum356824" class="f_MIR_prtContent mobj_li boxsize uidnum356824  "
                            onclick="ga('send','event','/?mir_code=356824','배너클릭_356824_15386','356824');">
                            <style>
                                #box_356824_obj_mask_0 svg:not(.gra_border) {
                                    width: 28px;
                                    height: 24px;
                                    -webkit-box-sizing: border-box;
                                    -moz-box-sizing: border-box;
                                    box-sizing: border-box;
                                    display: inline-block;
                                }

                                #box_356824_obj_mask_1 svg:not(.gra_border) {
                                    width: 1px;
                                    height: 55px;
                                    -webkit-box-sizing: border-box;
                                    -moz-box-sizing: border-box;
                                    box-sizing: border-box;
                                    display: inline-block;
                                }
                            </style>
                            <div id="maskWidgetOutWrap_356824" class="maskWidgetOutWrap " style="position:relative; "
                                onclick=""><span class="maskWidgetInWrap dispblock "
                                    style=" font-size:0px; box-sizing:border-box;  z-index:3;"><span
                                        id="box_356824_obj_maskWidget"
                                        class="box_356824_obj_maskWidget maskWidget posRel w100p h100p dispblock "
                                        style="opacity:1; font-size:0px; box-sizing:border-box;">
                                        <div class="w100p h100p" style="display: table;">
                                            <div style="display: table-row;">
                                                <div
                                                    style="text-align:center;vertical-align:middle;font-size:0px; display: table-cell;">



                                                    <div id="box_356824_obj_mask_0"
                                                        class="box_356824_obj_mask_0 dispinb maskObject ">


                                                        <div class="imgs">
                                                            <img src="img/about_1-banner_logo.png">
                                                        </div>




                                                        <div id="box_356824_obj_mask_1"
                                                            class="box_356824_obj_mask_1 dispinb maskObject ">
                                                            <svg id="mask_356824_svg_1" class="mask_356824_svg_1"
                                                                width="1" height="55" viewBox="0 0 1 55" fill=""
                                                                stroke="" stroke-width="">
                                                                <line class="" transform="translate(0.5)" fill="#fff"
                                                                    stroke="#fff" savefill="#fff" savestroke="#fff"
                                                                    stroke-width="1" style="fill: #fff;  " x1="0" y1="0"
                                                                    x2="0" y2="55"></line>
                                                            </svg>
                                                        </div>
                                                        <div id="box_356824_obj_mask_2"
                                                            class="box_356824_obj_mask_2 dispinb maskObject ">
                                                            <div>
                                                                <h1 id="mask_subject" class="posRel zindex0">당신은 자연스러울 때
                                                                    가장 아름답습니다.</h1>
                                                            </div>
                                                            <div>
                                                                <h1 id="mask_content" class="posRel zindex0">THE CARE
                                                                </h1>
                                                            </div>
                                                            <div class="small_text">

                                                                유행을 따라잡는 아름다움엔 유통기한이 있습니다. <br>
                                                                본연의 아름다움으로 빛의 시그니처를 선사하겠습니다.
                                                            </div>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </span></span></div>

                            <script>
                                $(function (e) {
                                    $(".maskWidgetOutWrap").mouseover(function (e) {
                                        $(this).find(".mask_img2").css({
                                            "opacity": "1"
                                        });
                                    });
                                    $(".maskWidgetOutWrap").mouseout(function (e) {
                                        $(this).find(".mask_img2").css({
                                            "opacity": "0"
                                        });
                                    });
                                });
                            </script>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="cboth"></div>
            <script></script>
        </div>
    </div>

    <div class="intro">
        <div class="inner">
            <div class="pink_box"></div>
            <div class="building"><img src="img/building-out.png"></div>
            <div class="intro_left">

                <div class=intro_txt>

                    <h1>지금의 트렌드와 시대를 관통하는 클래식.</h1>
                    <p>둘 사이에서 자연스러운 밸런스가 중요한 가치가 된 시대입니다.</p>
                    </h1>
                    <br>
                    <p>진심을 담은 치료로 당신의 피부 밸런스를 지켜드리는
                        플렉스 피부과 입니다.</p>
                </div>

            </div>
        </div>


        <div class="philosophy">
            <div class="inner">
                <div class="philosophy_title">
                    <img src="img/about_1-banner_logo.png" width="60">
                    <h1>THE CARE Philosophy</h1>
                </div>
                <div class="philosophy_3menu">
                    <img src="img/about-content-02.jpg">
                    <div class="philosophy_txt">
                        <i>01</i>

                        <h1>무엇보다 정확한 진단에<br> 집중하는 THE CARE.</h1>
                        <br>
                        <h2></h2>
                        <br>
                        <p>정확한 진단 없이 치료하는 것은 <br> 지도없이 항해하는 것과 같습니다.
                            <br> 정확한 진단에 집중하여 이루어지는 정성을 다한 진료,<br>
                            피부과 전문의 그룹이 함께합니다.</p>
                    </div>
                </div>
                <div class="philosophy_3menu">
                    <img src="img/about-content-04.jpg">
                    <div class="philosophy_txt">
                        <i>02</i>
                        <br>
                        <h1>오래 지속 가능한 치료를<br>
                            지향하는 THE CARE.</h1>
                        <br>
                        <h2></h2>
                        <br>
                        <p>한 번만 하고 그만 두는 패턴은 안됩니다.<br>
                            피부에 부담을 주지 않고 꾸준히 유지할 수 있는<br>
                            순하지만 강력한 솔루션을 지향합니다.</p>
                    </div>

                </div>

                <div class="philosophy_3menu">
                    <img src="img/about-content-03.jpg">
                    <div class="philosophy_txt">
                        <i>03</i>
                        <h1>내 가족에게 권할 만큼 <br>
                            안전한 치료를 지향하는 THE CARE.</h1>
                        <br>
                        <h2></h2>
                        <br>
                        <p>가족에게도 시술할 수 있는 검증된 치료만을 합니다.<br>
                            내 남편과 아내, 부모님께 할 수 있는 시술을<br>
                            고객에게 하는 것은 의사의 기본입니다.<br>
                            양심을 가지고 겸손하게 진료하겠습니다.</p>
                    </div>
                </div>
            </div>
        </div>


        <div class="thecare_vidio">

            <div class="thecare_vidio_1"></div>
            <div style="position:relative; width:100%; padding-bottom:56.25%; ">
                <iframe class="dynamic_vimeo"
                    src="https://player.vimeo.com/video/583313366?muted=1&amp;loop=1&amp;background=1" frameborder="0"
                    webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" data-ready="true"></iframe>
                <div class="inner">
                    <div class="thecare_vidio_txt">
                        <h1>THE CARE</h1>
                        <p>더 케어는 진심을 담은 치료로 당신의 피부밸런스를 지켜드립니다.</p>
                    </div>

                    <div class="thecare_vidio_img">
                        <img src="img/about-video-banner-top3.jpg">
                        <div class="thecare_vidio_img_txt">
                            <p>오랫동안 지속가능한<br>
                                치료를 지향합니다.</p>
                        </div>
                    </div>
                    <div class="thecare_vidio_img">
                        <img src="img/about-video-banner-top2.jpg">
                        <div class="thecare_vidio_img_txt">
                            <p>스스로의 색깔을 지키는<br>
                                자연스러움을 추구합니다.</p>
                        </div>
                    </div>
                    <div class="thecare_vidio_img">
                        <img src="img/about-video-banner-top1.jpg">
                        <div class="thecare_vidio_img_txt">
                            <p>가족에게 시술 할 수 있는<br>
                                안전한 치료를 합니다.</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    
    
    <section id="doctor" class="content">
        <div class="inner">
            <h2 class="title">의 료 진</h2>
            <p class="title2">The Care Dermatologist</p>
            <div class="wrap">
                <div class="box">
                    <img src="img/doctor_list_thum02.png" alt="">
                    <div class="info">
                        <h3 class="doctor_name"><span>장겨울</span> 원장</h3>
                        <div class="bg1"></div>
                    </div>
                </div>
                <div class="box">
                    <img src="img/doctor_list_thum03.png" alt="">
                    <div class="info">
                        <h3 class="doctor_name"><span>장겨울</span> 원장</h3>
                        <div class="bg1"></div>
                    </div>
                </div>
                <div class="box">
                    <img src="img/doctor_list_thum04.png" alt="">
                    <div class="info">
                        <h3 class="doctor_name"><span>장겨울</span> 원장</h3>
                        <div class="bg1"></div>
                    </div>
                </div>
                <div class="box">
                    <img src="img/doctor_list_thum05.png" alt="">
                    <div class="info">
                        <h3 class="doctor_name"><span>장겨울</span> 원장</h3>
                        <div class="bg1"></div>
                    </div>
                </div>
            </div>
            <div class="wrap2">
                <div class="box2">
                    <img src="img/doctor_list_thum06.png" alt="">
                    <div class="info">
                        <h3 class="doctor_name"><span>장겨울</span> 원장</h3>
                        <div class="bg1"></div>
                    </div>
                </div>
                <div class="box2">
                    <img src="img/doctor_list_thum07.png" alt="">
                    <div class="info">
                        <h3 class="doctor_name"><span>장겨울</span> 원장</h3>
                        <div class="bg1"></div>
                    </div>
                </div>
                <div class="box2">
                    <img src="img/doctor_list_thum08.png" alt="">
                    <div class="info">
                        <h3 class="doctor_name"><span>장겨울</span> 원장</h3>
                        <div class="bg1"></div>
                    </div>
                </div>
                <div class="box2">
                </div>
            </div>

            
        </div>
    </section>


    
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
    </script>
</body>

</html>