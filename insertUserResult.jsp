<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="css/manager_join.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  

  <title>회원등록</title>
</head>

<div class="top-wrap">
        <div class="top-box1 flex flex-jc-sb flex-ai-c">
            <div class="logo-box ">
                <div class="img-box">
                    <a href="manager_main.jsp">
                        <img src="img/logo.png" alt="" width="150px" height="69px">
                    </a>
                </div>
            </div>
        </div>
        <div class="line"></div>

    </div>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");   
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");

	String	joomin1 = request.getParameter("joomin1");
	String	joomin2 = request.getParameter("joomin2");
	String joomin = joomin1 + "-" + joomin2;

	String	birthyy = request.getParameter("birthyy");
	String	birthmm = request.getParameter("birthmm");
	String	birthdd = request.getParameter("birthdd");
	String	birth = birthyy + "-" +birthmm + "-" + birthdd;

	String	solar = request.getParameter("solar");
	String	email1 = request.getParameter("email1");
	String	email2 = request.getParameter("email2");
	String	email = email1 + "@" +email2;

	String	phone1 = request.getParameter("phone1");
	String	phone2 = request.getParameter("phone2");
	String	phone3 = request.getParameter("phone3");
	String	phone = phone1 + "-"+ phone2 + "-" + phone3;
	 String  zipcode =  request.getParameter("zipcode");

    String  address1 =  request.getParameter("address1");
	String  address2 =  request.getParameter("address2");
	String	address = address1 + " " +address2;
   

	String	sex = request.getParameter("sex");
		

try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "INSERT INTO user (uId, uPw, uName, ";
	 jsql = jsql + "uJoomin, uBirth, uSolar, uEmail, uPhone,";
	 jsql = jsql + "uZipcode, uAddress1, uAddress2, uSex) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,id);
	 pstmt.setString(2,pw);
	 pstmt.setString(3,name);
	 pstmt.setString(4,joomin);
	 pstmt.setString(5,birth);
	 pstmt.setString(6,solar);
	 pstmt.setString(7,email);
	 pstmt.setString(8,phone);
	 pstmt.setString(9,zipcode);
	 pstmt.setString(10,address1);
	 pstmt.setString(11,address2);
	 pstmt.setString(12,sex);

	 pstmt.executeUpdate();


	 %>

		  <%
String jsql2 = "update user set Point='2000' where uId= ?";
PreparedStatement pstmt2  = con.prepareStatement(jsql2);
	 pstmt2.setString(1,id);

	 pstmt2.executeUpdate();

	 } catch(Exception e) { 
		out.println(e);
}
%>


    <div class = "join_main">
        <div class = "inner">
            <div class = "join_box" style = "height : 680px">
                <h1 style = "font-size : 22px; line-height: 31px;">회원가입 이벤트 <br>적립금 2000원이 적립되었습니다!</h1>
                    <table class="table">
        
                       <tr>
                        <td>아이디</td>
						<td class = "td_tit"><%=id%></td>
                       </tr>

					    <tr>
                        <td>비밀번호</td>
						<td class = "td_tit"><%=pw%></td>
                       </tr>

					    <tr>
                        <td>이름</td>
						<td class = "td_tit"><%=name%></td>
                       </tr>

					    <tr>
                        <td>주민등록번호</td>
						<td class = "td_tit"><%=joomin%></td>
                       </tr>

					    <tr>
                        <td>생년월일</td>
						<td class = "td_tit"><%=birth%> (<%=solar%>)</td>
                       </tr>

					    <tr>
                        <td>이메일</td>
						<td class = "td_tit"><%=email%></td>
                       </tr>

					   <tr>
                        <td>휴대폰번호</td>
						<td class = "td_tit"><%=phone%></td>
                       </tr>

					   <tr>
                        <td>주소</td>
						<td class = "td_tit"><%=address1%> <%=address2%> </td>
                       </tr>

					   <tr>
                        <td>성별</td>
						<td class = "td_tit"><%=sex%></td>
                       </tr>



                      
        
                    </table>
                   
                     <a href="main.jsp" class="join_btn">메인화면</a>
                    </div>
                    </form>
                 </div>
              </div>
        </div>
    </div>

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

	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script language="javascript">
               function checkID() //   ID 중복검사를 수행하는 자바스크립트 함수
               {
                  var id = newMem.id.value; // 132행의 form의 이름이 newMem인 것에 주목할 것!

                  if (id == "") //   11~16행:  ID를 입력없이 ID 중복체크 버튼을 클릭할 경우의 처리
                  {
                     alert("ID를 입력해 주세요!");
                     newMem.id.focus();
                     return;
                  }

                  window.open("checkId.jsp?id=" + id, "win", "width=255, height=145, scrollbars=no, resizable=no");
               } //   용례)  =>  window.open("URL", "창이름", "창의 특성");


               function checkValue() 
               { //   자바스크립트함수 
                  if (newMem.id.value == "") 
                  {
                     alert("아이디를 입력해 주세요!"); 
                     newMem.id.focus(); 
                     return; 
                  }

                  if (newMem.pw.value == "") {
                     alert("비밀번호를 입력해 주세요!");
                     newMem.pw.focus();
                     return;
                  }

                  if (newMem.name.value == "") {
                     alert("이름을 입력해 주세요!");
                     newMem.name.focus();
                     return;
                  }

                  if (newMem.joomin1.value == "") {
                     alert("주민등록번호 앞자리를 입력해 주세요!");
                     newMem.joomin1.focus();
                     return;
                  }

                  if (newMem.joomin2.value == "") {
                     alert("주민등록번호 뒷자리를 입력해 주세요!");
                     newMem.joomin2.focus();
                     return;
                  }

                  if (newMem.birthyy.value == "") {
                     alert("태어난 연도를 입력해 주세요!");
                     newMem.birthyy.focus();
                     return;
                  }

                  if (newMem.birthmm.value == "") {
                     alert("태어난 달을 입력해 주세요!");
                     newMem.birthmm.focus();
                     return;
                  }

                  if (newMem.birthdd.value == "") {
                     alert("태어난 날짜를 입력해 주세요!");
                     newMem.birthdd.focus();
                     return;
                  }

                  if (newMem.email1.value == "") {
                     alert("이메일 앞자리를 입력해 주세요!");
                     newMem.email1.focus();
                     return;
                  }

                  if (newMem.email2.value == "") {
                     alert("이메일 뒷자리를 입력해 주세요!");
                     newMem.email2.focus();
                     return;
                  }

                  if (newMem.tel.value == "") {
                     alert("전화번호를 입력해 주세요!");
                     newMem.tel.focus();
                     return;
                  }

                  if (newMem.phone1.value == "") {
                     alert("휴대폰 앞자리 국번을 입력해 주세요!");
                     newMem.phone1.focus();
                     return;
                  }

                  if (newMem.phone2.value == "") {
                     alert("휴대폰 중간자리 번호를 입력해 주세요!");
                     newMem.phone2.focus();
                     return;
                  }

                  if (newMem.phone3.value == "") {
                     alert("휴대폰 끝자리 번호를 입력해 주세요!");
                     newMem.phone3.focus();
                     return;
                  }

                  if(newMem.address1.value == "") {
		             alert("집주소를 입력해 주세요! - (우편번호검색 버튼 클릭)");
		             newMem.address1.focus();
		             return;
                  }

                  if(newMem.address2.value == "") {
		             alert("상세주소를 입력해 주세요!");
		             newMem.address2.focus();
		             return;
                  }
				  if(newMem.sex.value == "") {
		             alert("성별을 선택해 주세요!");
		             newMem.sex.focus();
		             return;
                  }

                  newMem.submit(); 
               }

                 function idFocus()        // 폼이 로딩되면  ID를 입력하는 위치에 바로 커서를 위치시켜놓는
                 {										// 자바스크립트 함수  (body 태그안의 onLoad 이벤트 핸들러에 주목할 것!)
	                 newMem.id.focus();
	                 return;
                 }
                 
                 
                 function zipCheck()
                 {
                 	window.open("zipCheck.jsp", "win", "width=430, height=710, scrollbars=yes, status=yes");
                 }
				 </script>

				 <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>



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
    </script><script>
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



    </script>
</body>
</html>