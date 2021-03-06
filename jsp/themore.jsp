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
                            <input class="form" name="keyword" type="text" placeholder="???????? ????????????." >
                        </td>
                        <td class="schBtn">
                            <input type="image" src="img/Search_thin_icon.png" alt="????" onsubmit="search_form()" style="width: 30px; height: 30px;">
                        </td>
                    </form>
                </div>






        </div>
        <div class="line"></div>


	  <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>?? ????</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">???? ??????</a></li>
                            <li><a href="about_3.jsp">????????</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>?? ??????</a>
					<div>
                        <ul>
                            <li><a href="#" onclick="login();">?? ????</a></li>
							<li><a href="themore.jsp">?? ????</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>????????</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">????????/????</a></li>
                            <li><a href="#" onclick="login();">????????/????/????</a></li>
                            <li><a href="review.jsp">????????</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>????????</a>
                    <div>
                        <ul>
                            <li><a href="#" onclick="login();">??????</a></li>
                            <li><a href="noti.jsp">????????</a></li>
                            <li><a href="event.jsp">??????</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>


<!-- ???????? -->
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
                                <input class="form" name="keyword" type="text" placeholder="???????? ????????????." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="????" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">?? ??????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">???? ??????</a></li>
                                        <li><a href="about_3.jsp">????????</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">?? ??????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">?? ????</a></li>
                                        <li><a href="themore.jsp">?? ????</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">????????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">????????/????</a></li>
                                        <li><a href="#" onclick="login();">????????/????/????</a></li>
                                        <li><a href="review.jsp">????????</a></li>
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
                                        <li><a href="event.jsp">??????</a></li>
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
                            <input class="form" name="keyword" type="text" placeholder="???????? ????????????." >
                        </td>
                        <td class="schBtn">
                            <input type="image" src="img/Search_thin_icon.png" alt="????" onsubmit="search_form()" style="width: 30px; height: 30px;">
                        </td>
                    </form>
                </div>






        </div>
        <div class="line"></div>




	
        <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>?? ????</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">???? ??????</a></li>
                            <li><a href="about_3.jsp">????????</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>?? ??????</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">?? ????</a></li>
							<li><a href="themore.jsp">?? ????</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>????????</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">????????/????</a></li>
                            <li><a href="change.jsp">????????/????/????</a></li>
                            <li><a href="review.jsp">????????</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>????????</a>
                    <div>
                        <ul>
                            <li><a href="note.jsp">??????</a></li>
                            <li><a href="noti.jsp">????????</a></li>
                            <li><a href="event.jsp">??????</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>





	
           <!-- ???????? -->
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
                                <input class="form" name="keyword" type="text" placeholder="???????? ????????????." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="????" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">?? ??????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">???? ??????</a></li>
                                        <li><a href="about_3.jsp">????????</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">?? ??????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="custom.jsp">?? ????</a></li>
                                        <li><a href="themore.jsp">?? ????</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">????????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">????????/????</a></li>
                                        <li><a href="change.jsp">????????/????/????</a></li>
                                        <li><a href="review.jsp">????????</a></li>
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
                                        <li><a href="event.jsp">??????</a></li>
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
            <a alt="?? ????" class="moveTopBtn">
                <div  style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="???? ?? ????">
                <div style="border-radius:50%;z-index:150; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">??????????</p>
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
                        <p>???? ??????</p>
                        <h4>???? ???? TIP</h4>
                    </div>
                </div>

                <div class="cont">
                    <img data-aos="fade-down" src="img/tip-1.jpg" alt="" width="500px" height="300px">
                    <div class="cont-txt">
                        <p>?????? ?????????? ??????<br>
                    ?????? ?????? ?????? ???? ????????????.</p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img data-aos="fade-right" src="img/tip-2.jpg" alt="" width="500px" height="300px">
                    </div>
                    <div class="conts-txt">
                        <p>???? ???? ???????? ??,<br>
                            ?????? ???????? ???? ??????<br>
                            ???? ?????? ?????? ?????? ????.
                        </p>
                        <p>?????? ???? ?????? ????????<br>
                            ?????? ?????? ???? ????????<br>
                            ?????? ???????? ???? ????????.
                        </p>
                    </div>
                </div>

                <div class="cont">
                    <img data-aos="fade-down" src="img/tip-3.png" alt="">
                    <div class="cont-txt">
                        <p>?????? ?????? ?????????? ??????<br>
                            ?????? ?????? ???????? 3???? ????????<br>
                            ???? ?????? ??????????. </p>
                    </div>
                </div>
            </div>
        </section>


    


       
        <section id="mbti" class="content">
            <div class="inner">
                <div class="wrap">

                    <div class="con">
                        <h2>?????? ??????</h2>
                        <div class="you">
                            <div class="box box1">
                                <p class="p-left">???? ???????? ???? ??????<br>
                                    ???? ???? ??????<br>
                                    ?????? ?????? ?? ?????? ????
                                </p>
                                <div class="circle circle1">
                                    <h1>D</h1>
                                    <p>????<br>
                                        Dry
                                    </p>
                                </div>
                            </div>
                            <div class="box box2">
                                <p class="p-right">???? ???????? ????<br>
                                    ?????????? ????????<br>
                                    ???? ?????? ????<br>
                                </p>
                                <div class="circle circle2">
                                    <h1>O</h1>
                                    <p>????<br>
                                        Oily
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="con">
                        <h2>???? ?????? </h2>
                        <div class="you">
                            <div class="box box3">
                                <p class="p-left" style="margin-top: 30px;">?????? ???? ??????<Br>
                                    ???? ?????? ???? ???????? ????
                                </p>
                                <div class="circle circle3">
                                    <h1>S</h1>
                                    <p>??????<br>
                                        Sensitive
                                    </p>
                                </div>
                            </div>
                            <div class="box box4">
                                <p class="p-right">???? ?????? ??????<br>
                                    ???????? ?????????? ????<br>
                                    ?????? ???? ???? ????<br>
                                </p>
                                <div class="circle circle4">
                                    <h1>R</h1>
                                    <p>??????<br>
                                        Resistant
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="con">
                        <h2>???? ?????? </h2>
                        <div class="you">
                            <div class="box box5">
                                <p class="p-left">?????? ???????? ????<Br>
                                    ????, ?????? ???? ???? ??<br>
                                    ???? ?????? ?????? ???? ????
                                </p>
                                <div class="circle circle5">
                                    <h1>P</h1>
                                    <p>??????<br>
                                        Pigment
                                    </p>
                                </div>
                            </div>
                            <div class="box box6">
                                <p class="p-right" style="margin-top: 30px;">?????? ???????? ????<Br>
                                    ???? ?????? ?????? ???? ????
                                </p>
                                <div class="circle circle6">
                                    <h1>N</h1>
                                    <p>????????<br>
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
                <h2>"???? ???? 8????"</h2>
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
                                    <p class="type_txt">???????? ???? ?????? ???????? ?????? ??????!</p>
                                    <p class="type_txt">?????????? ?????? ?? ?????? ?????? ?????? ????,<br>
                                     &nbsp;&nbsp;&nbsp;???????? ?????? ?? ?????? ???? ?????????? ??????????<br>&nbsp;&nbsp; ???????? ?????? ????????????!</p>
                                    <p class="type_txt">?????? ???? ?????? ???? ???? ?????? ?????? ?????? <br>&nbsp;&nbsp; ?????????? ! </p>
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
                                    <p class="type_txt">???????????? ?????? ?????????? ?????? ?????? ??????!</p>
                                    <p class="type_txt">???? ?? ?????? ???????? ?????? ?????? ?? ?????? </p> 
                                    <p class="type_txt">?????????? ???????? ???? ??????????, ??????3 ??????<br>
                                        &nbsp;&nbsp;&nbsp;??????, ??????????, ????????, ?????? ?????? ??????????.
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
                                    <p class="type_txt" style="margin: -6px 0;">???????? ?????? ???? ?????? ?????????? !</p>
                                    <p class="type_txt" style="margin: -6px 0;">????????, ?????????? ?????????? ???? ?????? ?????? <br>&nbsp;&nbsp;&nbsp;??????. </p>
                                    <p class="type_txt" style="margin: -6px 0;">???? SPF30?????? ???????? ??????, ???????????? <br>&nbsp;&nbsp;&nbsp;????????????!</p>
                                    <p class="type_txt" style="margin: -6px 0;">??????, ????????, ??????????, ????????????????????<br>&nbsp;&nbsp;&nbsp;???????? ???????? ?????? ?????? ???? !
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
                                    <p class="type_txt">???????? ???????? ???? ???????????? !</p>
                                    <p class="type_txt">?????? ?????? ?????? ???? ???? ?? ?????? ????????,<br>&nbsp;&nbsp;&nbsp;SPF15?????? ?????? ???????? ???? ???? 
                                        ???? ??????????<br>&nbsp;&nbsp;&nbsp;?????? ???????? ???? ?????? !</p>
                                    <p class="type_txt">???????? ???????? ?????? ?? ! ???????? ???????? ?????? &nbsp;&nbsp;&nbsp;???? ??????.
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
                                    <p class="type_txt">??????????  ?????? ???? ????????, ?????? ?????? ???? <br>&nbsp;&nbsp;&nbsp;??????????! </p>
                                    <p class="type_txt">?????? ?????? ?????? ?????? ???? ???????? ?????????? <br>&nbsp;&nbsp;&nbsp;???? ??????  ?????? ?????????? ?????? !</p>
                                    <p class="type_txt">?????????? ????,???????? ???? ?????? ?????? ???? ?? <br>&nbsp;&nbsp;&nbsp;????
                                        ?????? ?????? ?????? ?????????? ????????????!
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
                                    <p class="type_txt">?????? ?????????? ?????? ?????? ?????? !</p>
                                    <p class="type_txt">?????? ???? ???????? ???????? ?????? ?????? ?????? 
                                        <br>&nbsp;&nbsp;&nbsp;?????? ?????? ?????? ???? ?????? ?? ?????? ?????????? <br>&nbsp;&nbsp;&nbsp;???? ?????????? ????????.</p>
                                    <p class="type_txt">?????????? ???????????? ???? ???? ???? ?????? ???? <br>&nbsp;&nbsp;&nbsp;?????? ?????????? !
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
                                    <p class="type_txt">???????? ?????? ???? ?????? ?? ???????? ?????? ?????? <br>&nbsp;&nbsp;&nbsp;?????? ???????? ????????!</p>
                                    <p class="type_txt">?????????? ?????? ?????? ???????? ????????
                                        ?????????? <br>&nbsp;&nbsp;&nbsp;?????????? ???????????????? ????????????! </p>
                                    <p class="type_txt">SPF 30+ ?????? ?????? ??????????, SPF 50+ ?????? <br>&nbsp;&nbsp;&nbsp;?????? ?????? ?????? ???? ???? ?????? ?????????? !
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
                                    <p class="type_txt">???????? ?????? ?????? ???? ?? ?????? ???????? ?????? <br>&nbsp;&nbsp;&nbsp;???? ?????? ????????!</p>
                                    <p class="type_txt">???????? ?????? ?????? ???????? ?????? ???? ?? ?????? <br>&nbsp;&nbsp;&nbsp;?????? ?????? ??????
                                        ?????????? ?????? ?????? ! </p>
                                    <p class="type_txt">???? ???? ?????? ???? ?????? ?????? ?????? ???? <br>&nbsp;&nbsp;&nbsp;???????? ??????????!
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <p>?????? ????????????.</p>
            </div>
        </section>




        <section id="choice" class="content">
            <div class="inner">

                <div class="title">
                    <h1>?????? CHOICE</h1>
                    <p>?????? ???????? ?????? ???? ?????? ???? ??????????.<br>
                        ???? ?????? ???????? ?????? ?????? ???? ???????? ?????? ?????? ?????? ??????????. </p>
                </div>
                <div class="wrap">
                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-1.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>?????? ???? -- ?????? ?????? ?????? ???? ???????? ????</h2>
                        <p>
                            ?????? ?????? ???????? ???????? ?????? ???????? ?????? ??????????<br>
                            ???????? ?????? ???????? ???? ???? ?????????? ?????? ???????? ??????????. <br>
                            ?????? ???? ?????? ?????????? ???? ???? ?????? ?????? ?????? ????????????. 
                        </p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-2.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>???? ?????? -- ???? ?????? ?????? ???? ?????? ???????? ??????</h2>
                        <p>
                            ???? ?????? ?????? ?????? ?????? ???? ???????? <br>
                            ?????? ???????? ???????? ???????? ???????? ???????? ???????? ?????? 
                            ?????? ?????? ???? ???? ???? ???????? ???????? ?????? ???????? ???????? ??????????. 
                        </p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-3.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>?????? ???? -- ?????????? ???????? ?????????? ???????? ????</h2>
                        <p>
                            ????????, ????, ???????? ???? ?????? ???????? ???????? ???????? ?????? ??????.<br>
                            ???? ???????? ???? ???????? ?????????? ?????? ?????? 
                            ?????? ?????? ?????? ?????? ?????????? ?????? <br>
                            ???? ???????? ?????? ?? ?? ????????.  
                        </p>
                    </div>
                </div>

                <div class="conts">
                    <div class="conts-img">
                        <img src="img/choice-4.png" alt="" width="220px" height="250px">
                    </div>
                    <div class="conts-txt">
                        <h2>?? ?????? -- ?????? ???? ?????? ???? ???? ????</h2>
                        <p>
                            ?? ???????? ?????????? ????, ?????? ???? ???? ???????? ???? <br>
                            ???? ?????? ?????? ???? ?????? ???? ???? ?????? ???????? ???????? ????????<br> 
                            ???????? ?????? ???????? ??????????.  
                        </p>
                    </div>
                </div>
            </div>
            </div>
        </section>

    
    
    
        <div class="footer flex flex-jc-c">
            <div class="text">
                <img src="./img/logo-ft.png" width="150" alt="" style="margin-bottom: 20px;">
                <p class="text1">?????? : ???????????? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ???? : ?????????? ?????? ???????? 439 ( ???????? 4?? )
                </p>
                <p>?????????????? : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ?????? : ??????
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ???????? : 02-517-0912
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

// ???? ???? ?? ?? ???? ????
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
    
                  alert('???????? ??????????');
    
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
			alert('?????? ?? ???? ?????? ????????????.');
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