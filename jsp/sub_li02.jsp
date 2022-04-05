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
							<li><a href="custom.jsp">더 모어</a></li>
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
                            <li><a href="qna.jsp">기록장</a></li>
                            <li><a href="noti.jsp">공지사항</a></li>
                            <li><a href="event.jsp">이벤트</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>

	<div style="position: fixed; bottom:5%; right:3%;z-index:150;">
		<a href="new_view.jsp" alt="최근 본 시술">
	<div  style="border-radius:50%;z-index:150; width:60px;height:60px; margin-bottom: 10px;">
			<img src="img/clock.png">
		</div>
		</a>
		<a href="#" alt="맨 위로">
		<div  style="border-radius:50%;z-index:150; width:60px;height:60px;">
			<img src="img/up.png">
		</div>
		</a>
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
					String price =  rs.getString("startprice");	




					
//				Cookie cook = new Cookie(pno,URLEncoder.encode(name,"euc-kr"));
	//			cook.setMaxAge(60*60);
	//			response.addCookie(cook);

				%>


                <h1><%=name%></h1>
                <p>발단된 턱 근육을 줄여 갸름한 V라인으로</p>
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

					


					

                    <div class="form1">
                        <table cellpadding="0" cellspacing="0" style="cursor:pointer" onClick="multiSelect('OPEN')">
                          <tr>
                           <td>시술 옵션
                            <input type="button" value="Ⅴ" style="background:none; outline:none; border:none; ">
                        </td>
                          </tr>
                        </table>
                   
                        <div id="Div" style="padding: 10px 0 0 0; display: none; ">
						
							<form name="form" method="post" >
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


									
									<table id="tbl_peopleList" class="tab1" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
									<tbody>
											<td><input name="chkbox" type="checkbox" value="<%=opprice%>"  id="chk1" onClick="itemSum(this.form);example_1();">
											<input name="chkbox1" type="checkbox" value="<%=opno%>"  id="chk2" onClick="itemSum(this.form);" style="display:none; position:hidden;"></td>
											<td><%=opname%>      </td>
												<td><%=opprice%></td>
										  </tbody>
									</table>
									<%
			}

				%>
												<td><input name="total_sum" id="sell3" type="hidden" readonly></td>
												<input type=hidden name = prdNo value="<%=no%>">
							</form>
	
                            <div><input type="button" value="확인" id="btn_showChkList" name="btn_showChkList" onClick="multiSelect('CLOSE'); call();"></div>
                        </div>
						
                       </div>

                </div>


				
									




				<div>
				<!-- <input type="text" id="txt_getChkList" style="width: 500px; height:100px; outline:none; border: 0; background: none; font-size: 20px; padding:20px 30px; "> -->
				<textarea spellcheck = "false" id="txt_getChkList" style="display: none;"></textarea>
				</div>

                <div class="price-wrap">
                    <div class="price-box flex flex-jc-sb">
                        <div>총 금액</div>
                        <div class="price1">
                            <span><input id='result' type='text' value="0" style="outline: none; border:none; text-align: right;" readonly></span>원
                        </div>
                    </div>
                    <p>부가세 10% 별도</p>
                </div>




				

			<script language="javascript">

			
					const example1 = document.querySelector('#chk1');
					const example2 = document.querySelector('#chk2');
					const example3 = document.querySelector('#chk3');

					function example_1() {
					if(example1.checked == true) {
						example2.checked = true;
						}else if(example1.checked == false) {
						example2.checked = false;
						}
					   }


							function itemSum(frm)
							{
							   var sum = 0;
							   var count = frm.chkbox.length;
							   for(var i=0; i < count; i++ ){
								   if( frm.chkbox[i].checked == true ){
									sum += parseInt(frm.chkbox[i].value);
								   }
							   }
							   frm.total_sum.value = sum;
							}

							

							function call() {
							const sell3 = document.getElementById('sell3').value;
							  document.getElementById("result").value = sell3;

						};

						
					function multiSelect(value){
					if(value=="OPEN") {
						Div.style.visibility="visible";
						Div.style.display="inline-block";
					}else  {
						Div.style.visibility="hidden";
						Div.style.display="none";
						$('#txt_getChkList').attr('style', "display:inline-block; width: 490px; height:90px; outline:none; border: 0; background: #fff; font-size: 20px; line-height:50px; padding:30px 30px ; text-rendering: none; appearance:none; resize: none; font-weight:bold; color: #555; font-family: 'ChosunSg'; overflow:hidden;");
				
						}
					};


					


				var peopleArr = new Array();	// 체크된 항목을 담기 위한 배열 선언
				$(document).ready(function() {

					$("input[name=chkbox]").change(function() {
						// 체크박스 갯수와  체크된 체크박스 갯수 비교 후 불일치시 헤더 체크박스 해제 
						if($(this).length != $("input[name=chkbox]:checked").length) $("#chkAll").prop("checked", false); 
						putCheckList();
					});

					$("#btn_showChkList").click(function() {
			//			if(peopleArr.length == 0) {
			//				$("#txt_getChkList").val("");
			//				alert("체크된 항목이 없습니다.");
			//				return;
			//			}

						var str = "";
						for (var i = 0; i < peopleArr.length; i++) {
							str +=  peopleArr[i].name + peopleArr[i].age + "\n";
						}

						$("#txt_getChkList").val(str);

					}); 
				});


				function putCheckList() {
				peopleArr = new Array();
				var idxArr = new Array();

				$("input[name=chkbox]:checked").each(function() {
					idxArr.push($("input[name=chkbox]").index(this));
				});

				for (var i = 0; i < idxArr.length; i++) {
					var obj = new Object();
					obj.name = $("#tbl_peopleList tbody").children().eq(idxArr[i]).children().eq(1).text();
					obj.age = $("#tbl_peopleList tbody").children().eq(idxArr[i]).children().eq(2).text();
					peopleArr.push(obj);
				}

			}

			</script>






                <div class="btn-box">
				<%

//					String jsql4 = "select * from soption where prdNo = ?";   
	//			PreparedStatement pstmt4 = con.prepareStatement(jsql4);
	//			pstmt4.setString(1, pno);
//
	//			ResultSet rs4 = pstmt4.executeQuery();
	//			rs4.next();
				
	//			String opNo = rs4.getString("opNo");

					%>
						<!-- <input name="chkbox3" type="checkbox"  id="chk3" value="" style="display: none; position: hidden;"> -->
					<%


				String jsql3 = "select * from cart where ctNo =? and prdNo = ?";

						PreparedStatement pstmt3 = con.prepareStatement(jsql3);
						pstmt3.setString(1, ctNo);
						pstmt3.setString(2, pno);
	//					pstmt3.setString(3, opNo);

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
				
				<%

					
			}
					%>

            </div>

        </div>
    </div>





    <div class="sub_con_box1">
        <div class="sub_con1">

            <p> WHAT IS IT?</p>
            <h1>사각턱보톡스란 ?</h1>
            <p class="memo" style="line-height: 30px;">
                클로스트리디움 보튤리늄 톡신이 주성분으로, 부피가 큰 근육의 사이즈를 감소시켜 슬림한 라인을 만들어주는 시술입니다.
            </p>


            <div class="con_wrap1 flex flex-jc-sb">

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/time.png" alt="">
                    </div>
                    <h2>시술시간</h2>
                    <p>5 - 10분 이내</p>
                </div>

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/injection.png" alt="">
                    </div>
                    <h2>마취여부</h2>
                    <p>스프레이마취</p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/effect.png" alt="">
                    </div>
                    <h2>회복기간</h2>
                    <p>즉시생활가능</p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/downtime.png" alt="">
                    </div>
                    <h2>유지기간</h2>
                    <p>6 - 8개월</p>
                </div>

            </div>



				<div class="detail8">
				
					<div class="sub2 flex">

						<div class="sub_con1">
								<img src="img/sub_img07.jpg">
							<div class="text-box">
								<h2>메디톡신 보톡스</h2>
								<p>안전성이 검증된 국내 NO.1 보톡스</p>
								<div>
									메디톡신은 국내 KFDA와 미국 FDA의 승인을 
									획득하여 의약품으로의 안정성과 유효성을 검증받았으며,
									간단한 시술로 종아리, 사각턱, 얼굴 리프팅에
									효과적이면서 합리적인 가격으로 큰 효과를 얻을 수 있습니다.
								</div>
							</div>
						</div>

						<div class="sub_con2">
								<img src="img/sub_img08.jpg">
							<div class="text-box">
								<h2>엘러간 보톡스</h2>
								<p>미국 FDA에서 승인받은 최초의 보톡스</p>
								<div>
									미국 FDA에서 미용목적 치료제로 최초 승인을 받은 제품으로
									지속력 및 안전성이 널리 알려진 보톡스입니다.
									점유율이나 인지도가 가장 높고 안전성이 우수하며
									사각턱 시술에 가장 좋은 효과를 보입니다.
								</div>
							</div>
						</div>

						<div class="sub_con3">
								<img src="img/sub_img09.jpg">
							<div class="text-box">
								<h2>제오민 보톡스</h2>
								<p>내성을 최소화한 보톡스</p>
								<div>
									제오민이란 독일 멀츠사의 프리미엄 보톡스로,
									새로운 정제기술들이 구조면에서 불필요하게
									포함하고 있던 복합 단백질을 없앤 순수 보툴리늄 톡신입니다.
									내성을 최소화했기 때문에 재시술 시에도 효과가 저하되는 것을 방지할 수 있습니다.
								</div>
							</div>
						</div>
					
					</div>
					
				</div> <!-- 디테일8 닫기 -->

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
							<p>스프레이마취</p>
							</div>
							<div class="line-box">
									<div class="line1"></div>
									<div class="line2"></div>
								<div class="line3"></div>
								<div class="line4"></div>
						</div>
				<div class="box">
						<div>STEP 4</div>
					<p>보톡스 주입</p>
					</div>
						<div class="line-box">
							<div class="line1"></div>
							<div class="line2"></div>
							<div class="line3"></div>
							<div class="line4"></div>
						</div>
					<div class="box">
						<div>STEP 5</div>
					<p>마무리</p>
					</div>
							<div class="line1"></div>
							<div class="line2"></div>
							<div class="line3"></div>
							<div class="line4"></div>
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
                    <p>사각턱으로 얼굴이 크고 각져보이는 분</p>
                </div>
                <div class="con_box2">
                    <h6>POINT 2</h6>
                    <hr>
                    <p>작고 부드러운 얼굴선을 원하는 분</p>
                </div>
                <div class="con_box2">
                    <h6>POINT 3</h6>
                    <hr>
                    <p>일상생활에 지장없이 간편하게 V라인을 갖고 싶은 분</p>
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
                <img src="img/sub_effect08.gif" alt="">
            </div>

            <ul class="flex flex-jc-c">
                <li class="flex">
                    <span>1</span>
                    <p style="margin:35px 0; line-height:25px;">
                       시술 2주 후부터 서서히 줄어들기 시작하며 6~8주 내 최대 효과를 확인할 수 있습니다.
                    </p>
                </li>

                <li class="flex">
                    <span>2</span>
                    <p style="margin:35px 0; line-height:25px;">
                       6~8개월에 걸쳐 서서히 원래 사이즈로 되돌아오게 되므로 지속적인 효과를 원한다면 4~5개월 주기로 재시술을 권장드립니다.
                    </p>
                </li>

                
            </ul>


        </div>
    </div>


	    <div class="sub_con_box5">
        <div class="sub_con5">

			<p>PROCEDURE QUESTIONS</p>
            <h1>시술 Q&A</h1>

            <div class="qna_list">
				<div class="qna_item">
					<div class="ques">
						Q. 홈케어랑 어떤 부분이 차이가 있나요?
					</div>

					<div class="answer">
						더케어에서는 청결하게 소독된 관리 기구와 피부관리 전문 인력이 고객님의 피부 상태를 꼼꼼하게 체크하여 2차 염증이 발생하지 않도록 압출 및 재생 관리를 해주고 있습니다. 아직 압출 준비가 되어있지 않은 여드름을 억지로 짜게 되면 오히려 덧나고 색소침착이 생길 수 있기 때문에 내 피부 상태가 어떠한지 스스로 판단하기 어렵다면 가급적 내원하셔서 관리 받는 것을 권장합니다.
					</div>
				</div>
			</div>


			<div class="qna_list">
				<div class="qna_item">
					<div class="ques">
						Q. 좁쌀 여드름과 화농성 여드름은 어떻게 구분하나요?
					</div>

					<div class="answer">
						좁쌀 여드름은 가장 초기의 여드름으로 하얗고 오돌토돌하게 올라온 여드름입니다. 모공 속에 피지가 쌓여 있기 때문에 잘 없어지지 않으며, 그대로 방치하게 된다면 모공 안에 염증이 생겨 화농성 여드름으로 변하게 됩니다. 화농성 여드름은 쉽게 말해 모공에 막힌 피지 때문에 좁쌀 여드름이 곪아서 생기는 여드름입니다. 때문에 내 피부에 정확한 진단을 통해 이에 맞는 관리 받는 것을 권장합니다.
					</div>
				</div>
			</div>

			






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

    </div>

	<%
    } 
catch(Exception e) {
		out.println(e);
}
%>







    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo.png" width="150" alt="" style="margin-bottom: 20px;">
            <p class="text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
            </p>
            <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 대표자 : 봉조율
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 전화번호 : 02-517-0912
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


		function inCart1()              //  "장바구니담기" 버튼을 클릭시 호출
		{
			var frm1 = document.form;
			frm1.action = "incart.jsp";
			frm1.submit();

		}


		function cart1()
		{
			alert('장바구니에 해당 시술이 있습니다.');
		}






    </script>



</body>

</html>