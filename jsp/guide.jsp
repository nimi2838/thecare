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
                    <a>회사소개</a>
                    <div>
                        <ul>
                            <li><a href="about_1.html">더케어란?</a>
                            </li>
                            <li><a href="about_2.html">더케어 의료진</a></li>
                            <li><a href="about_3.html">더케어 오시는길</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>시술안내</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">시술안내</a></li>
                            <li><a href="review.html">전후사진</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>시술예약</a>
                    <div>
                        <ul>
                            <li><a href="reservation.html">시술예약</a></li>
                            <li><a href="change.html">예약확인/변경/취소</a></li>
                            <li><a href="new_view.html">최근본시술</a></li>
                        </ul>
                    </div>
                </li>
                
                <li class="menu">
                    <a href="custom.html">맞춤시술</a>
                </li>
                <li class="menu">
                    <a>커뮤니티</a>
                    <div>
                        <ul>
                            <li><a href="noti.html">공지사항</a></li>
                            <li><a href="qna.html">1:1문의</a></li>
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
                    <p>보톡스</p>
                </li>
                <li>
                    <p>윤곽/필러</p>
                </li>
                <li>
                    <p>레이저리프팅</p>
                </li>
                <li>
                    <p>색소</p>
                </li>
                <li>
                    <p>스킨케어</p>
                </li>
                <li>
                    <p>체형</p>
                </li>
                <li>
                    <p>제모</p>
                </li>
            </ul>

        </div>


        <div class="about1-1">

            <h1>시술안내/가격</h1>
            <!-- 스트레스 -->
            <div class="ne ne1">

                <div class="row">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=tox01">
                            <div class="name">사각턱 보톡스</div>
                            <p>발달된 턱 근육을 줄여 갸름한 V라인으로 </p>
                            <div class="price"><span>19,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=tox02">
                            <div class="name">주름 보톡스</div>
                            <p>표정주름과 탄력을 개선하는 더모톡신 </p>
                            <div class="price"><span>30,000</span>원 부터</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=tox03">
                            <div class="name">다한증 보톡스</div>
                            <p>손/발/겨드랑이를 뽀송뽀송하게! </p>
                            <div class="price"><span>50,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=tox04">
                            <div class="name">바디 보톡스</div>
                            <p>부위 : 종아리/승모근/허벅지/팔뚝 </p>
                            <div class="price"><span>99,000</span>원 부터</div>
                        </a>
                    </div>

                </div>



            </div>

            <!-- 다이어트 -->
            <div class="ne ne2">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fil01">
                            <div class="name">윤곽주사</div>
                            <p>미운 볼살, 턱밑살 이젠 안녕! </p>
                            <div class="price"><span>50,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fil02">
                            <div class="name">조각주사</div>
                            <p>고농도로 업그레이드된 얼굴지방분해주사</p>
                            <div class="price"><span>300,000</span>원 부터</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fil03">
                            <div class="name">페이스필러</div>
                            <p>내 얼굴에 딱 맞는 맞춤형 필러</p>
                            <div class="price"><span>150,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fil04">
                            <div class="name">하이코</div>
                            <p>비수술적 콧대개선 하이코 (HIKO)</p>
                            <div class="price"><span>140,000</span>원 부터</div>
                        </a>
                    </div>
                </div>


            </div>

            <div class="ne ne3">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=las01">
                            <div class="name">써마지 FLX</div>
                            <p>[정품 팁 확인] 고주파 에너지로 탄력UP]</p>
                            <div class="price"><span>1,000,,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=las02">
                            <div class="name">울쎄라</div>
                            <p>[정품인증서제공] 오리지널 초음파 리프팅 </p>
                            <div class="price"><span>690,000</span>원 부터</div>
                        </a>
                    </div>

                </div>



            </div>

            <div class="ne ne4">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=col01">
                            <div class="name">클라리티</div>
                            <p>주근깨 / 잡티 / 홍조를 개선하는 더케어만의 시그니처 색소 프로그램 </p>
                            <div class="price"><span>200,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=col02">
                            <div class="name">레이저토닝</div>
                            <p>진피까지 도달하는 색소 레이저 </p>
                            <div class="price"><span>60,000</span>원 부터</div>
                        </a>
                    </div>

                </div>

                


            </div>


            <div class="ne ne5">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk01">
                            <div class="name">물광/꿀광주사</div>
                            <p>고농도 히알루론산을 주입하는 보습솔루션</p>
                            <div class="price"><span>350,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk02">
                            <div class="name">NCTF 동안치료</div>
                            <p>스킨부스팅을 위한 최적의 테라피 </p>
                            <div class="price"><span>90,000</span>원 부터</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk03">
                            <div class="name">시그널72/아기주사</div>
                            <p>성장인자와 재생성분으로 피부 개선!</p>
                            <div class="price"><span>150,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk04">
                            <div class="name">알라딘 필링</div>
                            <p>천연미세침으로 피부고민 개선 </p>
                            <div class="price"><span>99,000</span>원 부터</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk05">
                            <div class="name">여드름관리/재생관리</div>
                            <p>여드름 압출이 포함된 스킨케어</p>
                            <div class="price"><span>70,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk06">
                            <div class="name">아쿠아필</div>
                            <p>저자극 모공청소 ! 착한 수분필링</p>
                            <div class="price"><span>29,000</span>원 부터</div>
                        </a>
                    </div>

                </div>


            </div>


            <div class="ne ne6">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=bo01">
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


            <div class="ne ne7">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=wax01">
                            <div class="name">얼굴제모(여성),(남성)</div>
                            <p>깔끔한 인상을 위한 선택</p>
                            <div class="price"><span>50,000</span>원 부터</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=wax02">
                            <div class="name">바디제모(여성)</div>
                            <p>여름 옷도 자신있게</p>
                            <div class="price"><span>30,000</span>원 부터</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=wax03">
                            <div class="name">바디제모(남성)</div>
                            <p>1인실 프라이빗 제모 </p>
                            <div class="price"><span>60,000</span>원 부터</div>
                        </a>
                    </div>


                </div>


            </div>

            







        </div>

    </div>


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