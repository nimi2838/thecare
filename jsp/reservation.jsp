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
  <link rel="stylesheet" href="css/rez.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="cal.js"></script>
  <title>시술예약</title>
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
                    <a>더 케어란</a>
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
							<li><a href="custom.jsp">더 모어</a></li>
                        </ul>
                    </div>
                </li>
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



	
<div class = "contents">
<div class = "inner">


			<div class = "tit" style = "width: 100%; border-bottom: 1px solid #ccc;" ><h1 style = "font-size: 33px;">시술예약</h1></div>
    <div class="no_box" style=" margin: 20px auto 0px;">
<%
 try{
 	 String DB_URL="jdbc:mysql://localhost:3306/care?characterEncoding=euckr";   
     String DB_ID="skin";  
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String ctNo = session.getId(); 

	

			

 int total=0;

			String jsql8 = "SELECT * FROM gocart";
			PreparedStatement pstmt8 = con.prepareStatement(jsql8);

			ResultSet rs8 = pstmt8.executeQuery();
			if(rs8.next()) {

				String jsql5= "SELECT * FROM gocart WHERE ctNo=?";
			PreparedStatement pstmt5 = con.prepareStatement(jsql5);
			pstmt5.setString(1, ctNo);

			ResultSet rs5 = pstmt5.executeQuery(); 
			while(rs5.next()){
			
			String opNo = rs5.getString("opNo"); 
			String prdNo = rs5.getString("prdNo"); 


					String jsql4= "SELECT * FROM surgery WHERE prdNo=?";
					PreparedStatement pstmt4 = con.prepareStatement(jsql4);
					pstmt4.setString(1, prdNo);

					ResultSet rs4 = pstmt4.executeQuery(); 
					rs4.next();

					String name = rs4.getString("prdName"); 
					String price = rs4.getString("startprice"); 

					String jsql3= "SELECT * FROM soption WHERE opNo=?";
					PreparedStatement pstmt3 = con.prepareStatement(jsql3);
					pstmt3.setString(1, opNo);

					ResultSet rs3 = pstmt3.executeQuery(); 
					rs3.next();

					String opname = rs3.getString("opName"); 
					int opprice = rs3.getInt("opPrice"); 

					total = total + opprice;
			%>

				
        
    		<div class="search_box">
            <div class="search1">
			<a href="sub_<%=prdNo%>.jsp?prdNo=<%=prdNo%>" class="search_a">
                <h2><%=name%></h2>
                <p><%=opname%></p>
				</a>
            </div>
            <div class="search2">
                <div class="price">
                    <span><%=opprice%></span>원
                </div>
				<a href=deletegocart.jsp?prdNo=<%=prdNo%>&opNo=<%=opNo%> class="btn" style="border: none; background:none;">삭제</a>
            </div>
			</div>
    			
	<%} //while

	%>

		

		<%

		} else {
			%>

			<div class="icon" style="width: max-content; margin: 0 auto; padding-top: 20px;">
			    		<i class="fa-solid fa-circle-exclamation" style="font-size:150px; color: #999999; margin:0 auto 50px;"></i>
			    		</div>
			    		<p class="title" style="text-align:center; font-size: 30px; font-weight:bold; color:#c5c5c5; margin:0 0 100px;">주문할 상품이 없습니다.</p>
			    			<div style="margin: 50px auto 60px; width: max-content;">
			    			<a href="guide.jsp" style="text-align:center; font-size: 25px; background: #999999; width:100%; padding: 25px 125px; color:#fff; font-weight: bold; margin: 0 auto;">시술 담으러 가기</a>
			    			</div>

				<%

								}	//if-else gocart 안에 있으면
				 
		
			

				%>

		

    </div>
<hr>


<form name="res" method=post action = reservationResult.jsp>
<table class="scriptCalendar" style = "float: left;">
    <thead > 
        <tr>
            <td onClick="prevCalendar();" style="cursor:pointer;">&#60;&#60;</td>
            <td colspan="5">
                <span id="calYear">YYYY</span>년
                <span id="calMonth">MM</span>월
            </td>
            <td onClick="nextCalendar();" style="cursor:pointer;">&#62;&#62;</td>
        </tr>
        <tr>
            <td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td>
        </tr>
    </thead>
    <tbody></tbody>
</table>



<div class="BookingTimeArea" alt="예약시간" style = "width: 50%; float : right; margin-top : 30px;">
												
						<ul class="List">
							<li>
								<label class = "btns">00:00</label></li>
							
							
														<li>
								<label  class = "btns">10:30</label>
							</li>
							
														<li>
								<label class = "btns">11:00</label>
							</li>
							
							
														<li>
								<label class = "btns">11:30</label>
							</li>
							
							
								
														
														<li>
								<label class = "btns">12:00</label>
							</li>
							
							
														<li>
								<label class = "btns">12:30</label>
							</li>
							
							
														<li>
								<label class = "btns">13:00</label>
							</li>
							
							
														<li>
								<label class = "btns">13:30</label>
							</li>
							
							
														<li>
								<label class = "btns">14:00</label>
							</li>
							
							
														<li>
								<label class = "btns">14:30</label>
							</li>
							
							
														<li>
								<label class = "btns">15:00</label>
							</li>
							
							
														<li>
								<label class = "btns">15:30</label>
							</li>
							
							
														<li>
								<label class = "btns">16:00</label>
							</li>
							
							
														<li>
								<label class = "btns">16:30</label>
							</li>
							
							
														<li>
								<label class = "btns">17:00</label>
							</li>
							
							
														<li>
								<label class = "btns">17:30</label>
							</li>

							<li>
								<label class = "btns">23:59</label>
							</li>
							</ul>
					</div>
 

<%
int total2=0;
int point2 = 0;

	String jsql6= "SELECT * FROM user WHERE uId=?";
					PreparedStatement pstmt6 = con.prepareStatement(jsql6);
					pstmt6.setString(1, myid);

					ResultSet rs6 = pstmt6.executeQuery(); 
					rs6.next();

					int point = rs6.getInt("Point"); 

total2= total - point2;
%>

					<div class = "tit" style = "width: 100%; float:left; border-bottom: 1px solid #ccc;" ><h1 style = "font-size: 33px;">고객정보 입력</h1></div>

					
					
					
					
					
					
					
					
					<table class="table" style="font-size:10pt; margin-top:30px; width: 100%;  ">
					                    
					<tr>

                          <td class = "td_tit">
						  이름 : <input type="text" name="name" class="name" style = "margin-left: 75px;">
						  </td>
                      </tr>
					  <tr>
                          <td class = "td_tit">
                             연락처 : <span class="pbox">
                             <select class="call" name=phone1>
                                <option value="010" selected>010
                                <option value="011">011
                                <option value="016">016
                                <option value="017">017
                                <option value="018">018
                                <option value="019">019
                             </select>
                          </span> &nbsp;&nbsp;&nbsp;-
                             <input type=text name=phone2 size=5 style="margin: 0; margin-left: 8px;"> &nbsp;&nbsp;&nbsp;-
                             <input type=text name=phone3 size=5 style="margin: 0; margin-left: 8px;">
                          </td>
                       </tr>
					   <tr>
                          <td class = "td_tit">
                             성별 : <input type=radio name=sex value="여자" style="margin-left: 75px;">여자
                             <input type = radio name=sex value="남자">남자
                          </td>
                       </tr>
					   <tr>
					  
                             <td class = "td_tit">
							 <p style = " position: relative;">요청사항 :<textarea name = "memo" style="resize: none;  position: absolute; top:0; left: 115; border-color: #ccc;" cols="45" rows="3"></textarea> 
							 </td>
                          
                       </tr>

				</table>

				<div class = "tit" style = "width: 100%; float:left; border-bottom: 1px solid #ccc; margin: 30px 0;" ><h1 style = "font-size: 33px;">가격 정보</h1></div>

				<table class="price-wrap">
					<tr>
									<td>구매금액</td>
									<td colspan="2" class="margin1"><input type='text' name='sell1' id='sell1' value="<%=total%>">원</td>
					</tr>
					<tr>
									<td>적립금 사용</td>

									<td class="margin2"><input name='sell5' id='sell5' type='text' value="<%=point%>">p 보유 </td>
									<td class="margin3"><span id="result"><input type="text" id="sell3" value="<%=point2%>"></span>원
									<input type = "button" class="btn_Point" onclick='call();' value="사용"></td>
<!-- this.onclick=null; -->
						<script>
//								$("#sell5").on("propertychange change keyup paste input", function() {
//							var currentVal = $(this).val();
//							if(currentVal == oldVal) {
//							} 
//						});
						</script>

					</tr>
					<tr>
									<td>보유 쿠폰</td>
									<td id="coupon"  class="margin4" colspan="2">
										<select name="searchYear" id="coupon">
												<option value="2017">2017</option>
												<option value="2018">2018</option>
												<option value="2019">2019</option>
										</select>

									</td>
					</tr>
					<tr>
									<td>총 결제금액</td>
									<td class="margin5" colspan="2"><input name='sell4' id='sell4' type='text' value="<%=total2%>" style = "color: red;">원</td>
					</tr>
					
					

				</table>

				<script>

				  function point_null() {
                alert("보유한 포인트가 없습니다.");
             }

             function call_null() {
                document.getElementById('sell3');

                const sell3 = document.getElementById('sell3').value;
                    document.getElementById("result").innerText = sell3;
             }
// location.reload();
				
							function call() {
								window.location.href + "#sell5";
								
							   var se3=document.getElementById('sell3').value;
							   var se5=document.getElementById('sell5').value;

									if (parseInt(se3) > parseInt(se5))
								   {
									  alert("포인트를 사용할 수 없습니다" );

									  document.getElementById('sell3').value=document.getElementById('sell5').value;
								   } else{
									   

									   if(document.getElementById("sell1").value && document.getElementById("sell4").value  && document.getElementById("sell3").value){
										 
										

										document.getElementById('sell4').value =parseInt(document.getElementById('sell1').value) - parseInt(document.getElementById('sell3').value);

									  document.getElementById('sell5').value = parseInt(document.getElementById('sell5').value) - parseInt(document.getElementById('sell3').value);


									  const sell3 = document.getElementById('sell3').value;
										document.getElementById("sell3").value= sell3;
										
									   }
								   }

							}


				</script>

 <button type="submit"  class="rez_btn" value= "예약" onClick="checkValue()" style= "cursor: pointer;" >예약</button>
</form>
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

        
        
<%


    } catch(Exception e) {
		out.println(e);
}


%>
  
    
        <!-- Swiper JS -->
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>
        
        
        
        </body>
        </html>