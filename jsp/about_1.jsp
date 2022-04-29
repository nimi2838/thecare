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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
		     <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
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
                    <a>더 케어</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">케어 라이프</a></li>
                            <li><a href="about_3.jsp">오시는길</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>더 궁금해</a>
					<div>
                        <ul>
                            <li><a href="#" onclick="login();">더 체크</a></li>
							<li><a href="themore.jsp">더 모어</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>케어원해</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">안내/예약</a></li>
                            <li><a href="#" onclick="login();">예약확인/변경/취소</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>소통원해</a>
                    <div>
                        <ul>
                            <li><a href="#" onclick="login();">기록장</a></li>
                            <li><a href="noti.jsp">공지사항</a></li>
                            <li><a href="event.jsp">이벤트</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>


<!-- 모바일로 -->
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
                                <input class="form" name="keyword" type="text" placeholder="검색어를 입력해주세요." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="검색" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">더 케어란</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">케어 라이프</a></li>
                                        <li><a href="about_3.jsp">오시는길</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">더 궁금해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">더 체크</a></li>
                                        <li><a href="themore.jsp">더 모어</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">케어원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">안내/예약</a></li>
                                        <li><a href="#" onclick="login();">예약확인/변경/취소</a></li>
                                        <li><a href="review.jsp">전후사진</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">소통원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">기록장</a></li>
                                        <li><a href="noti.jsp">공지사항</a></li>
                                        <li><a href="event.jsp">이벤트</a></li>
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
                    <a>더 케어</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">케어 라이프</a></li>
                            <li><a href="about_3.jsp">오시는길</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>더 궁금해</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">더 체크</a></li>
							<li><a href="themore.jsp">더 모어</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>케어원해</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">안내/예약</a></li>
                            <li><a href="change.jsp">예약확인/변경/취소</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>소통원해</a>
                    <div>
                        <ul>
                            <li><a href="note.jsp">기록장</a></li>
                            <li><a href="noti.jsp">공지사항</a></li>
                            <li><a href="event.jsp">이벤트</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>





	
           <!-- 모바일로 -->
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
                                <input class="form" name="keyword" type="text" placeholder="검색어를 입력해주세요." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="검색" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">더 케어란</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">케어 라이프</a></li>
                                        <li><a href="about_3.jsp">오시는길</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">더 궁금해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="custom.jsp">더 체크</a></li>
                                        <li><a href="themore.jsp">더 모어</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">케어원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">안내/예약</a></li>
                                        <li><a href="change.jsp">예약확인/변경/취소</a></li>
                                        <li><a href="review.jsp">전후사진</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">소통원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="note.jsp">기록장</a></li>
                                        <li><a href="noti.jsp">공지사항</a></li>
                                        <li><a href="event.jsp">이벤트</a></li>
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
            <a href="" alt="맨 위로">
                <div class="moveTopBtn" style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="최근 본 시술">
                <div style="border-radius:50%;z-index:2; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">최근본시술</p>
                </div>
            </a>
        </div>
    





    <div class="boxsize moduleWrap fnloadContent poRel box_module_box_add" id="box_module_box_add_356823"
        style="z-index:0;overflow:hidden;">


        <div class="video">
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


                                                        




                                                        <div id="box_356824_obj_mask_1"
                                                            class="box_356824_obj_mask_1 dispinb maskObject ">
                                                            
                                                        </div>
                                                        <div id="box_356824_obj_mask_2"
                                                            class="box_356824_obj_mask_2 dispinb maskObject ">
                                                            <div>
                                                                <h1 id="mask_subject" class="posRel zindex0">20대 관리 지금부터 차근차근 해봐요.</h1>
                                                            </div>
                                                            <div>
                                                                <h1 id="mask_content" class="posRel zindex0">CARE LIFE
                                                                </h1>
                                                            </div>
                                                            <div class="small_text">

                                                                '자신만의 자연스러운 아름다움', '진정한 아름다움'을 <br>
                                                                찾아드리는 꿈의 여정을 함께 이루어 드리겠습니다.
                                                                
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


        <div class="philosophy">
            <div class="inner">
                <div class="philosophy_title">
                   
                    <h1>THE CARE Philosophy</h1>
                </div>
                <div class="human">
                    <div class="philosophy_3menu">
                        <img src="img/about-content-02.jpg">
                        <div class="philosophy_txt">
                            <i>01</i>

                            <h1>무엇보다 정확한 진단에<br> 집중하는 THE CARE</h1>
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
                                지향하는 THE CARE</h1>
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
                                안전한 치료를 지향하는 THE CARE</h1>
                            <br>
                            <h2></h2>
                            <br>
                            <p>가족에게도 시술할 수 있는 검증된 치료만을 합니다.<br>
                                내 남편과 아내, 부모님께 할 수 있는 시술을<br>
                                고객에게 하는 것은 의사의 기본입니다.<br>
                                양심을 가지고 겸손하게 진료하겠습니다.
                            </p>
                        </div>
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


        <div class = "cleansing">
            <div class = "inner">
                <div class="wrap">
                    <h1>피부관리 필요성, 언제부터 느끼나?</h1>

                    <div class="clean">
                        <div class = "pyo">
                            <img src="img/pyo.png" >
                        </div>
                        
                        <div class = "pyo_txt">
                            <p>
                                더케어가 설문 조사한 결과 일반적으로 피부노화가 <br>
                                진행되는 시기가 25세 이후임에도 불구하고 <br>
                                20세에서 24세의 시기에 관리의 필요성을 느꼈다는 <br>
                                답이 가장 많이 나왔다.<br>
                               이어 ‘25세~29세’라는 대답이 34.5%(10표), <br>
                               ‘30세~34세’라는 대답이 3,4%(1표)로 집계됐다.
                            </p>
                        </div>
                    </div>

                </div>

            </div>
        </div>
     

        <div class = "box_5">
            <div class = "inner">
                <h1 style = "text-align: center;">복합적인 요소를 고려한 맞춤 관리</h1>
               <div class="boxs">

                    <div class = "box_5_1">
                        <div class="box_tit">
                            <h1>유전</h1>
                        </div>
                        <div class="bg">
                            <div class = "box_box">
                                <p>
                                    선천적인 부분은 피부의 컨디션과 시간에 따른 변화에 상당한 영향을 끼칩니다.<br> 
                                    예를 들어, 가족 구성원들의 모공이 넓은 편이라면, 자신의 모공도 넓을 수 있습니다. <br>
                                    이러한 생물학적 요인은 통제할 수 없지만 건강한 피부를 유지하기 위해 최대한 노력할 수 있습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class = "box_5_2">
                        <div class="box_tit">
                        <h1>환경</h1>
                    </div>
                    <div class="bg">
                        <div class = "box_box">
                            <p>
                                냉난방이 잘 되는 공간, 온도가 너무 높거나 너무 낮은 장소 혹은 공기가 탁한 곳에 오래 있으면 
                                피부가 건조해지거나 칙칙해지며 노폐물이 쌓일 수 있습니다. <br>
                                덥고 습한 환경도 피부에 악영향을 미칠 수 있습니다.
                            </p>
                        </div>
                    </div>
                </div>

                </div>

                <div class = "box_5_3">
                        <div class="box_tit">
                            <h1>계절의 변화</h1>
                        </div>
                        <div class="bg">
                            <div class = "box_box">
                                <p>예를 들어, 여행을 자주 하는 사람은 날씨의 급격한 변화로 인해 피부가 건조해집니다. <br>
                                    계절이 변하고 알레르기 반응이 나타날지라도 피부는 서서히 반응합니다. <br>
                                    더케어는 피부 관리에서 현재뿐 아니라 다가오는 계절까지 고려하는 스킨 케어가 가장 효과적이라는 사실을 알게 되었습니다. 
                                    더운 날씨에는 햇빛을 피해 피부를 보호하고 가벼운 하이드레이터로 수분을 공급해야 합니다. <br>
                                    추운 날씨에는 비타민이 풍부한 음식을 섭취하고 날카로운 바람에 대비하여 보호막을 제공하는 크림을 바를지 고민할 필요가 있습니다.</p>
                            </div>
                        </div>
                </div>
                <div class="boxss">
                    <div class = "box_5_4">
                        <div class="box_tit">
                            <h1>여행</h1>
                        </div>
                        <div class="bg">
                            <div class = "box_box">
                                <p>근사한 곳 어디를 가더라도 여행은 피부에 상당한 영향을 줄 수 있고,
                                     극심한 기후 변화로도 피부는 쉽게 변화합니다. 여행 중에는 보습에 특별히 신경을 쓰고 
                                    여행지의 기온과 환경 차이를 고려해 피부를 관리해보세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class = "box_5_5">
                        <div class="box_tit">
                        <h1 style = "color: rgb(101, 101, 101);">라이프스타일</h1>
                    </div>
                    <div class="bg">
                        <div class = "box_box">
                            <p>생활 습관과 관련한 다양한 요인은 피부의 건강에 영향을 끼칩니다. <br>
                                이러한 요인에는 수면 부족, 스트레스, 흡연 및 알코올 같은 물질의 과다 섭취가 있으며 
                                그 결과 피부톤이 칙칙해지기도 하고 피부 트러블이 자주 발생할 수 있습니다. <br>
                                가능하면 신선한 재료로 집에서 요리한 음식을 드시고 물도 많이 드시는 것이 좋습니다.</p>
                        </div>
                    </div>
                </div>
                </div>
            </div>
          
            </div>
        </div>



    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo-ft.png" width="150" alt="" style="margin-bottom: 20px;">
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

     
         <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<script>


            AOS.init();

	

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

// 버튼 클릭 시 맨 위로 이동
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
    

			function login()
		{
			alert('로그인 후 이용 가능한 페이지입니다.');
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