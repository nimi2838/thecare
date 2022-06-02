<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/sub_1.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/guide.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<title>상세화면</title>
</head>

<%
   String myid = (String)session.getAttribute("sid");         
   

   		int total = 0;
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




	
<%



		

try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	request.setCharacterEncoding("euc-kr");

	String ctNo = session.getId(); 
	String no = request.getParameter("prdNo");  
	Date now = new Date();

	String jsql5 = "select * from newview where ctNo =? and prdNo =?;";   
	PreparedStatement pstmt5 = con.prepareStatement(jsql5);
	pstmt5.setString(1, ctNo);
	pstmt5.setString(2, no);

	ResultSet rs5 = pstmt5.executeQuery();

	if ( rs5.next()){

	} else {


// DELETE FROM newview WHERE DATE_SUB(NOW(), INTERVAL -1 MINUTE) > added_time; 
			String jsql4 = "insert into newview (ctNo, prdNo, added_time) values (?,?,now())";
			PreparedStatement pstmt4 = con.prepareStatement(jsql4);
			pstmt4.setString(1,ctNo);
			pstmt4.setString(2,no);



			pstmt4.executeUpdate();
	}
		

	String jsql = "select * from surgery where prdNo = ?";   
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1, no);

	ResultSet rs = pstmt.executeQuery();

%>







    <div class="sub_con_box ">
        <div class="sub_con flex">

            <div class="sub_text1">

			<%
				while(rs.next()) {





					String pno =  rs.getString("prdNo");	
					String name =  rs.getString("prdName");
					String memo =  rs.getString("prdMemo");
					int prdprice = rs.getInt("prdPrice");
					String price =  rs.getString("startprice");	      
					String info = rs.getString("titleInfo");
					String sub_s = rs.getString("sub_s");
					String sub_m = rs.getString("sub_m");
					String sub_h = rs.getString("sub_h");
					String sub_y = rs.getString("sub_y");
					String point1 = rs.getString("point1");
					String point2 = rs.getString("point2");
					String point3 = rs.getString("point3");
					String effectmemo1 = rs.getString("effectmemo1");
					String effectmemo2 = rs.getString("effectmemo2");


					
//				Cookie cook = new Cookie(pno,URLEncoder.encode(name,"euc-kr"));
	//			cook.setMaxAge(60*60);
	//			response.addCookie(cook);

				%>


                <h1><%=name%></h1>
                <p><%=memo%></p>
                <div class="price">
                    <span><%=price%></span>원 부터
                </div>
                <hr>
                <div class="tag">
                    #일상생활바로가능 #간편한주사시술 <br>
                    #10분내외 #다른시술과병행가능
                </div>
            </div>

            <div class="sub_text2">
                <div class="option flex">
                    <div>시술선택</div>

					

                    <form name="form1">
                        <table cellpadding="0" cellspacing="0" style="cursor:pointer" onClick="multiSelect('OPEN')">
                          <tr>
                           <td>시술 옵션
                            <input type="button" value="Ⅴ" style="background:none; outline:none; border:none; ">
                        </td>
                          </tr>
                        </table>
                   
                        <div id="Div">
                            <ul>
							<input type="hidden" value="<%=prdprice%>" name='sell5' id='sell5' >
							<%


						String jsql1 = "select * from soption where prdNo = ?";   
				PreparedStatement pstmt1 = con.prepareStatement(jsql1);
				pstmt1.setString(1, no);

				ResultSet rs1 = pstmt1.executeQuery();


			while(rs1.next()) {	
				


				String opname = rs1.getString("opName");
				String opno = rs1.getString("opNo");
				int opprice = rs1.getInt("opPrice");

						
						%>

                                <li>
								<input type="checkbox" name="<%=opno%>" id="<%=opno%>"><%=opname%>
								<input type="hidden" value="<%=opprice%>" name='sell3' id='sell3' >
								</li>
								<%
			}

				%>
                            </ul>
                            <div><input type="button" value="확인" onClick="multiSelect('CLOSE');call();"></div>
                        </div>
                       </form>


                </div>

                <div class="price-wrap">
                    <div class="price-box flex flex-jc-sb">
                        <div>총 금액</div>
                        <div class="price1">
                            <span><input name='sell4' id='sell4' type='text' value="<%=prdprice%>" style="outline: none; border:none; text-align: right;"></span>원
                        </div>
                    </div>
                    <p>부가세 10% 별도</p>
                </div>

				


				<form name= product method="post">
				<input type=hidden name = prdNo value="<%=no%>">
                <div class="btn-box">

					<%

				String jsql3 = "select * from cart where ctNo =? and prdNo = ?";
		PreparedStatement pstmt3 = con.prepareStatement(jsql3);
		pstmt3.setString(1, ctNo);
		pstmt3.setString(2, no);
		ResultSet rs3 = pstmt3.executeQuery(); 
		

		if(rs3.next())   
		{		         
			%>

			<a href="#" onClick=cart1()>장바구니 담기</a>


				<%
		}
		else  
		{
			%>

					<a href="#" onClick=inCart1()>장바구니 담기</a>

				<%
		} 
				%>

				
 <a href="cart.html">시술 예약하기</a>
                </div>
				</form>
				
				<%

					
			}
					%>

            </div>

        </div>
    </div>


	<%
			String jsql2 = "select * from surgery where prdNo = ?";   
				PreparedStatement pstmt2 = con.prepareStatement(jsql2);
				pstmt2.setString(1, no);

				ResultSet rs2 = pstmt2.executeQuery();

			while(rs2.next()) {
				String pno =  rs2.getString("prdNo");	
				String name =  rs2.getString("prdName");
				String memo =  rs2.getString("prdMemo");
				String price =  rs2.getString("startprice");	      
				String info = rs2.getString("titleInfo");
				String sub_s = rs2.getString("sub_s");
				String sub_m = rs2.getString("sub_m");
				String sub_h = rs2.getString("sub_h");
				String sub_y = rs2.getString("sub_y");
				String point1 = rs2.getString("point1");
				String point2 = rs2.getString("point2");
				String point3 = rs2.getString("point3");
				String effectmemo1 = rs2.getString("effectmemo1");
				String effectmemo2 = rs2.getString("effectmemo2");
		%>



    <div class="sub_con_box1">
        <div class="sub_con1">

            <p> WHAT IS IT?</p>
            <h1><%=name%>란 ?</h1>
            <p class="memo" style="line-height: 30px;">
                <%=info%>
            </p>

			

            <div class="con_wrap1 flex flex-jc-sb">

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/time.png" alt="">
                    </div>
                    <h2>시술시간</h2>
                    <p><%=sub_s%></p>
                </div>

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/injection.png" alt="">
                    </div>
                    <h2>마취여부</h2>
                    <p><%=sub_m%></p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/effect.png" alt="">
                    </div>
                    <h2>회복기간</h2>
                    <p><%=sub_h%></p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/downtime.png" alt="">
                    </div>
                    <h2>유지기간</h2>
                    <p><%=sub_y%></p>
                </div>

            </div>



			<div class="detail flex" style="width:70%; margin: 50px auto 0;">
				<div style="margin-left: 0%; margin-right: 1%; width: 45%;">
				<img src ="img/sub_con1.png" style="width:85%;">
				</div>
				<ul style="margin-left: 2%; margin-top: 30px; width: 48%">
					<li style="padding: 10px 50px; margin: 20px 0; border:1px solid #ddd; border-radius: 25px;">
						<div class="text flex">
							<span style="font-size:43px; margin-top: 15px; margin-right: 30px;">01</span>
							<div>
								<h3 style="font-size:25px; margin:20px 0;">KAGS 기준 5단계 이상의 여드름</h3>
								<p style="font-size:20px; line-height: 28px; text-align:start;">
								붉고 큰 화농성 여드름이 20개 이상,<br>
								중등도의 진행성 흉터가 있는 상태
								</p>
							</div>
						</div>
					</li>
					<li style="padding: 10px 50px; margin: 20px 0; border:1px solid #ddd; border-radius: 25px;">
						<div class="text flex">
							<span style="font-size:43px; margin-top: 15px; margin-right: 30px;">02</span>
							<div>
								<h3 style="font-size:25px; margin:20px 0  0 -15px;">여드름 재발이 거듭된 피부</h3>
								<p style="font-size:20px; line-height: 28px; text-align:start;">
								누적된 자국, 색소침착, 흉터가 많고<br>
								새로 올라온 여드름이 혼재된 상태
								</p>
							</div>
						</div>
					</li>
<li style="padding: 10px 50px; margin: 20px 0; border:1px solid #ddd; border-radius: 25px;">
						<div class="text flex">
							<span style="font-size:43px; margin-top: 15px; margin-right: 30px;">03</span>
							<div>
								<h3 style="font-size:25px; margin:20px 0 0 -30px;">치료 호전도가 미미한 경우</h3>
								<p style="font-size:20px; line-height: 28px; text-align:start;">
								최근 3개월 이상의 치료에 효과가 없고<br>
								치료 종료후 1주일 안에 재발하는 상태
								</p>
							</div>
						</div>
					</li>
				</ul>
			</div>
            



        </div>
    </div>



	

<div class="sub_box_wrap2-1">
	<div class="sub_con_box2-1">
				<p>PROCEDURE PROCESS</p>
				<h1>시술과정</h1>
		<div class="sub_con2-1">
			<div class="con2-1 flex flex-jc-c">
							<div class="box">
							<div>STEP 1</div>
							<p>맞춤상담</p>
							</div>
								<div class="line-box">
									<div class="line1"></div>
									<div class="line2"></div>
									<div class="line3"></div>
									<div class="line4"></div>
								</div>
							<div class="box">
							<div>STEP 2</div>
							<p>자가세안</p>
							</div>
								<div class="line-box">
									<div class="line1"></div>
									<div class="line2"></div>
									<div class="line3"></div>
									<div class="line4"></div>
								</div>
							<div class="box">
							<div>STEP 3</div>
							<p>압출+염증주사</p>
							</div>
							<div class="line-box">
									<div class="line1"></div>
									<div class="line2"></div>
								<div class="line3"></div>
								<div class="line4"></div>
						</div>
				<div class="box">
						<div>STEP 4</div>
					<p>기기관리</p>
					</div>
						<div class="line-box">
							<div class="line1"></div>
							<div class="line2"></div>
							<div class="line3"></div>
							<div class="line4"></div>
						</div>
					<div class="box">
						<div>STEP 5</div>
					<p>모델링팩</p>
					</div>
					<div class="line-box">
							<div class="line1"></div>
							<div class="line2"></div>
							<div class="line3"></div>
							<div class="line4"></div>
						</div>
					<div class="box">
						<div>STEP 6</div>
					<p>마무리</p>
					</div>
				</div>
		</div>

	</div>


</div>




    <div class="sub_con_box2">
        <div class="sub_con2">
            
            <p>RECOMMEND TO CUSTOMERS BELOW</p>
            <h1>이런 분께 추천합니다.</h1>

            <div class="con_wrap2">
                <div class="con_box2">
                    <h6>POINT 1</h6>
                    <hr>
                    <p><%=point1%></p>
                </div>
                <div class="con_box2">
                    <h6>POINT 2</h6>
                    <hr>
                    <p><%=point2%></p>
                </div>
                <div class="con_box2">
                    <h6>POINT 3</h6>
                    <hr>
                    <p><%=point3%></p>
                </div>
            </div>
        </div>
    </div>


<!-- 	<div class="sub_con_box2_1">
        <div class="sub_con2_1">
            
            <p>RECOMMEND TO CUSTOMERS BELOW</p>
            <h1>이런 분께 추천합니다.</h1>

            <div class="con_wrap2_1">
                <div class="img-box" style="width:1000px;">
                    <img src="img/yytest.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
 -->


    <div class="sub_con_box3">
        <div class="sub_con3">
            
            <p>EFFECTIVENESS AND RECOMMENDED PERIOD</p>
            <h1>효과 및 권장주기</h1>

            <div class="img-box">
                <img src="img/sub_effect01.gif" alt="">
            </div>

            <ul class="flex flex-jc-c">
                <li class="flex">
                    <span>1</span>
                    <p style="margin:20px 0; line-height:25px;">
                        <%=effectmemo1%>
                    </p>
                </li>

                <li class="flex">
                    <span>2</span>
                    <p style="margin:20px 0; line-height:25px;">
                       <%=effectmemo2%>
                    </p>
                </li>

                
            </ul>


        </div>
    </div>


	    <div class="sub_con_box5">
        <div class="sub_con5">

			<p>PROCEDURE QUESTIONS</p>
            <h1>시술 Q&A</h1>

            <div class="con_box1">
                <p></p>
				<h1>주의사항</h1>
				<div>관리만큼이나 셀프케어도 효과에 큰 영향을 줍니다. <br>
					주의사항을 꼼꼼히 읽은 후, 잘 지켜주세요.
				</div>
            </div>

            <ul class="con_box2">
                <li>
                    시술 후 세안 및 화장은 2~3시간 뒤부터 가능합니다.
                </li>

                <li>
                    시술 후 3~7일 동안 가급적 과음, 사우나/찜질방 출입, 열탕목욕, 격한 운동은 피해주는 것이 좋습니다.
                </li>

                <li>
                    시술 부위를 심하게 문지르거나 자극을 주는건 피해주시는게 좋습니다.<br>
                    <span>(심한 마사지나 경락은 한 달 동안은 피해주세요)</span>
                </li>

                <li>
                    시술 후 너무 질기거나 딱딱한 음식은 효과 유지기간이 짧아 질 수 있으므로 가급적 피해주는 것이 좋습니다.
                </li>

                <li>
                    피부 상태에 따라 멍과 붓기는 발생할 수 있으나 미약한 정도이며, 곧 완화됩니다.
                </li>

                <li>
                    시술 후 해당부위 뻐근함이 느껴질 수 있으나 일시적 현상이므로 염려하지 않으셔도 됩니다.
                </li>

            </ul>



        </div>

    </div>



    <div class="sub_con_box4">
        <div class="sub_con4">
            
            <div class="con_box1">
                <p>CAUTIONS</p>
				<h1>주의사항</h1>
				<div>관리만큼이나 셀프케어도 효과에 큰 영향을 줍니다. <br>
					주의사항을 꼼꼼히 읽은 후, 잘 지켜주세요.
				</div>
            </div>

            <ul class="con_box2">
                <li>
                    시술 후 세안 및 화장은 2~3시간 뒤부터 가능합니다.
                </li>

                <li>
                    시술 후 3~7일 동안 가급적 과음, 사우나/찜질방 출입, 열탕목욕, 격한 운동은 피해주는 것이 좋습니다.
                </li>

                <li>
                    시술 부위를 심하게 문지르거나 자극을 주는건 피해주시는게 좋습니다.<br>
                    <span>(심한 마사지나 경락은 한 달 동안은 피해주세요)</span>
                </li>

                <li>
                    시술 후 너무 질기거나 딱딱한 음식은 효과 유지기간이 짧아 질 수 있으므로 가급적 피해주는 것이 좋습니다.
                </li>

                <li>
                    피부 상태에 따라 멍과 붓기는 발생할 수 있으나 미약한 정도이며, 곧 완화됩니다.
                </li>

                <li>
                    시술 후 해당부위 뻐근함이 느껴질 수 있으나 일시적 현상이므로 염려하지 않으셔도 됩니다.
                </li>

            </ul>



        </div>

		<%
			}	
			%>
    </div>

	<%
    } 
catch(Exception e) {
		out.println(e);
}
%>






    







    <!-- 탑바 -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>





    <script>

        let = 0

        $(function () {
            $(".plz li").on("click", function () {
                no = $(this).index() + 1;
                $(".plz li ").show();
                $('.plz li ').removeClass('on');
                $(this).addClass('on');

                $(".ne").hide();
                if ($('.ne').css('display') == 'none') {
                    $(".ne" + no).show();
                } else {
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


		function inCart1()              //  "장바구니담기" 버튼을 클릭시 호출
		{
			var frm1 = document.product;
			frm1.action = "incart.jsp";
			frm1.submit();
		}


		function cart1()
		{
			alert('장바구니에 해당 시술이 있습니다.');
		}



		
        function multiSelect(value){
        if(value=="OPEN") {
			Div.style.visibility="visible";
        }else  {
			Div.style.visibility="hidden";
//				$('input:checkbox[name=multicheck]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
//				chkArray.push(this.getAttribute('nm'));
//			});
//			
//			if(chkArray.length>0){
//			  $('#testt').val(chkArray)
//			  }
	
			}
        };







		function call() {
               var se3=document.getElementById('sell3').value;
               var se5=document.getElementById('sell5').value;


		//			document.getElementById('sell4').value =parseInt(document.getElementById('sell1').value) + parseInt(document.getElementById('sell2').value) - parseInt(document.getElementById('sell3').value);

                  document.getElementById('sell4').value = parseInt(document.getElementById('sell5').value) + parseInt(document.getElementById('sell3').value);


//                  const sell3 = document.getElementById('sell3').value;
                  document.getElementById("result").innerText = sell3;
            }




    </script>



</body>

</html>