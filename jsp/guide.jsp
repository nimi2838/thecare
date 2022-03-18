<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/guide.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <title>시술안내</title>
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
                    <a>더 케어란</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">스토리</a></li>
                            <li><a href="about_3.jsp">오시는길</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>피부타입</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">더 체크</a></li>
                            <li><a href="qna.jsp">더 소통</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>시술</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">안내/비용</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>예약</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">바로예약</a></li>
                            <li><a href="change.jsp">예약확인/변경/취소</a></li>
                            <li><a href="new_view.jsp">최근본시술</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>커뮤니티</a>
                    <div>
                        <ul>
                            <li><a href="noti.html">공지사항</a></li>
                            <li><a href="event.html">이벤트</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>





    <div class="categori_box">

        <div class="categori">
            <h1>카테고리</h1>
            <ul class="plz">
                <li class="on">
                    <p>스킨케어</p>
                </li>
                <li>
                    <p>안면케어</p>
                </li>
                <li>
                    <p>페이스라인</p>
                </li>
                <li>
                    <p>바디라인</p>
                </li>
            </ul>

        </div>


        <div class="about1-1">

            <h1>시술안내/가격</h1>
            <!-- 스트레스 -->
            <div class="ne ne1">

                <div class="row">


					<div class="box">
                        <a href="sub_1.jsp?prdNo=sk02">
                            <div class="name">여드름케어</div>
                            <p>여드름 압출이 포함된 스킨케어</p>
                            <div class="price"><span>70,000</span>원 부터</div>
                        </a>
                    </div>

					
                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk01">
                            <div class="name">아쿠아필</div>
                            <p>저자극 모공청소 ! 착한 수분필링</p>
                            <div class="price"><span>29,000</span>원 부터</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">


					<div class="box">
                        <a href="sub_1.jsp?prdNo=sk03">
                            <div class="name">클라리티</div>
                            <p>주근깨 / 잡티 / 홍조를 개선하는 더케어만의 시그니처 색소 프로그램 </p>
                            <div class="price"><span>200,000</span>원 부터</div>
                        </a>
                    </div>

					
                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk04">
                            <div class="name">다한증 보톡스</div>
                            <p>손/발/겨드랑이를 뽀송뽀송하게! </p>
                            <div class="price"><span>50,000</span>원 부터</div>
                        </a>
                    </div>

                </div>



            </div>

            <div class="ne ne2">

                

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fa01">
                            <div class="name">페이스필러</div>
                            <p>내 얼굴에 딱 맞는 맞춤형 필러</p>
                            <div class="price"><span>150,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fa02">
                            <div class="name">하이코</div>
                            <p>비수술적 콧대개선 하이코 (HIKO)</p>
                            <div class="price"><span>140,000</span>원 부터</div>
                        </a>
                    </div>


                </div>

				<div class="row">


					<div class="box">
                        <a href="sub_1.jsp?prdNo=fa03">
                            <div class="name">입술/입꼬리필러</div>
                            <p>화사한 미소를 위한 입술/입꼬리필러</p>
                            <div class="price"><span>59,000</span>원 부터</div>
                        </a>
                    </div>

                </div>


            </div>

            <div class="ne ne3">

                <div class="row flex">

                    <div class="box">
                      <a href="sub_1.jsp?prdNo=li01">
                            <div class="name">사각턱 보톡스</div>
                            <p>발달된 턱 근육을 줄여 갸름한 V라인으로 </p>
                            <div class="price"><span>19,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=li02">
                            <div class="name">윤곽주사</div>
                            <p>미운 볼살, 턱밑살 이젠 안녕! </p>
                            <div class="price"><span>50,000</span>원 부터</div>
                        </a>
                    </div>

                </div>

				<div class="row flex">


                    <div class="box">
                        <a href="sub_1.jsp?prdNo=li03">
                            <div class="name">조각주사</div>
                            <p>고농도로 업그레이드된 얼굴지방분해주사</p>
                            <div class="price"><span>300,000</span>원 부터</div>
                        </a>
                    </div>

                </div>



            </div>

            <div class="ne ne4">

                <div class="row flex">

                    <div class="box">
				
                        <a href="sub_1.jsp?prdNo=bo01">
                            <div class="name">바디 보톡스</div>
                            <p>부위 : 종아리/승모근/허벅지/팔뚝 </p>
                            <div class="price"><span>99,000</span>원 부터</div>
                        </a>
                    </div>




                    <div class="box">
                        <a href="sub_1.jsp?prdNo=bo03">
                            <div class="name">엣지 주사</div>
                            <p>발목/부유방 지방분해 </p>
                            <div class="price"><span>290,000</span>원 부터</div>
                        </a>
                    </div>

                </div>


				<div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=bo04">
                            <div class="name">걸구룹 주사</div>
                            <p>복부/팔뚝/허벅지/종아리의 지방분해시술 </p>
                            <div class="price"><span>400,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=bo02">
                            <div class="name">바디슈링크</div>
                            <p>바디탄력개선을 위한 초음파리프팅</p>
                            <div class="price"><span>40,000</span>원 부터</div>
                        </a>
                    </div>

                </div>
                
            </div> 
<!-- row -->

            </div>
<!-- ne -->

        </div>
<!-- about1 -->
    </div>
	<!-- 카테로리박스 -->


    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo.png" width = "150" alt="" style="margin-bottom: 20px;">
          <p class = "text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
        </p>
          <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       대표자 : 봉조율 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       전화번호 : 02-517-0912
        </p>
          <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
     </div>






    <!-- 탑바 -->

    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>





    <script>
        // gsap.to('.top-wrap > .top-box2', {
        //     scrollTrigger: {
        //         trigger: '.top-wrap',
        //         start: 'top -98px',
        //         scrub: true
        //     },
        //     height: '72px',
        //     textalign: 'center',
        //     top: '0',
        //     position: 'fixed',
        //     background: '#fff',
        //     borderBottom: '1px solid #ccc'
        // });


        let = 0

        $(function () {
            $(".plz li").on("click", function () {
                no = $(this).index() + 1;
                $(".plz li ").show();
                $('.plz li ').removeClass('on');
                $(this).addClass('on');

                $(".ne").hide();
                if($('.ne').css('display') == 'none'){
                    $(".ne" + no).show();
        }else{
            $(".ne").hide();
        }
                
                
               
            });
        });



		
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


    </script>

</body>

</html>