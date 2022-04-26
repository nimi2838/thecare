<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="css/custom-4.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <script src="https://kit.fontawesome.com/214669976f.js" crossorigin="anonymous"></script>
  <title>맞춤시술</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
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
            <li class="menu">
                    <a>더 궁금해</a>
               <div>
                        <ul>
                            <li><a href="custom.jsp">더 체크</a></li>
                     <li><a href="themore.jsp">더 모어</a></li>
                        </ul>
                    </div>
                </li>
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
		<%




	
	request.setCharacterEncoding("euc-kr");




	String aa3 = request.getParameter("aa3");

		
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String id = session.getId();

	

	
	 String jsql1 = "INSERT INTO test (uId, testNo, YN) VALUES (?,?,?)";	

	 PreparedStatement pstmt1  = con.prepareStatement(jsql1);
	 pstmt1.setString(1,myid);
	 pstmt1.setString(2,"num"+3);
	 pstmt1.setString(3,aa3);
	



	pstmt1.executeUpdate();

	 
	

	     
 %>

	 


    <div class="survery content">
        <div class="inner">
            <div class="makde">
             
                <!-- 여기는 막대 
                여기는 퍼센트 넣어야 함-->
				<div>
	<progress value="33" max="100" id="lb"></progress>
</div>
            </div>

			
            <form id="form" name="form" method=post>
            <div class="wrap">
                <h1>피부타입 자가진단</h1>
                
                    <div class="survery-test">
                        <div class="qestion">
                            <h1>Q4</h1>
                            <p>얼굴에 뾰루지나 여드름이 생기나요?</p>
                        </div>
                        <ul class="qna-wrap">
                            <li>
                                <div class="check1-1"> 
                                    <input type="checkbox" id="q1-1" name = "aa4" value= "no2" id="q1-1" onclick = "clickCheck(this)"> 
                                    <label for="q1-1"><p>전혀 생기지 않는다</p> </label> 
                                </div>
                            </li>
                            <li>
                                <div class="check1-2"> 
                                    <input type="checkbox" id="q1-2" name = "aa4" value= "no2" id="q1-1" onclick = "clickCheck(this)"> 
                                    <label for="q1-2"><p>거의 생기지 않는다</p> </label> 
                                </div>
                            </li>
                            <li>
                                <div class="check1-3"> 
                                    <input type="checkbox" id="q1-3" name = "aa4" value= "yes2" id="q1-1" onclick = "clickCheck(this)"> 
                                    <label for="q1-3"><p>1개월에 1회 이상 있다</p> </label> 
                                </div>
                            </li>
                            <li>
                                <div class="check1-4"> 
                                    <input type="checkbox" id="q1-4" name = "aa4" value= "yes2" id="q1-1" onclick = "clickCheck(this)"> 
                                    <label for="q1-4"><p>1주일에 1회 이상 있다</p> </label> 
                                </div>
                            </li>
                        </ul>

                            <a href="main.jsp">
                                <div class="close-test">
                                    <img src="img/test-close.png" alt="">
                                </div>
                            </a>
                    </div>
                
            </div>


			 
                
                   
           
            <!-- 임시 버튼 -->
<!--             <div class="button"> -->
<!--                 <a href="main.html" class="prev">이전</a> -->
<!--                 <a href="custom-2.html" class="next">다음</a> -->
<!--             </div> -->
           
            <div class="button">
                <input type = "button" class="survery-btn prev" value="이전" onClick="history.go(-1)">
                <button class="survery-btn next" onclick="Check()">다음</button>
            </div> 
        </form>
        </div>
    </div>



<%
    

 } catch(Exception e) { 
		out.println(e);
}
%>


    <script>


function clickCheck(target) {	
	 

	
    document.querySelectorAll(`input[type=checkbox]`)
        .forEach(el => el.checked = false);
	target.checked = true;



 

}


function Check(num){
	if ($("input:checkbox[name='aa4']").is(":checked") == false) {
		alert("답변을 선택해주세요.");
		return false;
		
	}
	var form = document.getElementById("form");
	form.action = "custom-5.jsp";
	form.submit();
                  }


function back(){

     

    history.back(); // 방법1

    

}

 


	



function reset() {
    skillGragh.value = resetValue
}
        $('#best .tab>li>a').on('click', function(e){
              e.preventDefault();
              $('#best .panel').hide();
              $(this).next('.panel').show();
            });

            $('#best .tab>li>a').first().trigger('click');

    </script>


    <!-- <section id="welcome" class="content">
        <header>
        <div class="inner">
                <div class="header-content">
                    <h2>피부타입을 <br>
                        알고싶으신가요?</h2>
                    <p>나의 피부타입을 알아보세요!<br>
                        관리법을 추천해드릴게요</p>
                    <a href="custom-test.html">지금 시작하기
                    </a>
                </div>
        </div>
    </header>
    </section>



<div class="question">
    <div class="swiper mySwiper">
        <h2>피부관리하기 힘드시죠?</h2>

        <div class="swiper-wrapper">

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <img src="img/custom-icon-1.png" alt="" >
                        <h2>로션을 발라도<br>
                            피부당김이 느껴져요.</h2>
                        <p>정**님, 21세 , 대학생 </p>
                    </div>
                </div>
            </div>

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <img src="img/custom-icon-2.png" alt="" width="60px" height="60px">
                        <h2>요즘 마스크로 인해<br>
                            피부가 뒤집어져서 속상해요.</h2>
                        <p>이**님, 25세 , 대학생 </p>
                    </div>
                </div>
            </div>

            <div class="swiper-slide">
                <div class="in">
                    <div class="text-1">
                        <img src="img/custom-icon-3.png" alt="" width="60px" height="60px">
                        <h2>화장을 하고 나서 시간이 지나면<br>
                            얼굴에 유분기가 많아져요.</h2>
                        <p>김**님, 28세 , 직장인  </p>
                    </div>
                </div>
            </div>

            
        </div>
        <div class="swiper-pagination"></div>
    </div>
</div>



<section id="fine" >
    <div class="inner">

        <div class="wrap">
            <div class="thank">
            <h3>이젠, 괜찮아요.</h3>
            <div>
                <ul>
                    <li class="test">
                        <h1 >01</h1>
                        <img class="animate__animated animate__flash animate__delay-2s"  src="img/custom-1.png" alt="" width="80px" height="80px" >
                        <h2>맞춤설문</h2>
                        <p>딱 3분! 간단하게 체크하고<br>
                            내 고민에 맞는 피부타입 찾기 </p>
                    </li>
                    <li class="test">
                        <h1>02</h1>
                        <img class="animate__animated animate__shakeX animate__delay-2s" src="img/custom-2.png" alt="" width="80px" height="80px">
                        <h2>관리법</h2>
                        <p>피부타입에 맞는 관리법으로<br>
                         원하는 피부 가지기 </p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    </div>
</section>


<div class="start">
    <div class="wrapper">
        <h1>맞춤설문으로<br>
            피부타입을 알아보세요.</h1>
        <a href="custom-test.html">지금 시작하기</a>
    </div>
</div> -->




    


    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo-ft.png" width = "150" alt="" style="margin-bottom: 20px;">
          <p class = "text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
        </p>
          <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       대표자 : 봉조율 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       전화번호 : 02-517-0912
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
},height:'60px',textalign:'center',top:'0',position:'fixed',background:'white'
});



    // swiper-pagination-bullet-active


    let no;


$(function() {
    $("#welcome .wrap > .box").on("click", function() {
        no=$(this).index()+1;
        $("#welcome .inner .art1_big").hide();
        $("#welcome .art1_big"+no).show();
    })

    $(".art1_big_close").on("click", function() {
        $("#welcome .inner .art1_big").hide();
    })
    
});

$(".art1 .art1_big").click(function (e) {
        if (e.target.className != ".modal") {
          return false;
        } else {
          $(".modal").hide();
        }
});


</script>
</body>
</html>