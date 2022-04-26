<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/sub_1.css">
    <link rel="stylesheet" href="css/sub_fa01.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/guide.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<title>페이스 필러</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    

    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

</head>
<%
DecimalFormat df = new DecimalFormat("###,###");
%>

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
							<li><a href="themore.jsp">더 모어</a></li>
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
                <p>얼굴의 볼륨과 주름개선이 필요한 부위</p>
                <div class="price">
                    <span><%=price%></span>원 부터
                </div>
                <hr>
                <div class="tag">
                    #콧대또렷 #이마두툼 <br>
                    #밋밋한얼굴들아 #여기야
                </div>
            </div>

            <div class="sub_text2">
                <div class="option flex">
                    <div>시술선택</div>

					


					

                    <div class="form1">
                        <table cellpadding="0" cellspacing="0" style="cursor:pointer" onClick="multiSelect('OPEN'); td1();">
                          <tr>
                           <td>시술 옵션
                            <input type="button" value="Ⅴ" style="background:none; outline:none; border:none; ">
                        </td>
                          </tr>
                        </table>
                   
                        <div id="Div" style="padding: 10px 0 0 0; display: none; ">



						
							<form name="form" method="post" action="rezResult.jsp" onsubmit="_submit(this); " >

							
									<table id="tbl_peopleList" class="tab1" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
									<tbody>

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

									<tr>
											<td class="td1">
											<!-- <input name="chkbox" type="checkbox" value="<%=opprice%>" class="opprice" id="noArray[j]"> -->
											<input type="checkbox" name="chk[]" class="chk" id="chk" value="<%=opprice%>" onclick="calc();"/>
											<input type="hidden" name="field_a[]" class="field_a" value="<%=opno%>" />

											</td>
											<td class="td2" style=""><%=opname%>                                          </td>
											<td class="td3" id = "td3"><%=df.format(opprice) %></td>
										  </tr>


					
									<%

			}

				%>
					</tbody>
									</table>

					
												<td><input type=hidden name="total_sum" id="sell3" type="text" readonly></td>
												<input type=hidden name = prdNo value="<%=no%>">
							</form>
	
                            <div><input type="button" value="확인" id="btn_showChkList" name="btn_showChkList" onClick="multiSelect('CLOSE'); call();">
							</div>
                        </div>
						
                       </div>

                </div>


				
									




				<div>
				<!-- <input type="text" id="txt_getChkList" style="width: 500px; height:100px; outline:none; border: 0; background: none; font-size: 20px; padding:20px 30px; "> -->
				<textarea spellcheck = "false" id="txt_getChkList" style="display: none; text-align: right;"></textarea>
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

				function td1() {
							const td3 = document.getElementByClass('td3').innerText;
							var num = td3;

		//					const cn1 = n1.toString()
		//					  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
//				.toLocaleString('en')
							  document.getElementByClass("td3").innerText = num.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
							
						};


			function _submit(f)
				{
					//같이 보낼 값 정리
					if (typeof(f.elements['chk[]'].length) == 'undefined') //단일
					{
						if (f.elements['chk[]'].checked==false)
						{
							f.elements['field_a[]'].disabled=true;
							f.elements['field_b'].disabled=true;
						}
					} else { //다중
						for (i=0; i<f.elements['chk[]'].length; i++)
						{
							if (f.elements['chk[]'][i].checked==false)
							{
								f.elements['field_a[]'][i].disabled=true;
								f.elements['field_b'][i].disabled=true;
							}
						}
					}
					return true;
				}

var sum = 0;
        function calc(){ 
            a = document.getElementsByClassName("chk");
            for(i = 0; i < a.length; i++){
                if(a[i].checked == true){
                    sum += parseInt(a[i].value);
                }
            }
            document.getElementById("sell3").value = sum;
            sum = 0;
        }




							function call() {
							const sell3 = document.getElementById('sell3').value;
							var num = sell3;

		//					const cn1 = n1.toString()
		//					  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
//				.toLocaleString('en')
							  document.getElementById("result").value = num.replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
							
						};



						
					function multiSelect(value){
					if(value=="OPEN") {
						Div.style.visibility="visible";
						Div.style.display="inline-block";
						$('#txt_getChkList').attr('style', "display:inline-block; width: 500px; height:90px; outline:none; border: 0; background: #f1f7fb; font-size: 20px; line-height:50px; padding:30px 30px ; text-rendering: none; appearance:none; resize: none; font-weight:bold; color: #555; font-family: 'ChosunSg'; overflow:hidden;");
					}else  {
						Div.style.visibility="hidden";
						Div.style.display="none";
						$('#txt_getChkList').attr('style', "display:inline-block; width: 500px; height:90px; outline:none; border: 0; background: #fff; font-size: 20px; line-height:50px; padding:30px 30px ; text-rendering: none; appearance:none; resize: none; font-weight:bold; color: #555; font-family: 'ChosunSg'; overflow:hidden;");
							    

				
						}
					};


					


				var peopleArr = new Array();	// 체크된 항목을 담기 위한 배열 선언
				$(document).ready(function() {

					$("input[class=chk]").change(function() {
						// 체크박스 갯수와  체크된 체크박스 갯수 비교 후 불일치시 헤더 체크박스 해제 
				//		if($(this).length != $("input[name=chkbox]:checked").length) $("#chkAll").prop("checked", false); 
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


				$("input[class=chk]:checked").each(function() {
					idxArr.push($("input[class=chk]").index(this));
				});

				for (var i = 0; i < idxArr.length; i++) {
					var obj = new Object();
					obj.name = $("#tbl_peopleList tbody").children().eq(idxArr[i]).children().eq(1).text();
					obj.age = $("#tbl_peopleList tbody").children().eq(idxArr[i]).children().eq(2).text();
					peopleArr.push(obj);
				}

			}

			
		//					if (document.getElementById("noArray[0]").value= '50000')
		//					{
		//						document.getElementById("noArray[0]").value = "yun1";
		//					} else if (document.getElementById("noArray[1]").value = '110000')
		//					{
		//						document.getElementById("noArray[1]").value = "yun2";
		//					}


			</script>




<%
	String jsql2= "SELECT * FROM user WHERE uId=?";
					PreparedStatement pstmt2 = con.prepareStatement(jsql2);
					pstmt2.setString(1, myid);

					ResultSet rs2 = pstmt2.executeQuery(); 
					
					
					if(rs2.next()) {

	%>

                <div class="btn-box">


					<a href="#" onClick=inCart1()>장바구니 담기</a>
			

				<a href="#" onClick=rez()>시술 예약하기</a>
                </div>
				
				<%
					} else {
				%>

					 <div class="btn-box">


					<a href="#" onClick=login()>장바구니 담기</a>
			

				<a href="#" onClick=login()>시술 예약하기</a>
                </div>

					<%
				} //if-else 아이디 유무

					
			}
					%>

            </div>

        </div>
    </div>





    <div class="sub_con_box1">
        <div class="sub_con1">

            <p> WHAT IS IT?</p>
            <h1>페이스필러란 ?</h1>
            <p class="memo" style="line-height: 30px;">
                얼굴의 볼륨과 주름개선이 필요한 부위에 체내 흡수가 용이한 히알루로산 성분의 필러를<br>
                주입하여 볼륨 형성과 주름을 개선하는 시술입니다. 주로 이마/코/볼/팔자/눈 밑,턱 끝 등에<br>
                시술하여 보다 어려보이는 효과를 기대할 수 있습니다.
            </p>


            <div class="con_wrap1 flex" style="justify-content: space-around;">

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/time-b.png" alt="">
                    </div>
                    <h2>시술시간</h2>
                    <p>부위별<br>
                        10 - 20분 이내</p>
                </div>

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/injection-b.png" alt="">
                    </div>
                    <h2>마취여부</h2>
                    <p>연고 마취<br>
                        (20 - 30분 소요)<br>
                        & 국소마취
                    </p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/effect-b.png" alt="">
                    </div>
                    <h2>회복기간</h2>
                    <p>즉시생활가능</p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/downtime-b.png" alt="">
                    </div>
                    <h2>유지기간</h2>
                    <p>국산 6 - 12개월<br>
                        수입 12 - 18개월</p>
                </div>

            </div>
        </div>
    </div>





    <section id="face" class="content">
        <div class="inner">
            <div class="wrap">
                <div class="pic">
                    <div class="bg">
                        <img src="img/sub-fa-bg.jpg" alt="" width="360px" height="500px">
                    </div>
                    <img src="img/sub-fa.jpg" alt="" width="360px" height="500px">

                </div>
                <div class="txt">
                    <h1>
                        얼굴형은 사람마다 다릅니다.<br>
                        각자 개성을 살리지 않고<br>
                        단순히 얼굴 볼륨만 늘어난다고<br>
                        아름다워지지 않습니다.
                    </h1>
                    <p>
                        아름다움의 절대적인 기준은 없습니다.<br>
                        얼굴형에 맞춰 최소한의 볼륨만으로 얼굴선을 살려드립니다.<br>
                        밸런스를 맞춰 자연스럽게<br>
                        자신의 몰랐던 아름다운 선을 되찾아 드립니다.
                    </p>
                </div>
            </div>
        </div>
    </section>


    <section id="care" class="content">
        <div class="inner">
            <div class="wrap">
                <div class="con">
                    <h1>THE CARE</h1>
                </div>
            </div>
        </div>
    </section>

    <section id="the" class="content">
        <div class="inner">
            <div class="wrap">
                <div class="txt">
                    <h1>
                        페이스필러는 어디를 어느정도 할지<br>
                        얼굴형에 따라 정하는 것이 제일 중요한 일입니다.
                    </h1>
                    <p>
                        어려보이고 젊어보이기 위해서는 특정 부위의 볼륨 회복만으로는 어렵습니다.<br>
                        골고루 조금씩 정말 아무도 모를 정도의 양을 균일하게 시술해야만 어색함 없이 아름다워집니다.
                    </p>
                </div>
            </div>
        </div>
    </section>



    


	

<div class="sub_box_wrap2-1">
	<div class="sub_con_box2-1">
				<p>PROCEDURE PROCESS</p>
				<h1>시술과정</h1>
		<div class="sub_con2-1" data-aos="fade-down">
			<div class="con2-1 flex flex-jc-c">
							<div class="box">
							<div>STEP 1</div>
							<p>
                                맞춤상담
                            </p>
							</div>
								<div class="line-box">
									<div class="line1"></div>
									<div class="line2"></div>
									<div class="line3"></div>
									<div class="line4"></div>
								</div>
							<div class="box">
							<div>STEP 2</div>
							<p>
                                사진촬영<br>
                                (시술 전)
                            </p>
							</div>
								<div class="line-box">
									<div class="line1"></div>
									<div class="line2"></div>
									<div class="line3"></div>
									<div class="line4"></div>
								</div>
							<div class="box">
							<div>STEP 3</div>
							<p>마취<br>
                                (연고마취/국소마취)</p>
							</div>
                            <div class="line-box">
                                <div class="line1"></div>
                                <div class="line2"></div>
                                <div class="line3"></div>
                                <div class="line4"></div>
                            </div>
                            <div class="box">
                                <div>STEP 4</div>
                                <p>디자인</p>
                            </div>
                            <div class="line-box">
                                <div class="line1"></div>
                                <div class="line2"></div>
                                <div class="line3"></div>
                                <div class="line4"></div>
                            </div>
                            <div class="box">
                                <div>STEP 5</div>
                                <p>시술</p>
                            </div>
                            <div class="line-box">
                                <div class="line1"></div>
                                <div class="line2"></div>
                                <div class="line3"></div>
                                <div class="line4"></div>
                            </div>
                            <div class="box">
                                <div>STEP 6</div>
                                <p>사진촬영<br>
                                    (시술 후)</p>
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
                <div class="con_box2" data-aos="fade-down">
                    <h6>POINT 1</h6>
                    <hr>
                    <p>얼굴의 볼륨을 주어 사과같은
                        동안 페이스를 원하는 분</p>
                </div>
                <div class="con_box2" data-aos="fade-down">
                    <h6>POINT 2</h6>
                    <hr>
                    <p>콧대를 또렷하게 이마를
                        도톰하게 만들고 싶은 분</p>
                </div>
                <div class="con_box2" data-aos="fade-down">
                    <h6>POINT 3</h6>
                    <hr>
                    <p>수술이 아닌 간단한 1회 시술로 효과를 보고 싶은 분</p>
                </div>
                <div class="con_box2" data-aos="fade-down">
                    <h6>POINT 4</h6>
                    <hr>
                    <p>밋밋한 얼굴을 간단한 시술로 입체감있게 변화를 원하는 분</p>
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
                <img src="img/sub_effect05.gif" alt="">
            </div>

            <ul class="flex flex-jc-c">
                <li class="flex">
                    <span>1</span>
                    <p style="margin:20px 0; line-height:25px;">
                        필러의 경우 개인, 시술 부위, 제품에 따라 유지 기간이 달라지게 되는데 일반적으로 국산 필러는 6~12개월 이내, 수입 필러는 12~18개월간 유지됩니다.
                </li>

                <li class="flex">
                    <span>2</span>
                    <p style="margin:20px 0; line-height:25px;">
                        만약 재시술을 계획하신다면 멍과 부기가 가라앉은 후부터 가능하며 의료진과의 충분한 상담 후 결정하시기 바랍니다.
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
					<div class="ques" data-aos="fade-right">
						Q. 보톡스와 필러의 차이점이 뭔가요?
					</div>

					<div class="answer" data-aos="fade-left">
						보톡스(톡신) 시술은 발달된 근육을 수축시켜 라인을 매끈하게 하거나 표정주름을 완화하는 효과입니다. 필러(filler)는 단어의 뜻 그대로 채운다는 의미로, 얼굴의 부족한 볼륨을 채워주는 효과 이마/턱 끝/앞광대/볼/팔자/콧대/입술/애교/눈 밑 등 시술이 가능합니다.
					</div>
				</div>
			</div>


			<div class="qna_list">
				<div class="qna_item">
					<div class="ques" data-aos="fade-right">
						Q. 필러와 스컬트라의 차이점이 뭔가요?
					</div>

					<div class="answer" data-aos="fade-left">
						필러 시술은 히알루론산 등 안전한 물질을 겔 형태로 제조한 것으로, 체내에 주입하면 즉시 볼륨을 형성합니다. 스컬트라는 콜라겐 생성 유도물질(PLLA)로 되어있으며 피부에 주입하면 일정 기간 동안 콜라겐생성작용을 거쳐 서서히 볼륨을 생성합니다.
					</div>
				</div>
			</div>


			<div class="qna_list">
				<div class="qna_item">
					<div class="ques" data-aos="fade-right">
						Q. 필러는 국산이 좋아요, 수입이 좋아요? 뭐가 달라요?
					</div>

					<div class="answer" data-aos="fade-left">
						동일한 성분이기는 하나, 전 세계적으로 오랫동안 사용되어 온 수입 필러가 비교적 점탄성이 좋고, 입자에 따른 다양한 종류가 많아 시술 부위에 따라 조금 더 정교한 시술이 가능합니다. 경제적인 측면을 고려하신다면 보급형으로 많이 사용되는 국산 필러 제품을 추천드리고, 비용보다 안전성과 안정성에 조금 더 비중을 두신다면 수입 제품을 추천드립니다.
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
                    염증 예방, 통증 경감을 위해 3일간 처방약을 꾸준히 복용해 주세요. 
                </li>

                <li>
                    시술 후 3~7일 동안 가급적 과음, 사우나/찜질방 출입, 열탕 목욕은 피해 주는 것이 좋습니다.
                </li>

                <li>
                    멍이나 부기, 통증, 이물감이 발생될 수 있으나 대부분 1~2주 이내 완화됩니다. 
                </li>

                <li>
                    외부 압력으로 인한 모양의 변화가 있을 수 있으므로 2~3주간 시술 부위가 압박되지 않도록 주의해 주세요.
                </li>

                <li>
                    기타 불편한 사항이 있을 경우 병원으로 연락 주시기 바랍니다.
                </li>

                <li>
                    시술 부위 부착된 듀오덤은 24시간 뒤에 제거해 주시기 바랍니다.
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
            <img src="./img/logo-ft.png" width="150" alt="" style="margin-bottom: 20px;">
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

    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <script>

        AOS.init();



        const $topBtn = document.querySelector(".moveTopBtn");

// 버튼 클릭 시 맨 위로 이동
$topBtn.onclick = () => {
  window.scrollTo({ top: 0, behavior: "smooth" });
}



				function _submit(f)
				{
					//같이 보낼 값 정리
					if (typeof(f.elements['chk[]'].length) == 'undefined') //단일
					{
						if (f.elements['chk[]'].checked==false)
						{
							f.elements['field_a[]'].disabled=true;
							f.elements['field_b[]'].disabled=true;
						}
					} else { //다중
						for (i=0; i<f.elements['chk[]'].length; i++)
						{
							if (f.elements['chk[]'][i].checked==false)
							{
								f.elements['field_a[]'][i].disabled=true;
								f.elements['field_b[]'][i].disabled=true;
							}
						}
					}
					return true;
				}

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
		 const checkbox = document.getElementById('chk');

			 if (checkbox.checked ==('false')) {
				alert("옵션을 선택해 주세요!");
			} else{
			var frm1 = document.form;
			frm1.submit();
			}
		}

		function rez()              //  "장바구니담기" 버튼을 클릭시 호출
		{
			var frm1 = document.form;
			frm1.action = "rezResult.jsp"
			frm1.submit();

		}


		function cart1()
		{
			alert('장바구니에 해당 시술이 있습니다.');
		}

		function login()
		{
			alert('로그인 후 이용 가능한 페이지입니다.');
			document.location.href="login.jsp";
		}






    </script>



</body>

</html>