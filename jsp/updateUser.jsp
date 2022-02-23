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
  <link rel="stylesheet" href="css/updateUser.css" />
  <script language="javascript" src="js/js_package.js"> </script>
  

  <title>회원정보 변경</title>
</head>

<%
   String myid = (String)session.getAttribute("sid");                                                                           
%>
<body  onLoad="idFocus()">
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






            <!-- 
                <form accept-charset="utf-8" name="search" align="right" style="margin-right:70px;" method = "get" action ="NextFile.jsp" onsubmit="return keyword_check()" autocomplete=off>
					<td class="search">
					  <input class="form" type="text"  name="keyword" placeholder="검색" style="position: absolute;top: 50%;
					  left: 50%; transform: translate(-50%,-50%);  width: 900px; height: 50px; font-size: 25px; color: white;text-align: left; margin: 0 auto; 
					  padding: 18px 0 18px 10px; outline: none; display: block; border: 0; border-bottom: 1px solid white; background: rgba(87, 87, 87, 0);
					   box-shadow: none;">
					  </td>
					<td class="schBtn" style="top: 0; left: 10px;">
					<input  type="image" src="img-1/schBtn.png" alt="검색" onsubmit="search_form()"
					style="position: absolute;top: 49%;
					  left: 72%; transform: translate(-49%,-72%); width: 30px; height: 30px;">
					</td>  
					</form> -->






            <!-- <div class="flex-1-0-0 flex flex-ai-c flex-jc-e">
                    <div class="search-form form flex flex-ai-c">
                      <input type="text" placeholder="검색어를 입력해주세요.">
                      <a href="#" class="btn-type-1 btn-search">
                        <div class="img-box">
                            <img src="img/Search_thin_icon.png" alt="">
                        </div>
                      </a>
                    </div>
                  </div> -->


        </div>
        <div class="line"></div>


        <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>회사소개</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">더케어란?</a>
                            </li>
                            <li><a href="about_2.jsp">더케어 의료진</a></li>
                            <li><a href="about_3.jsp">더케어 오시는길</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>시술안내</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">시술안내</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>시술예약</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">시술예약</a></li>
                            <li><a href="change.jsp">예약확인/변경/취소</a></li>
                            <li><a href="new_view.jsp">최근본시술</a></li>
                        </ul>
                    </div>
                </li>

                <li class="menu">
                    <a href="custom.jsp">맞춤시술</a>
                </li>
                <li class="jsp">
                    <a>커뮤니티</a>
                    <div>
                        <ul>
                            <li><a href="noti.jsp">공지사항</a></li>
                            <li><a href="qna.jsp">1:1문의</a></li>
                            <li><a href="event.jsp">이벤트</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>

	<%
try {
     String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234";
     
    Class.forName("org.gjt.mm.mysql.Driver"); 
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
   
    String key = request.getParameter("id");   
    String jsql = "select * from user where uId = ?";
    PreparedStatement pstmt = con.prepareStatement(jsql);
    pstmt.setString(1,key);

    ResultSet rs = pstmt.executeQuery();
	rs.next();

    String id = rs.getString("uId");
    String pw = rs.getString("uPw");
    String name = rs.getString("uName");
    String joomin = rs.getString("uJoomin");
    Date birth = rs.getDate("uBirth");
    String solar = rs.getString("uSolar");
    String email = rs.getString("uEmail");
    String phone = rs.getString("uPhone");
	String zipcode = rs.getString("uZipcode");
    String address1 = rs.getString("uAddress1");
	String address2 = rs.getString("uAddress2");
    String sex = rs.getString("uSex");
	String Point = rs.getString("Point");
	String Coupon = rs.getString("Coupon");

	String jsql3 = "select count(?) as cnt from user where Coupon =?";
	 PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	 pstmt3.setString(1,myid);
	 pstmt3.setString(2,Coupon);


	 ResultSet rs2 = pstmt3.executeQuery();
	 rs2.next();
	int cnt = rs2.getInt("cnt");
	
	
%>



	 <!-- 마이페이지 배너 -->

        <div class = "mypage_banner">
            <div class = "inner">
                <div class = "tit">
                <h2>My Page</h2>
                </div>
                <div class = "moon1_1">
                    <h3>1:1 문의</h3>&nbsp;&nbsp;
                    <div class = "btn1_1">
                        <a href="my_QnA.jsp">내 문의</a></div>
                </div>
                
               <div class = "my_info">
               
                    <i class="fa-duotone fa-circle-user"></i>
                </div>

                <div class = "my_info_text">
                    <h1>사용자 님</h1>
                   <a href="updateUser.jsp?id=<%=myid%>">회원정보 변경</a>
                </div>

                <div class = "my_point">
                  <h1>Point</h1>
                    <p><b style = "color: #ff8181;"><%=Point%></b> p</p>
                </div>

                <div class = "my_coupon">
                    <h1>Coupon</h1>
                    <p><b style = "color: #ff8181;"><%=cnt%></b>장</p>
                </div>

               
            </div>
        </div>




        <div class = "mypage_title">
            <div class = "inner">
                <h1>회원정보 변경</h1>
                <hr>
            </div>
        </div>

<center>
 <form name="newMem1" method=post action="updateUserResult.jsp">
   <table class="table">
      <tr>
         <td class="td_tit">아이디</td>
         <td><input type=hidden name="id" value="<%=id%>"><%=id%></td>
      </tr>
      <tr>
         <td class="td_tit">비밀번호</td>
         <td><input type=text name="pw" size=40 value="<%=pw%>"></td>
      </tr>
      <tr>
         <td class="td_tit">이름</td>
         <td><input type=text name="name" size=40 value="<%=name%>"></td>
      </tr>
      <tr>
         <td class="td_tit">주민등록번호</td>
         <td>
<%
          String[ ]  joominArr = joomin.split("-");   
  // String  joominArr[ ] = joomin.split("-");와 동일
  // split()함수 안의 인수를 기준으로 문자열들을 각각 분할하여 배열의 요소들에 
  // 순서대로 저장시킴.  즉, 하이픈(-)을 중심으로 주민번호 앞 6자리와 뒤 7자리를 
  // 별도의 문자열들로 분리 후, joominArr[0]와 joominArr[1]에 각각 저장시킴
%>      
          <input type=text name="joomin1" value="<%=joominArr[0]%>" size="15"> -
         <input type=text name="joomin2" value="<%=joominArr[1]%>" size="16">
         </td>
      </tr>

      <tr>
         <td class="td_tit">생년월일</td>
         <td>
<%
          String[ ]  birthArr = birth.toString().split("-");  
//  split()함수는 String 타입에서만 사용가능하므로, toString()메소드를 사용하여 birth의
//  타입을 Date타입에서 String타입으로 형(type) 변환 후, split()함수를 적용시켜 년,월,일을 분리함.
//  즉, birthArr[0]에는 "년",  birthArr[1]에는 "월", birthArr[2]에는 "일"이 각각 분리되어 저장됨
%>      
          <input type=text name="birthyy" value="<%=birthArr[0]%>" size="7">년
          <input type=text name="birthmm" value="<%=birthArr[1]%>" size="5">월
          <input type=text name="birthdd" value="<%=birthArr[2]%>" size="5">일
<%
   if (solar.equals("양력"))
   {
%>
            <input type=radio name=solar value="양력" checked>양력
            <input type=radio name=solar value="음력">음력
<%
   }
   else
   {
%>
            <input type=radio name=solar value="양력">양력
            <input type=radio name=solar value="음력" checked>음력
<%
   }
%>
         </td>
      </tr>
     <tr>
			<td class="td_tit">이메일</td>
			<td>
<%
	    	String[ ]  emailArr = email.split("@"); 


            String[ ]  emailSelected = new String[6];  
    	// "selected" 문자열을 저장하기 위한 용도의 배열 생성

			if(emailArr[1].equals("naver.com"))
			{
				emailSelected[0] = "selected";
			}  
			else if(emailArr[1].equals("hanmail.net"))
			{
				emailSelected[1] = "selected";
			}
			else if(emailArr[1].equals("daum.net"))
			{
				emailSelected[2] = "selected";
			}
			else if(emailArr[1].equals("nate.com"))
			{
				emailSelected[3] = "selected";
			}
			else if(emailArr[1].equals("gmail.com"))
			{
				emailSelected[4] = "selected";
			}
			else if(emailArr[1].equals("icloud.com"))
			{
				emailSelected[5] = "selected";
			}

%>

		    <input type=text name="email1" value="<%=emailArr[0]%>" size="10">&nbsp;@&nbsp;
			<select name="email2"  >      
				<option value="naver" <%=emailSelected[0]%>>naver.com
				<option value="hanmail" <%=emailSelected[1]%>>hanmail.net
				<option value="daum" <%=emailSelected[2]%>>daum.net
				<option value="nate" <%=emailSelected[3]%>>nate.com
				<option value="gmail" <%=emailSelected[4]%>>gmail.com
				<option value="icloud" <%=emailSelected[5]%>>icloud.com
			</select>
			</td>	
		</tr>
     

	   <tr>
         <td class="td_tit">휴대폰번호</td>
         <td>

<%
          String[ ] phoneArr  = phone.split("-");  
       //  String hpArr[ ]  = phone.split("-"); 와 동일
       // 하이픈(-)을 중심으로 휴대폰번호 앞자리, 중간자리, 뒷자리를 각각 분리 후
       // hpArr[0], hpArr[1], hpArr[2]에 각각 저장시킴

         String[ ]  phoneSelected = new String[6];  
       // "selected" 문자열을 저장하기 위한 용도의 배열 생성

         if(phoneArr[0].equals("010"))
         {
            phoneSelected[0] = "selected";
         }  
         else if(phoneArr[0].equals("011"))
         {
            phoneSelected[1] = "selected";
         }
         else if(phoneArr[0].equals("016"))
         {
            phoneSelected[2] = "selected";
         }
         else if(phoneArr[0].equals("017"))
         {
            phoneSelected[3] = "selected";
         }
         else if(phoneArr[0].equals("018"))
         {
            phoneSelected[4] = "selected";
         }
         else if(phoneArr[0].equals("019"))
         {
            phoneSelected[5] = "selected";
         }

%>
    <span class="pbox">
         <select name="phone1" >      
            <option value="010" <%=phoneSelected[0]%>>010
            <option value="011" <%=phoneSelected[1]%>>011
            <option value="016" <%=phoneSelected[2]%>>016
            <option value="017" <%=phoneSelected[3]%>>017
            <option value="018" <%=phoneSelected[4]%>>018
            <option value="019" <%=phoneSelected[5]%>>019
         </select>  
		 </span>
    -
          <input type=text name="phone2" value="<%=phoneArr[1]%>" size="4"> -
          <input type=text name="phone3" value="<%=phoneArr[2]%>" size="4">
         </td>   
      </tr>
     
      <tr>
			<td class = "td_tit">주소</td>
			<td>
				<input type="text" name="zipcode" value="<%=zipcode%>" size="12" readonly> 
				<input type="button" class="btn" value="우편번호검색"
				 onClick="zipCheck()" style="margin-bottom: 10px;"><br>
						  
				<input type="text" name="address1" value="<%=address1%>" size="40" readonly style="margin-bottom: 10px;"><br>
				<input type="text" name="address2" value="<%=address2%>" size="40">&nbsp(상세주소입력)
			</td>
		</tr>
      
      <tr>
         <td class="td_tit">성별</td>
         <td>
<%
      if(sex.equals("여"))
      {
%>
            <input type=radio name=sex value="여" checked>여
            <input type=radio name=sex value="남">남
<%
      }   
      else
      {
%>
            <input type=radio name=sex value="여" checked>여
            <input type=radio name=sex value="남">남
<%
   }
%>            
         </td>
      </tr>
      
   </table>

 <button type="submit"  class="up_btn" value= "수정하기" onClick="checkValue()" style= "cursor: pointer;" >수정하기</button>
   </form> 


		  </center>







        <div class="footer flex flex-jc-c" style = "margin-top: 70px;">
            <div class="text">
                <img src="./img/logo.png" width = "150" alt="" style="margin-bottom: 20px;">
              <p class = "text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
            </p>
              <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       대표자 : 봉조율 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       전화번호 : 02-517-0912
            </p>
              <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
            </div>
         </div>
        
		      <%
    } catch (Exception e) {
      out.println(e);   
}
%>



        
  
    
        <!-- Swiper JS -->
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>
		
        
        
        
        <!-- Initialize Swiper -->
        
        <!-- 3. 실행 스크립트 -->
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
			function zipCheck()
                 {
                 	window.open("zipCheck1.jsp", "win", "width=430, height=710, scrollbars=yes, status=yes");
                 }
        
        
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