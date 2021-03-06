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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <title>???Ļ???</title>
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
      




        <div style="position: fixed; bottom:5%; right:3%;z-index:150;">
            <a alt="?? ????" class="moveTopBtn">
                <div  style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="?ֱ? ?? ?ü?">
                <div style="border-radius:50%;z-index:150; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">?ֱٺ??ü?</p>
                </div>
            </a>
        </div>






    <div class="about-ban">
        <div class="text-box">
            <h1>?ɾ?????</h1>
        </div>
    </div>


    <section id="review" class="content">
        <div class="inner">
            <h1>???Ļ???</h1>
            <p>ġ?? ???? ?޶??? ???¸? ???? Ȯ???ϼ???</p>
            <div class="wrap">

                <ul class="tab">
                    <!-- ???̽? -->
                    <li>
                        <a href="#" class="menu">???̽?</a>
                        <div class="panel ">
                            <div class="con"><ul>
                                <li>
                                    <div class="top top1">
                                        <div class="imgs">
                                            <img src="img/review-f-yun.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.01.05</h1>
                                                    <h1>22.04.18</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>?????ֻ?</h1>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top top1">
                                        <div class="imgs">
                                            <img src="img/review-f-face.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.02.15</h1>
                                                    <h1>22.06.27</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>???̽??ʷ?</h1>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top top1">
                                        <div class="imgs">
                                            <img src="img/review-f-hi.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.03.07</h1>
                                                    <h1>22.07.26</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>??????</h1>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top">
                                        <div class="imgs">
                                            <img src="img/review-f-jo.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.05.16</h1>
                                                    <h1>22.08.12</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>?????ֻ?</h1>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top">
                                        <div class="imgs">
                                            <img src="img/review-f-sa.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.06.14</h1>
                                                    <h1>22.07.25</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>?簢?? ???彺</h1>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top">
                                        <div class="imgs">
                                            <img src="img/review-f-sa2.jpg" alt="">
                                            <div class="bg">
                                                <div class="bg-txt">
                                                    <h1>22.09.04</h1>
                                                    <h1>22.11.15</h1>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="txt">
                                            <h1>?Բ??? ?ʷ?</h1>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            </div>
                        </div>
                    </li>

                    <!-- ??Ų -->

                    <li>
                        <a href="#" class="menu">??Ų</a>
                        <div class="panel ">
                            <div class="con">
                                <ul>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-s-clarity2.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.01.20</h1>
                                                        <h1>22.04.27</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>Ŭ????Ƽ</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-s-yeo2.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.02.05</h1>
                                                        <h1>22.06.13</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>???帧 ?ɾ?</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-s-a.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.03.14</h1>
                                                        <h1>22.07.16</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>????????</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-s-yeo.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.05.10</h1>
                                                        <h1>22.08.08</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>???帧 ????</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-s-clarity.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.09.14</h1>
                                                        <h1>22.10.25</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>Ŭ????Ƽ</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-s-fil.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.09.23</h1>
                                                        <h1>22.11.18</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>?˶??? ?ʸ?</h1>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>

                    <!-- ?ٵ? -->
                    <li>
                        <a href="#" class="menu">?ٵ?</a>
                        <div class="panel ">
                            <div class="con">
                                <ul>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-b-girl.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.01.01</h1>
                                                        <h1>22.04.12</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>?ɱ׷? ?ֻ?</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-b-jong2.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.02.11</h1>
                                                        <h1>22.06.21</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>???Ƹ? ???彺</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top top1">
                                            <div class="imgs">
                                                <img src="img/review-b-body.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.03.21</h1>
                                                        <h1>22.05.26</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>?ٵ? ???彺</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-b-body2.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.05.16</h1>
                                                        <h1>22.08.19</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>?ٵ? ????ũ</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-b-jong.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.06.04</h1>
                                                        <h1>22.07.20</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>???Ƹ? ???彺</h1>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="top">
                                            <div class="imgs">
                                                <img src="img/review-b-girl2.jpg" alt="">
                                                <div class="bg">
                                                    <div class="bg-txt">
                                                        <h1>22.09.12</h1>
                                                        <h1>22.11.18</h1>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="txt">
                                                <h1>?ɱ׷? ?ֻ?</h1>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
                <p>?????ο? ???? ?ü? ?? ?ױ?, ???? ?? ???ۿ??? ?߻? ?? ?? ?????? ?ü??? ???õ? ???ǻ????? ?????? ?????Ͻñ? ?ٶ??ϴ?.</p>
            </div>

        </div>
    </section>










<!-- Ǫ?? -->

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

    var menu = document.querySelector('.menu');
    menu.onclick = function() {
        text.style.color = 'pink';
    }


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

$(function(){
    $('#review .menu').on('click', function(e){
        var i = $(this).parents('li').index();
        e.preventDefault(); 
    
        $('#review .panel').hide();
        $(this).next('.panel').show();
        $('#review .tab>li').removeClass('on').eq(i).addClass('on');
    });
    $('#review .menu').first().trigger('click');

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

    

gsap.to('.top-wrap > .top-box2', {
scrollTrigger:{
trigger:'.top-wrap',
start:'top -98px',
scrub:true
},height:'60px',textalign:'center',top:'0',position:'fixed',background:'white'
});





</script>
</body>
</html>