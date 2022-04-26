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
    <link rel="stylesheet" href="css/sub_lip.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/guide.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<title>입꼬리보톡스</title>
    
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
                <p>입꼬리가 올라가도록 모양잡기</p>
                <div class="price">
                    <span><%=price%></span>원 부터
                </div>
                <hr>
                <div class="tag">
                    #입꼬리 #내려간사람<br>
                    #여기로와라
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
            <h1>입꼬리보톡스란 ?</h1>
            <p class="memo" style="line-height: 30px;">
                보톡스를 이용하여 입꼬리를 자연스럽게 올려주어 웃음을 짓지 않아도 입꼬리가 살짝 올라갈 수 있도록 만들어주는 시술입니다.
            </p>


            <!-- <div class="con_wrap1 flex" style="justify-content: space-around;">

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/time-b.png" alt="">
                    </div>
                    <h2>시술시간</h2>
                    <p>5 - 10분 이내</p>
                </div>

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/injection-b.png" alt="">
                    </div>
                    <h2>마취여부</h2>
                    <p>스프레이 마취
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
                    <p>6 - 8개월</p>
                </div>

            </div> -->
        </div>
    </div>





    <section id="line" class="content">
        <div class="inner">
            <div class="title">
                <h1>입술라인 황금비율</h1>
            </div>
            <div class="wrap">

                <h2>입술의 전체적인 웨이브라인을 살리다 !</h2>

                <div class="pic">
                    <img src="img/sub-lip.PNG" alt="" width="550px" height="255px">
                </div>

                <div class="txt">
                    <p>
                        윗입술 40%, 아랫입술 60% 정도의 비율이 선호됩니다.<br>
                        입꼬리보톡스를 통해 원하는 모양으로 입술 라인,<br>
                        전체적인 볼륨감 교정이 가능합니다.
                    </p>
                </div>
                
            </div>
        </div>
    </section>



    <section id="lip" class="content">
        <div class="inner">
            <div class="title">
                <h1>"더케어 입꼬리 보톡스는 1:1 맞춤형 디자인을 진행합니다.<br>
                    시술 직후, 거울을 보면서 변화된 모습을 확인하세요 !"</h1>
            </div>
            <div class="wrap">
                
                <div class="con">
                    <div class="pic">
                        <img data-aos="fade-down" src="img/sub-lip1.PNG" alt="" width="390px" height="280px">
                    </div>
                    <div class="txt">
                        <h2>01. 나에게 맞는 입꼬리 디자인</h2>
                        <p>
                            입술의 비율과 입꼬리 처짐을 고려하여<br>
                            나에게 어울리는 입꼬리를 디자인 합니다.
                        </p>
                    </div>
                </div>
                
                <div class="con">
                    <div class="pic">
                        <img data-aos="fade-down" src="img/sub-lip2.PNG" alt="" width="390px" height="280px">
                    </div>
                    <div class="txt">
                        <h2>02. 필러 주입</h2>
                        <p>
                            필러를 주입하면서 입꼬리<Br>
                            처짐의 저항성을 파악합니다.
                        </p>
                    </div>
                </div>
                
                <div class="con">
                    <div class="pic">
                        <img data-aos="fade-down" src="img/sub-lip3.PNG" alt="" width="390px" height="280px">
                    </div>
                    <div class="txt">
                        <h2>03. 입꼬리 올림</h2>
                        <p>
                            필러 시술 후 입꼬리 올림이 입술의 실질적<Br>
                            조직의 비율과 어울리는지 파악합니다.
                        </p>
                    </div>
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
                                마취
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
							<p>디자인</p>
							</div>
                            <div class="line-box">
                                <div class="line1"></div>
                                <div class="line2"></div>
                                <div class="line3"></div>
                                <div class="line4"></div>
                            </div>
                            <div class="box">
                                <div>STEP 4</div>
                                <p>시술</p>
                            </div>
                            <!-- <div class="line-box">
                                <div class="line1"></div>
                                <div class="line2"></div>
                                <div class="line3"></div>
                                <div class="line4"></div>
                            </div>
                            <div class="box">
                                <div>STEP 5</div>
                                <p>시술</p>
                            </div> -->
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
                    <p>쳐진 입꼬리때문에 웃는 모습을 개선하고 싶으신 분</p>
                </div>
                <div class="con_box2" data-aos="fade-down">
                    <h6>POINT 2</h6>
                    <hr>
                    <p>입꼬리가 늘어져 우울해보이는 인상이 고민이신 분</p>
                </div>
                <div class="con_box2" data-aos="fade-down">
                    <h6>POINT 3</h6>
                    <hr>
                    <p>자연스러운 스마일 라인을 원하시는 분</p>
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
                <img src="img/sub_effect07.gif" alt="">
            </div>

            <ul class="flex flex-jc-c">
                <li class="flex">
                    <span>1</span>
                    <p style="margin:20px 0; line-height:25px;">
                        필러의 경우 제품에 따라, 개인에 따라, 시술 부위에 따라 유지기간이 달라집니다.
                    </p>
                </li>

                <li class="flex">
                    <span>2</span>
                    <p style="margin:20px 0; line-height:25px;">
                        입꼬리보톡스는 보통 1~2내 최대효과가 드러나며, 2~3개월 주기로 재시술을 권장합니다.
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
						Q. 입꼬리필러와 입술필러의 차이는?
					</div>

					<div class="answer" data-aos="fade-left">
						두 시술은 시술목적에 차이가 있습니다. 입꼬리필러는 입꼬리에 필러를 주입해 입꼬리가 올라가도록 모양을 잡는 시술이며, 입술필러는 주로 입술 중앙부에 필러를 주입하여 입술을 토톰하게 만드는 것이 주 목적인 시술입니다.
					</div>
				</div>
			</div>


			<div class="qna_list">
				<div class="qna_item">
					<div class="ques" data-aos="fade-right">
						Q. 웃을 때 입꼬리가 비대칭인데 이 시술로 완벽히 교정가능할까요 ?
					</div>

					<div class="answer" data-aos="fade-left">
						사람의 얼굴은 처음부터 완벽한 대칭은 아니기 때문에 100%교정은 어렵습니다만, 충분한 상담을 통해 고객님께 알맞은 시술 방식을 선택하여 최대한 교정을 도와드리고 있습니다.
					</div>
				</div>
			</div>


			<div class="qna_list">
				<div class="qna_item">
					<div class="ques" data-aos="fade-right">
						Q. 입꼬리필러와 입꼬리보톡스의 차이는?
					</div>

					<div class="answer" data-aos="fade-left">
						꼬리필러는 입술 양 끝에 필러를 주입해 입꼬리가 올라간 듯한 모양을 만드는 시술입니다. 입꼬리보톡스는 입꼬리 내림근을 이완시켜 입꼬리 올림근이 더 잘 움직이도록 하는 효과로, 웃었을 때 자연스럽게 입꼬리가 올라가는 효과를 기대할 수 있습니다.
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
                    시술 후 과음, 사우나/찜질방/수영장 출입, 열탕 목욕, 격한 운동은 피해 주는 것이 좋습니다.
                </li>

                <li>
                    멍이나 붓기, 통증, 이물감이 발생될 수 있으나 대부분 1~2주 이내 완화됩니다.
                </li>

                <li>
                    필러 시술 부위에 압력이 들어가면 모양이 변할 수 있습니다.
                </li>

                <li>
                    해당 시술은 염증 예방 및 처치를 위해 항생제가 처방됩니다.
                </li>

                <li>
                    기타 불편한 사항이 있을 경우 병원으로 연락주시기 바랍니다.
                </li>

                <li>
                    입술/입꼬리의 경우 빨대를 자주 사용하거나 엎드려 자는 등의 행위는 피해주는 것이 좋습니다.
                </li>

                <li>
                    뜨거운 음식이 바로 입술에 닿지 않도록 주의바랍니다.
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