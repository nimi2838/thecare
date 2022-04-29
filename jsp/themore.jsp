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
    <link rel="stylesheet" href="css/themore.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <title>THE MORE</title>
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
							<li><a href="guide.jsp">�ȳ�/���</a></li>
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
                                        <li><a href="guide.jsp">�ȳ�/���</a></li>
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
                                        <li><a href="guide.jsp">�ȳ�/���</a></li>
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








        <section id="tip" class="content">
            <div class="inner">

                <div class="title">
                    <div class="title-img"><img src="img/color-left.png" alt=""></div>    
                    <div class="title-imgs"><img src="img/color-right.png" alt=""></div>
                    
                    <h1>Beauty Tips</h1>
                    <div class="sun">
                        <p>�Ǻ� Ÿ�Ժ�</p>
                        <h4>�Ǻ� ���� TIP</h4>
                    </div>
                </div>

                <div class="cont">
                    <img data-aos="fade-down" src="img/tip-1.jpg" alt="" width="500px" height="300px">
                    <div class="cont-txt">
                        <p>��Ⱑ ���������� ������<br>
                    ������ �츮�� �Ǻθ� ���� ���ϰ��մϴ�.</p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img data-aos="fade-right" src="img/tip-2.jpg" alt="" width="500px" height="300px">
                    </div>
                    <div class="conts-txt">
                        <p>���� ���� �ϱ����� Ŀ,<br>
                            �Ǻΰ� �ڱعޱ� ���� ������<br>
                            ���� ������ ������ �ʿ�� ����.
                        </p>
                        <p>�ùٸ� �Ǻ� ������ ���ؼ���<br>
                            ������ �Ǻΰ� � Ÿ������<br>
                            Ȯ���� �˾Ƶδ� ���� �����ϴ�.
                        </p>
                    </div>
                </div>

                <div class="cont">
                    <img data-aos="fade-down" src="img/tip-3.png" alt="">
                    <div class="cont-txt">
                        <p>�ٿ츸 �ڻ��� �����п��� �ٷ��<br>
                            �Ǻ��� Ư���� �������� 3���� ��������<br>
                            �Ǻ� ������ �������ϴ�. </p>
                    </div>
                </div>
            </div>
        </section>


    


       
        <section id="mbti" class="content">
            <div class="inner">
                <div class="wrap">

                    <div class="con">
                        <h2>������ �뷱��</h2>
                        <div class="you">
                            <div class="box box1">
                                <p>���� �к񷮰� ���� ������<br>
                                    ��� ���� ��ĥ��<br>
                                    ������ �ָ��� �� ����� Ÿ��
                                </p>
                                <div class="circle circle1">
                                    <h1>D</h1>
                                    <p>�Ǽ�<br>
                                        Dry
                                    </p>
                                </div>
                            </div>
                            <div class="box box2">
                                <p>���� �к��� ����<br>
                                    ����Ÿ��� ���帧��<br>
                                    ���� ����� Ÿ��<br>
                                </p>
                                <div class="circle circle2">
                                    <h1>O</h1>
                                    <p>����<br>
                                        Oily
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="con">
                        <h2>�Ǻ� �ΰ��� </h2>
                        <div class="you">
                            <div class="box box3">
                                <p style="margin-top: 30px;">�Ǻΰ� ��� ������<Br>
                                    �ܺ� �ڱؿ� ���� �����ϴ� Ÿ��
                                </p>
                                <div class="circle circle3">
                                    <h1>S</h1>
                                    <p>�ΰ���<br>
                                        Sensitive
                                    </p>
                                </div>
                            </div>
                            <div class="box box4">
                                <p>�Ǻ� �庮�� �߰���<br>
                                    �ܺ����� ��Ʈ������ ����<br>
                                    �ߵ�� ���� ���� Ÿ��<br>
                                </p>
                                <div class="circle circle4">
                                    <h1>R</h1>
                                    <p>���׼�<br>
                                        Resistant
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="con">
                        <h2>���� Ȱ���� </h2>
                        <div class="you">
                            <div class="box box5">
                                <p>���� Ȱ������ ����<Br>
                                    ���, �ֱٱ� Ȥ�� ��Ƽ ��<br>
                                    ���� ���̴� ���Ұ� ���� Ÿ��
                                </p>
                                <div class="circle circle5">
                                    <h1>P</h1>
                                    <p>���Ҽ�<br>
                                        Pigment
                                    </p>
                                </div>
                            </div>
                            <div class="box box6">
                                <p style="margin-top: 30px;">���� Ȱ������ ����<Br>
                                    ���� ���̴� ���Ұ� ���� Ÿ��
                                </p>
                                <div class="circle circle6">
                                    <h1>N</h1>
                                    <p>����Ҽ�<br>
                                        Non-Pigment
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>



<section id="type" class="content">
            <div class="inner">
                <h2>"�Ǻ� ���� 8����"</h2>
                <div class="wrap">
                    <ul class="tab">
                        <li>
                            <a href="#" class="menu menu1">DSP</a>
                            <div class="panel">
                                <div class="type-img">
                                    <img src="img/dsp.png" alt="" width="250px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>DSP</h1>
                                    <p class="type_txt">�ݺ��Ǵ� �Ǻ� ������ �Ǻλ��� ���� �ʱ���!</p>
                                    <p class="type_txt">�Ǻΰ����� ������ �� ��Ÿ�� �ָ��� ����� ����,<br>
                                     &nbsp;&nbsp;&nbsp;�Ǻΰ��� ������ �� ��ǥ�� �Ͽ� �Ǻ��庮�� ��ȣ���ִ�<br>&nbsp;&nbsp; ��Ų�ɾ� ��ǰ�� ������ּ���!</p>
                                    <p class="type_txt">������ ���� ħ���� ��� ���� �߿��� ������ ġ�Ḧ <br>&nbsp;&nbsp; ��õ����� ! </p>
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu2">DSN</a>
                            <div class="panel ">
                                <div class="type-img">
                                    <img src="img/dsn.png" alt="" width="250px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>DSN</h1>
                                    <p class="type_txt">���ſ������� ���ؼ� �Ǻΰ����� ��Ÿ�� ��찡 ������!</p>
                                    <p class="type_txt">Ư�� �� ������ �Ǻΰ��� ���� �ָ��� �� ���ܿ� </p> 
                                    <p class="type_txt">�Ǻ��庮�� ��ȣ�ϱ� ���� ����ͻ�, ���ް�3 �����<br>
                                        &nbsp;&nbsp;&nbsp;������, ��Ƽ���̵�, �׻�ȯ��, �׿��� ��ǰ�� ��õ�����.
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu3">DRP</a>
                            <div class="panel ">
                                <div class="type-img">
                                    <img src="img/drp.png" alt="" width="280px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>DRP</h1>
                                    <p class="type_txt" style="margin: -6px 0;">�Ǻλ��� ���� �ʰ� �Ǻΰ� �����ϱ��� !</p>
                                    <p class="type_txt" style="margin: -6px 0;">�Ǻΰ���, ����ħ���� �ұ����ϰ� �־� �ָ��� ����� <br>&nbsp;&nbsp;&nbsp;������. </p>
                                    <p class="type_txt" style="margin: -6px 0;">���� SPF30�̻��� ��ũ���� ������, �Ǻι̹����� <br>&nbsp;&nbsp;&nbsp;������ּ���!</p>
                                    <p class="type_txt" style="margin: -6px 0;">������, �׻�ȭ��, ��Ƽ���̵�, ��������Ͻû���ǰ��<br>&nbsp;&nbsp;&nbsp;�Ǻλ��� �����ϰ� �ϴµ� ������ ��� !
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu4">DRN</a>
                            <div class="panel ">
                                <div class="type-img">
                                    <img src="img/drn.png" alt="" width="250px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>DRN</h1>
                                    <p class="type_txt">�Ǻλ��� ������ ���� ������������ !</p>
                                    <p class="type_txt">������ �Ǻδ� �ָ��� ���� ���� �� ������ �׻�ȭ��,<br>&nbsp;&nbsp;&nbsp;SPF15�̻��� ��ǰ�� ����ϴ� ���� ���� 
                                        �㿣 ��Ƽ���̵�<br>&nbsp;&nbsp;&nbsp;��ǰ�� ����ϴ� ���� ���ƿ� !</p>
                                    <p class="type_txt">�Ļ�Ȱ�� ��Ȱ���� ������ �� ! �ʿ��ϸ� ��Ŭ��¡ ����� &nbsp;&nbsp;&nbsp;���� �ʾƿ�.
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu5">OSP</a>
                            <div class="panel ">
                                <div class="type-img" style="margin-left: -20px;">
                                    <img src="img/osp.png" alt="" width="310px" height="250px">
                                </div>
                                <div class="type-txt" >
                                    <h1>OSP</h1>
                                    <p class="type_txt">�Ǻο�����  ���� ���� ����ħ��, �ָ��� ����� ���� <br>&nbsp;&nbsp;&nbsp;Ÿ���̿���! </p>
                                    <p class="type_txt">�ݵ�� �ΰ��� ��ǰ�� ����� ���� ��õ�ϸ� �������Ÿ� <br>&nbsp;&nbsp;&nbsp;���� �ʸ���  ������ �����ϼž� �մϴ� !</p>
                                    <p class="type_txt">���帧���� ����,�ָ����� ��� ������ ������ ���� �� <br>&nbsp;&nbsp;&nbsp;�ִ�
                                        �Ǻη� �ΰ��� ��ǰ�� ����ϵ��� �������ּ���!
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu6">OSN</a>
                            <div class="panel ">
                                <div class="type-img" style="margin-left: -20px;">
                                    <img src="img/osn.png" alt="" width="290px" height="250px">
                                </div>
                                <div class="type-txt" >
                                    <h1>OSN</h1>
                                    <p class="type_txt">�Ǻΰ� ����Ÿ��� ������ ����� ������ !</p>
                                    <p class="type_txt">�޺��� ���� �Ӿ����� ����ŷ� �ָ��� ����� ������ 
                                        <br>&nbsp;&nbsp;&nbsp;������ �׻�ȭ �ۿ��� �Ͽ� �ָ��� �� ����� �Ǻγ�ȭ�� <br>&nbsp;&nbsp;&nbsp;���� ���������� �����ؿ�.</p>
                                    <p class="type_txt">����Ÿ��� ������������ ���� �Ⱑ �־� ���ڱ� ��ǰ <br>&nbsp;&nbsp;&nbsp;����� ��õ����� !
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu7">ORP</a>
                            <div class="panel ">
                                <div class="type-img" style="margin-left: 30px;">
                                    <img src="img/orp.png" alt="" width="190px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>ORP</h1>
                                    <p class="type_txt">�Ǻλ��� ���� �ʰ� �ָ��� �� �������� �Ǻΰ� ������ <br>&nbsp;&nbsp;&nbsp;���ؼ� ��ũ���� �ʼ�����!</p>
                                    <p class="type_txt">�����к�� ������ ��ȭ�� �����ϱ� ���ڶ�
                                        �׻�ȭ���� <br>&nbsp;&nbsp;&nbsp;���̿���� ��Ų�ɾ���ǰ���� �����ؾ��ؿ�! </p>
                                    <p class="type_txt">SPF 30+ �̻��� ��ǰ�� �����Ʈ��, SPF 50+ �̻��� <br>&nbsp;&nbsp;&nbsp;��ǰ�� �׻�ȭ ����� �Ǵ� ��ǰ ����� �������� !
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="menu menu8">ORN</a>
                            <div class="panel ">
                                <div class="type-img">
                                    <img src="img/orn.png" alt="" width="250px" height="250px">
                                </div>
                                <div class="type-txt">
                                    <h1>ORN</h1>
                                    <p class="type_txt">�Ǻλ��� ���� ��ȭ�� ���� �� ������ �ǰ��ϰ� ��ä�� <br>&nbsp;&nbsp;&nbsp;���� ������ �Ǻο���!</p>
                                    <p class="type_txt">�ε巴�� ������ �Ǻΰ� Ư¡�̸� ����� ���� ū ���̶� <br>&nbsp;&nbsp;&nbsp;������ ������ ������
                                        ����尡 ����� ������ ! </p>
                                    <p class="type_txt">���� ���� ������ �ִ� ��ǰ�� �׻�ȭ ����� �ִ� <br>&nbsp;&nbsp;&nbsp;�ʸ����� ��õ�����!
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <p>�۾��� Ŭ���غ�����.</p>
            </div>
        </section>




        <section id="choice" class="content">
            <div class="inner">

                <div class="title">
                    <h1>Ŭ���� CHOICE</h1>
                    <p>���Ǻ� Ÿ�ԡ��� �Ǻ��� ��� ��ɿ� ���� ����Դϴ�.<br>
                        �Ǻ� Ÿ�԰� �������� �Ǻ��� ��� ���� �ε巯�� Ŭ��¡ ��ǰ�� ����� �����մϴ�. </p>
                </div>
                <div class="wrap">
                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-1.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>Ŭ��¡ ��ũ -- ������ �ʿ��� �Ǻθ� ���� �ε巯�� ����</h2>
                        <p>
                            ������ ������ �ؽ�ó�� ��ȣ�ϴ� �е��� �����ϴ� Ŭ��¡ ��ũŸ����<br>
                            �Ǻο��� ������ �Ѿư��� �ʰ� ���� ���ϸ鼭�� �Ĳ��� Ŭ��¡�� �����մϴ�. <br>
                            �پ��� �Ǻ� Ÿ�Կ� ���������� Ư�� �Ǽ� �Ǻο� �ΰ��� �Ǻο� �̻����Դϴ�. 
                        </p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-2.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>ũ�� Ŭ��¡ -- �Ǽ� �Ǻθ� ����� �߿� ���Ŀ� �ܿ�ö�� �̻���</h2>
                        <p>
                            �Ǽ� �Ǻο� �ǰǼ� �Ǻο� ������ ũ�� Ŭ������ <br>
                            ȭ��Ʈ Ŭ���̰� ǳ���ϰ� �����Ǿ� �ܿ����� �ľ�� ������� ǳ���� 
                            �Ĺ��� ������ ��ǰ ���� ���� Ŭ��¡�� �����Ͽ� �Ǻθ� �����ϰ� �ε巴�� �����ݴϴ�. 
                        </p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-3.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>Ŭ��¡ ���� -- ����ũ���� �ܿ����� ȿ�������� �ε巴�� ����</h2>
                        <p>
                            ����ũ��, ����, �ܿ����� ���� ������ �����ؼ� �ż��ϰ� �����ϴ� ������ �մϴ�.<br>
                            ���� ��ǰ���� �Ǽ� �Ǻο��� ��︰�ٴ� �ν��� ������ 
                            Ŭ��¡ ������ ������ ������ �����ϴµ� ������ <br>
                            ���� �Ǻο��� ������ �� �� �ֽ��ϴ�.  
                        </p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-4.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>�� Ŭ���� -- �پ��� �Ǻ� Ÿ���� ���� ���� ����</h2>
                        <p>
                            �� Ŭ������ �Ϲ������� ����, ��ũ�� ũ�� Ÿ�� Ŭ������ ���� <br>
                            ��� Ȱ���� �Է��� �ټ� ���Ƽ� Ư�� ���� ������ �þ�� ����ö�� �����ϸ�<br> 
                            ö���ϰ� ������ Ŭ��¡�� �����ݴϴ�.  
                        </p>
                    </div>
                </div>
            </div>
            </div>
        </section>

    
    
    
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


         $('#type .tab>li>a').on('click', function(e){
              e.preventDefault();
              $('#type .panel').hide();
              $(this).next('.panel').show();
            });

            $('#type .tab>li>a').first().trigger('click');

            

     </script>
    
    </body>
    
    </html>