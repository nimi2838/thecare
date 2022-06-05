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
  <link rel="stylesheet" href="css/manager_insertsur.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

  <title>시술등록</title>
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


    <div class = "join_main">
        <div class = "inner">
            <div class = "join_box">
                <h1>시술등록</h1>
                <form method=post action=insertsurgeryResult.jsp>
                    <table class="table" style="font-size:10pt; margin-top:30px; padding : 0 10px">
                      
                       	<tr>
							<td>카테고리</td>
							
							<td>		
								<select class = "sel" name="ctgType">
									<option value="body">바디라인</option>
	        						<option value="face">안면케어</option>
									<option value="line">페이스라인</option>
									<option value="skin">스킨케어</option>
								</select><p>
							</td>
						</tr>

						<tr>
							<td>시술번호</td>
							<td>		
								<input type="text" name="prdNo">
							</td>
						</tr>
                       
                       <tr>
							<td>시술이름</td>
							<td>		
								<input type="text" name="prdName">
							</td>
						</tr>

						<tr>
							<td>시술가격</td>
							<td>		
								<input type="text" name="startprice">
							</td>
						</tr>

						<tr>
							<td>옵션번호</td>
							<td>		
								<input type="text" name="opNo">
							</td>
						</tr>

						<tr>
							<td>옵션이름</td>
							<td>		
								<input type="text" name="opName">
							</td>
						</tr>

						<tr>
							<td>옵션가격</td>
							<td>		
								<input type="text" name="opPrice">
							</td>
						</tr>
						
                    </table>
                   
                   <button class="join_btn" value = "시술등록" onClick= "checkValue()" style= "cursor: pointer;">시술등록</button>
                    
            </form>
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
 
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
	 </script>

	 
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