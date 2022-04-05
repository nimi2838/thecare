<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/note.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <title>메인페이지</title>
</head>
<body>

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

    <div class="note_box">

        <h1>시술 기록장</h1>

        <a href="note_detail.jsp" class="con_box">

            <div class="img-box">
                <img src="img/dsp.png" alt="">
            </div>

            <div class="text-box">

                <div class="text1">
                    <h3>윤곽주사 아프네요,,</h3>
                    <div class="icon-box">
                        <div class="icon1">
                           방금 맞고왔는데 아프긴 하지만 벌써 이뻐보이네요
                        </div>
                    </div>
                </div>

                <div class="text2">
                    <div class="img-box">
                        <i class="fa-solid fa-comment"></i>
                    </div>
                    <div class="cnt">
                        0
                    </div>
                </div>
            </div>
            
        </a>
        <hr>




         <a href="note_detail.jsp" class="con_box">

            <div class="img-box">
                <img src="img/osn.png" alt="">
            </div>

            <div class="text-box">

                <div class="text1">
                    <h3>하이코 전후차이 ㅜㅜ</h3>
                    <div class="icon-box">
                        <div class="icon1">
                            4개월차고 하이코 했는데 원래 코 끝이 높아지고 복코 좀 개선하려는 게 제 수술 목적이었는데 친구들 마다 콧대가 좀 높아진거 말고는 전코랑 차이가 없다고 하고
                        </div>
                    </div>
                </div>

                <div class="text2">
                    <div class="img-box">
                        <i class="fa-solid fa-comment"></i>
                    </div>
                    <div class="cnt">
                        4
                    </div>
                </div>
            </div>
            
        </a>
        <hr>


          <a href="note_detail.jsp" class="con_box">

            <div class="img-box">
                <img src="img/dsn.png" alt="">
            </div>

            <div class="text-box">

                <div class="text1">
                    <h3>손에 땀 이제 안녕</h3>
                    <div class="icon-box">
                        <div class="icon1">
                            손발에 땀이 많아 불편했는데 다한증 보톡스 맞고 훨 나아짐 강추!
                        </div>
                    </div>
                </div>

                <div class="text2">
                    <div class="img-box">
                        <i class="fa-solid fa-comment"></i>
                    </div>
                    <div class="cnt">
                        1
                    </div>
                </div>
            </div>
            
        </a><hr>
		
		
		  <a href="note_detail.jsp" class="con_box">

            <div class="img-box">
                <img src="img/orn.png" alt="">
            </div>

            <div class="text-box">

                <div class="text1">
                    <h3>사각턱 개빡침ㅡㅡ</h3>
                    <div class="icon-box">
                        <div class="icon1">
                            제목 곧 내용 (ㅈㄱㄴ)
                        </div>
                    </div>
                </div>

                <div class="text2">
                    <div class="img-box">
                        <i class="fa-solid fa-comment"></i>
                    </div>
                    <div class="cnt">
                        5
                    </div>
                </div>
            </div>
            
        </a>
    </div>

<!--     <input type="file" id="inputImage">
    
    <button id="sendButton">보내기</button>
      
    <img src="" class="uploadImage"> -->


			 <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo-ft.png" width="150" alt="" style="margin-bottom: 20px;">
            <p class="text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
            </p>
            <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 대표자 : 봉조율
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 전화번호 : 02-517-0912
            </p>
            <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
    </div>





     <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>



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


            function in_check()
            {
                    if (document.input.in_content.value == "") 
                    {
                        alert("댓글을 입력해주세요...");
                        return;
                    }
    
                document.input.submit();
            }


            const $topBtn = document.querySelector(".moveTopBtn");

            // 버튼 클릭 시 맨 위로 이동
            $topBtn.onclick = () => {
                window.scrollTo({
                    top: 0,
                    behavior: "smooth"
                });
            }

        </script>

    </body>
</html>