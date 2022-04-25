 <%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <script src="https://kit.fontawesome.com/21f77d5a02.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/find_id_pw.css" />
  <script language="javascript" src="js/js_package.js"> </script>
  

  <title>회원정보 변경</title>
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
            <%
	try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String id = session.getId();

%>
	<%
    String jsql2= "SELECT * FROM user WHERE uId=?";
                    PreparedStatement pstmt2 = con.prepareStatement(jsql2);
                    pstmt2.setString(1, myid);

                    ResultSet rs2 = pstmt2.executeQuery(); 


                    if(rs2.next()) {

    %>

                
            <li class="menu">
                    <a>더 궁금해</a>
               <div>
                        <ul>
                            <li><a href="#" onclick = custom()>더 체크</a></li>
                     <li><a href="#" onclick = themore()>더 모어</a></li>
                        </ul>
                    </div>
                </li>

                <%
                    } else {
                %>

                     
            <li class="menu">
                    <a>더 궁금해</a>
               <div>
                        <ul>
                            <li><a href="#" onclick = login()>더 체크</a></li>
                     <li><a href="#" onclick = themore()>더 모어</a></li>
                        </ul>
                    </div>
                </li>

                    <%
                } //if-else 아이디 유무
%>
           <script>
		   function login()
        {
            alert('로그인 후 이용 가능한 페이지입니다.');
            document.location.href="login.jsp";
        }
		function custom()
        {
           
            document.location.href="custom.jsp";
        }
		function themore()
        {
            
            document.location.href="themore.jsp";
        }
		   </script>
               <!--  <li class="menu">
                    <a>차별점</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">안내/비용</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li> -->
                <li class="menu">
                    <a>케어원해</a>
                    <div>
                        <ul>
                     <li><a href="guide.jsp">안내/비용</a></li>
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

        <div style="position: fixed; bottom:5%; right:3%;z-index:150;">
            <a alt="맨 위로" class="moveTopBtn">
                <div  style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="최근 본 시술">
                <div style="border-radius:50%;z-index:150; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">최근본시술</p>
                </div>
            </a>
        </div>




	<div class = "find_main">
                    <div class = "inner">
                        <div class = "find_box">
						<form method = "post" action = "find_id.jsp" target=_parent>
                            <h1 style = "text-align: center;font-weight:bold;color: #4D4D4D;padding-top: 50px;padding-bottom: 20px;">FIND ID</h1>
                            <input type="text" class = "form" name="name" value="" required="true"
                            style="padding:18px; font-size:16px; margin-bottom:0.5rem;" 
                            size="20" placeholder="이름 입력">
                            <input type="text" class = "form" name="phone" value="" required="true" 
                            style="padding:18px; font-size:16px; margin-bottom:0.5rem;" 
                            size="20" oninput="autoHyphen(this)" placeholder="휴대폰 번호 입력" autocomplete="true" onkeydown="onEnterSubmit()">
            
                           
                           <a href="javascrip!t:login_check()"><button type="submit"  class="find_btn" style= "cursor: pointer;">아이디 찾기</button></a>

						   <div class = "find_2menu" >
                        <ul class = "shc" style="margin-top:20px;">
                          <li><button style="background:#fff; border:0; cursor: pointer;"><a href="login.jsp">로그인</a></button></li>
                          <li> | </li>
                          <li><button style="background:#fff; border:0; cursor: pointer;"><a href="find_pwForm.jsp">비밀번호 찾기</a></button></li>
                        </ul>
                       </div>
</form>
</div>
</div>
</div>












<div class="footer flex flex-jc-c" >
            <div class="text">
                <img src="./img/logo-ft.png" width = "150" alt="" style="margin-bottom: 20px;">
              <p class = "text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
            </p>
              <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       대표자 : 봉조율 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       전화번호 : 02-517-0912
            </p>
              <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
            </div>
         </div>
<%
    

 } catch(Exception e) { 
		out.println(e);
}
%>




		         <!-- Initialize Swiper -->
        
        <!-- 3. 실행 스크립트 -->
        <script>
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

		const $topBtn = document.querySelector(".moveTopBtn");

// 버튼 클릭 시 맨 위로 이동
$topBtn.onclick = () => {
  window.scrollTo({ top: 0, behavior: "smooth" });
}



		const autoHyphen = (target) => {
 target.value = target.value
   .replace(/[^0-9]/, '')
   .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
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
		const $topBtn = document.querySelector(".moveTopBtn");

// 버튼 클릭 시 맨 위로 이동
$topBtn.onclick = () => {
  window.scrollTo({ top: 0, behavior: "smooth" });
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