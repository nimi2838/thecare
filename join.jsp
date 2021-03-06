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
  <link rel="stylesheet" href="css/join.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

  <title>회원가입</title>
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
                            <li><a href="#" onclick="login();">더 체크</a></li>
							<li><a href="themore.jsp">더 모어</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>케어원해</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">시술안내/예약</a></li>
                            <li><a href="#" onclick="login();">예약확인/변경/취소</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>소통원해</a>
                    <div>
                        <ul>
                            <li><a href="#" onclick="login();">기록장</a></li>
                            <li><a href="noti.jsp">공지사항</a></li>
                            <li><a href="event.jsp">이벤트</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>


<!-- 모바일로 -->
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
                                <input class="form" name="keyword" type="text" placeholder="검색어를 입력해주세요." style = "border-radius: none" >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="검색" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">더 케어란</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">케어 라이프</a></li>
                                        <li><a href="about_3.jsp">오시는길</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">더 궁금해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">더 체크</a></li>
                                        <li><a href="themore.jsp">더 모어</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">케어원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">시술안내/예약</a></li>
                                        <li><a href="#" onclick="login();">예약확인/변경/취소</a></li>
                                        <li><a href="review.jsp">전후사진</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">소통원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">기록장</a></li>
                                        <li><a href="noti.jsp">공지사항</a></li>
                                        <li><a href="event.jsp">이벤트</a></li>
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
                <li class="menu">
                    <a>케어원해</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">시술안내/예약</a></li>
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





	
           <!-- 모바일로 -->
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
                                <input class="form" name="keyword" type="text" placeholder="검색어를 입력해주세요." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="검색" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">더 케어란</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">케어 라이프</a></li>
                                        <li><a href="about_3.jsp">오시는길</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">더 궁금해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="custom.jsp">더 체크</a></li>
                                        <li><a href="themore.jsp">더 모어</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">케어원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">시술안내/예약</a></li>
                                        <li><a href="change.jsp">예약확인/변경/취소</a></li>
                                        <li><a href="review.jsp">전후사진</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">소통원해</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="note.jsp">기록장</a></li>
                                        <li><a href="noti.jsp">공지사항</a></li>
                                        <li><a href="event.jsp">이벤트</a></li>
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
            <a href="" alt="맨 위로">
                <div class="moveTopBtn" style="border-radius:50%;z-index:2; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="최근 본 시술">
                <div style="border-radius:50%;z-index:2; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">최근본시술</p>
                </div>
            </a>
        </div>

    <div class = "join_main">
        <div class = "inner">
            <div class = "join_box">
                <h1>JOIN</h1>
                <form name="newMem" method=post action=joinResult.jsp>
                    <table class="table" style="font-size:10pt; margin-top:30px;">
        
                       <tr>
                          
                          <td>
                             <div class="td_img flex flex-ai-c">
                             <input type=text name="id" 
                             size="20" placeholder="아이디" oninput="handleOnInput(this)">
							 <input type="button" value="아이디 중복확인"
                              onClick="checkID()" style="margin-bottom: 10px; line-height: 36px; height: 35px; border: 1px solid #777;
                              color: #777; padding: 0; min-width: 114px; width: 13%; margin-left: 2%; cursor: pointer; background-color: #fff; font-size : 12px">
                             </div>
							 <div class = "txtdiv"><p class = "txtp">* 영문, 숫자 입력만 가능합니다.</p></div>
                          </td>
                       </tr>
                       <tr>
                          
                          <td><input type=password name="pw" 
                            size="35" placeholder="비밀번호" style = "margin-top: 20px"></td>
                       </tr>
                       
                       <tr>
                          <td><input type=text name="name" size=35 placeholder="이름"></td>
                       </tr>
                       <tr>
                          <td>
                             <input type=text name=joomin1 size=10 placeholder="주민등록번호" style="display: inline;" oninput="numOnInput(this)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             -
                             <input type=text name=joomin2 size=13 style="display: inline;margin: 0;margin-left: 15px;" oninput="numOnInput(this)">
                          </td>
                       </tr>
                       <tr>
                          <td>
                             <input type=text name=birthyy size=1  style="display: inline;" oninput="numOnInput(this)">년
                             <input type=text name=birthmm size=1 style="display: inline;margin: 0;" oninput="numOnInput(this)">월
                             <input type=text name=birthdd size=1  style="display: inline;margin: 0;" oninput="numOnInput(this)">일
                             <input type=radio name=solar value="양력" style="margin-left: 15px;"  checked>양력
                             <input type=radio name=solar value="음력">음력
                          </td>
                       </tr>
                       <tr>
                          <td>
                             <input type=text name=email1 size=10 placeholder="이메일"> &nbsp;&nbsp;&nbsp;&nbsp;@ &nbsp;&nbsp;&nbsp;&nbsp;
                             <select name=email2>
                                <option value="naver" selected>naver.com
                                <option value="hanmail">hanmail.net
                                <option value="daum">daum.net
                                <option value="nate">nate.com
                                <option value="gmail">gmail.com
                                <option value="icloud">icloud.com
                             </select>
                          </td>
                       </tr>
                       <tr>
                          <td>
                             <span class="pbox">
                             <select class="call" name=phone1>
                                <option value="010" selected>010
                                <option value="011">011
                                <option value="016">016
                                <option value="017">017
                                <option value="018">018
                                <option value="019">019
                             </select>
                          </span> &nbsp;&nbsp;&nbsp;-
                             <input type=text name=phone2 size=5 style="margin: 0; margin-left: 15px;" oninput="numOnInput(this)"> &nbsp;&nbsp;&nbsp;-
                             <input type=text name=phone3 size=5 style="margin: 0; margin-left: 15px;" oninput="numOnInput(this)">
                          </td>
                       </tr>
                       <tr>
                          <td style= "padding-top:7px;"><input type="text" name="zipcode" size="17" placeholder="주소" readonly> 
                             <input type="button" class="btn" value="우편번호 검색"
                              onClick="zipCheck()" style="margin-bottom: 10px;"><br>
                              
                             <input type="text" name="address1" size="35" readonly style="margin-bottom: 10px;"><br>
                             <input type="text" name="address2" size="25">&nbsp;(상세주소입력)</td>
                       </tr>
                       <tr>
                          <td>
                             <input type=radio name=sex value="여자" style="margin-left: 30px;">여자
                             <input type=radio name=sex value="남자">남자
                          </td>
                       </tr>
        
                    </table>
                   
                   <button class="join_btn" value = "회원가입" onClick= "checkValue()" style= "cursor: pointer;">회원가입</button>
                    
            </form>
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
 
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
	 </script>
<script>
function handleOnInput(e)  {
  e.value = e.value.replace(/[^A-Za-z0-9+]/ig, '')
}
function numOnInput(e)  {
  e.value = e.value.replace(/[^0-9+]/ig, '')
}
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