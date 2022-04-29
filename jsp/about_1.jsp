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
    <title>���ɾ��?</title>
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
                            <li><a href="#" onclick="login();">�� üũ</a></li>
							<li><a href="themore.jsp">�� ���</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ɾ����</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">�ȳ�/����</a></li>
                            <li><a href="#" onclick="login();">����Ȯ��/����/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>�������</a>
                    <div>
                        <ul>
                            <li><a href="#" onclick="login();">�����</a></li>
                            <li><a href="noti.jsp">��������</a></li>
                            <li><a href="event.jsp">�̺�Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>


<!-- ����Ϸ� -->
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
                                <input class="form" name="keyword" type="text" placeholder="�˻�� �Է����ּ���." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="�˻�" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">�� �ɾ��</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">�ɾ� ������</a></li>
                                        <li><a href="about_3.jsp">���ô±�</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�� �ñ���</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">�� üũ</a></li>
                                        <li><a href="themore.jsp">�� ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�ɾ����</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">�ȳ�/����</a></li>
                                        <li><a href="#" onclick="login();">����Ȯ��/����/���</a></li>
                                        <li><a href="review.jsp">���Ļ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�������</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">�����</a></li>
                                        <li><a href="noti.jsp">��������</a></li>
                                        <li><a href="event.jsp">�̺�Ʈ</a></li>
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
                <li class="menu">
                    <a>�ɾ����</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">�ȳ�/����</a></li>
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





	
           <!-- ����Ϸ� -->
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
                                <input class="form" name="keyword" type="text" placeholder="�˻�� �Է����ּ���." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="�˻�" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">�� �ɾ��</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">�ɾ� ������</a></li>
                                        <li><a href="about_3.jsp">���ô±�</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�� �ñ���</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="custom.jsp">�� üũ</a></li>
                                        <li><a href="themore.jsp">�� ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�ɾ����</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">�ȳ�/����</a></li>
                                        <li><a href="change.jsp">����Ȯ��/����/���</a></li>
                                        <li><a href="review.jsp">���Ļ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�������</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="note.jsp">�����</a></li>
                                        <li><a href="noti.jsp">��������</a></li>
                                        <li><a href="event.jsp">�̺�Ʈ</a></li>
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
            <a href="" alt="�� ����">
                <div class="moveTopBtn" style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="�ֱ� �� �ü�">
                <div style="border-radius:50%;z-index:2; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">�ֱٺ��ü�</p>
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
                            onclick="ga('send','event','/?mir_code=356824','���Ŭ��_356824_15386','356824');">
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
                                                                <h1 id="mask_subject" class="posRel zindex0">20�� ���� ���ݺ��� �������� �غ���.</h1>
                                                            </div>
                                                            <div>
                                                                <h1 id="mask_content" class="posRel zindex0">CARE LIFE
                                                                </h1>
                                                            </div>
                                                            <div class="small_text">

                                                                '�ڽŸ��� �ڿ������� �Ƹ��ٿ�', '������ �Ƹ��ٿ�'�� <br>
                                                                ã�Ƶ帮�� ���� ������ �Բ� �̷�� �帮�ڽ��ϴ�.
                                                                
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

                            <h1>�������� ��Ȯ�� ���ܿ�<br> �����ϴ� THE CARE</h1>
                            <br>
                            <h2></h2>
                            <br>
                            <p>��Ȯ�� ���� ���� ġ���ϴ� ���� <br> �������� �����ϴ� �Ͱ� �����ϴ�.
                                <br> ��Ȯ�� ���ܿ� �����Ͽ� �̷������ ������ ���� ����,<br>
                                �Ǻΰ� ������ �׷��� �Բ��մϴ�.</p>
                        </div>
                    </div>
                    <div class="philosophy_3menu">
                        <img src="img/about-content-04.jpg">
                        <div class="philosophy_txt">
                            <i>02</i>
                            <br>
                            <h1>���� ���� ������ ġ�Ḧ<br>
                                �����ϴ� THE CARE</h1>
                            <br>
                            <h2></h2>
                            <br>
                            <p>�� ���� �ϰ� �׸� �δ� ������ �ȵ˴ϴ�.<br>
                                �Ǻο� �δ��� ���� �ʰ� ������ ������ �� �ִ�<br>
                                �������� ������ �ַ���� �����մϴ�.</p>
                        </div>

                    </div>

                    <div class="philosophy_3menu">
                        <img src="img/about-content-03.jpg">
                        <div class="philosophy_txt">
                            <i>03</i>
                            <h1>�� �������� ���� ��ŭ <br>
                                ������ ġ�Ḧ �����ϴ� THE CARE</h1>
                            <br>
                            <h2></h2>
                            <br>
                            <p>�������Ե� �ü��� �� �ִ� ������ ġ�Ḹ�� �մϴ�.<br>
                                �� ����� �Ƴ�, �θ�Բ� �� �� �ִ� �ü���<br>
                                ������ �ϴ� ���� �ǻ��� �⺻�Դϴ�.<br>
                                ����� ������ ����ϰ� �����ϰڽ��ϴ�.
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
                        <p>�� �ɾ�� ������ ���� ġ��� ����� �Ǻι뷱���� ���ѵ帳�ϴ�.</p>
                    </div>

                    <div class="thecare_vidio_img">
                        <img src="img/about-video-banner-top3.jpg">
                        <div class="thecare_vidio_img_txt">
                            <p>�������� ���Ӱ�����<br>
                                ġ�Ḧ �����մϴ�.</p>
                        </div>
                    </div>
                    <div class="thecare_vidio_img">
                        <img src="img/about-video-banner-top2.jpg">
                        <div class="thecare_vidio_img_txt">
                            <p>�������� ������ ��Ű��<br>
                                �ڿ��������� �߱��մϴ�.</p>
                        </div>
                    </div>
                    <div class="thecare_vidio_img">
                        <img src="img/about-video-banner-top1.jpg">
                        <div class="thecare_vidio_img_txt">
                            <p>�������� �ü� �� �� �ִ�<br>
                                ������ ġ�Ḧ �մϴ�.</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <div class = "cleansing">
            <div class = "inner">
                <div class="wrap">
                    <h1>�Ǻΰ��� �ʿ伺, �������� ������?</h1>

                    <div class="clean">
                        <div class = "pyo">
                            <img src="img/pyo.png" >
                        </div>
                        
                        <div class = "pyo_txt">
                            <p>
                                ���ɾ ���� ������ ��� �Ϲ������� �Ǻγ�ȭ�� <br>
                                ����Ǵ� �ñⰡ 25�� �����ӿ��� �ұ��ϰ� <br>
                                20������ 24���� �ñ⿡ ������ �ʿ伺�� �����ٴ� <br>
                                ���� ���� ���� ���Դ�.<br>
                               �̾� ��25��~29������� ����� 34.5%(10ǥ), <br>
                               ��30��~34������� ����� 3,4%(1ǥ)�� ����ƴ�.
                            </p>
                        </div>
                    </div>

                </div>

            </div>
        </div>
     

        <div class = "box_5">
            <div class = "inner">
                <h1 style = "text-align: center;">�������� ��Ҹ� ����� ���� ����</h1>
               <div class="boxs">

                    <div class = "box_5_1">
                        <div class="box_tit">
                            <h1>����</h1>
                        </div>
                        <div class="bg">
                            <div class = "box_box">
                                <p>
                                    ��õ���� �κ��� �Ǻ��� ����ǰ� �ð��� ���� ��ȭ�� ����� ������ ��Ĩ�ϴ�.<br> 
                                    ���� ���, ���� ���������� ����� ���� ���̶��, �ڽ��� ����� ���� �� �ֽ��ϴ�. <br>
                                    �̷��� �������� ������ ������ �� ������ �ǰ��� �Ǻθ� �����ϱ� ���� �ִ��� ����� �� �ֽ��ϴ�.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class = "box_5_2">
                        <div class="box_tit">
                        <h1>ȯ��</h1>
                    </div>
                    <div class="bg">
                        <div class = "box_box">
                            <p>
                                �ó����� �� �Ǵ� ����, �µ��� �ʹ� ���ų� �ʹ� ���� ��� Ȥ�� ���Ⱑ Ź�� ���� ���� ������ 
                                �Ǻΰ� ���������ų� ĢĢ������ ������ ���� �� �ֽ��ϴ�. <br>
                                ���� ���� ȯ�浵 �Ǻο� �ǿ����� ��ĥ �� �ֽ��ϴ�.
                            </p>
                        </div>
                    </div>
                </div>

                </div>

                <div class = "box_5_3">
                        <div class="box_tit">
                            <h1>������ ��ȭ</h1>
                        </div>
                        <div class="bg">
                            <div class = "box_box">
                                <p>���� ���, ������ ���� �ϴ� ����� ������ �ް��� ��ȭ�� ���� �Ǻΰ� ���������ϴ�. <br>
                                    ������ ���ϰ� �˷����� ������ ��Ÿ������ �Ǻδ� ������ �����մϴ�. <br>
                                    ���ɾ�� �Ǻ� �������� ����� �ƴ϶� �ٰ����� �������� ����ϴ� ��Ų �ɾ ���� ȿ�����̶�� ����� �˰� �Ǿ����ϴ�. 
                                    ���� �������� �޺��� ���� �Ǻθ� ��ȣ�ϰ� ������ ���̵巹���ͷ� ������ �����ؾ� �մϴ�. <br>
                                    �߿� �������� ��Ÿ���� ǳ���� ������ �����ϰ� ��ī�ο� �ٶ��� ����Ͽ� ��ȣ���� �����ϴ� ũ���� �ٸ��� ����� �ʿ䰡 �ֽ��ϴ�.</p>
                            </div>
                        </div>
                </div>
                <div class="boxss">
                    <div class = "box_5_4">
                        <div class="box_tit">
                            <h1>����</h1>
                        </div>
                        <div class="bg">
                            <div class = "box_box">
                                <p>�ٻ��� �� ��� ������ ������ �Ǻο� ����� ������ �� �� �ְ�,
                                     �ؽ��� ���� ��ȭ�ε� �Ǻδ� ���� ��ȭ�մϴ�. ���� �߿��� ������ Ư���� �Ű��� ���� 
                                    �������� ��°� ȯ�� ���̸� ����� �Ǻθ� �����غ�����.</p>
                            </div>
                        </div>
                    </div>
                    <div class = "box_5_5">
                        <div class="box_tit">
                        <h1 style = "color: rgb(101, 101, 101);">��������Ÿ��</h1>
                    </div>
                    <div class="bg">
                        <div class = "box_box">
                            <p>��Ȱ ������ ������ �پ��� ������ �Ǻ��� �ǰ��� ������ ��Ĩ�ϴ�. <br>
                                �̷��� ���ο��� ���� ����, ��Ʈ����, �� �� ���ڿ� ���� ������ ���� ���밡 ������ 
                                �� ��� �Ǻ����� ĢĢ�����⵵ �ϰ� �Ǻ� Ʈ������ ���� �߻��� �� �ֽ��ϴ�. <br>
                                �����ϸ� �ż��� ���� ������ �丮�� ������ ��ð� ���� ���� ��ô� ���� �����ϴ�.</p>
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

// ��ư Ŭ�� �� �� ���� �̵�
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
    

			function login()
		{
			alert('�α��� �� �̿� ������ �������Դϴ�.');
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
    </script>
</body>

</html>