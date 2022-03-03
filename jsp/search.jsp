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
  <link rel="stylesheet" href="css/searchno.css" />
  <title>검색결과</title>
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
                    <a href="join.jsp">
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
                            <li><a href="guide.jsp">시술비용</a></li>
                            <li><a href="review.html">전후사진</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>시술예약</a>
                    <div>
                        <ul>
                            <li><a href="reservation.html">예약하기</a></li>
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



<%
 try{
 	 String DB_URL="jdbc:mysql://localhost:3306/care?characterEncoding=euckr";   
     String DB_ID="skin";  
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	request.setCharacterEncoding("euc-kr");
	String keyword = request.getParameter("keyword");    

    String jsql = "SELECT * FROM surgery WHERE titleinfo LIKE '%" + keyword + "%'; ";   
	PreparedStatement pstmt  = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery();

	%>


    
    <div class="about-ban">
        <div class="text-box">
            <i>Search</i>
            <hr>
            <p>통합검색</p>
        </div>
    </div>


    <div class="search_wrap1">


	<%

		if (!rs.next()) {
			%>

 <section id="welcome" class="content">
        <div class="inner">
            <div class="wrap">
                <div class="no">
                    <img src="img/nodata.png" alt="" width="550px" height="400px">
                </div>
            </div>
            
        </div>
    </section>

	<%

		} else {
	while(rs.next()) {
			String pno =  rs.getString("prdNo");	
			String name =  rs.getString("prdName");	
			String  price =  rs.getString("startprice");
			String memo =  rs.getString("prdMemo");	
%>


        <div class="search_box">
            <div class="search1">
                <h2><%=name%></h2>
                <p><%=memo%></p>
            </div>
            <div class="search2">
                <div class="price">
                    <span><%=price%></span>원 부터
                </div>
                <a href="sub_1.jsp?prdNo=<%=pno%>" class="btn">상세보기</a>
            </div>
        </div>


		<%
		}
	}

		%>


    </div>



<%
    } catch(Exception e) {
		out.println(e);
}
%>



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
    


    



<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>

<!-- Initialize Swiper -->
<script>
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
},height:'67px',textalign:'center',top:'0',position:'fixed',background:'white'
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