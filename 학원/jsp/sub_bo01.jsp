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
    <link rel="stylesheet" href="css/sub_2.css">
	<link rel="stylesheet" href="css/sub_bo01.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/guide.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
	<title>바디보톡스</title>

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
                <p>슬림한 라인을 원한다</p>
                <div class="price">
                    <span><%=price%></span>원 부터
                </div>
                <hr>
                <div class="tag">
                    #일상생활바로가능 #간편한주사시술 <br>
                    #30분내외 #다른시술과병행가능
                </div>
				<br><br>
				<p>* 의사의 처방이 필요한 시술입니다.</p>
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



						
							<form name="form" method="post" onsubmit="_submit(this); " >

							
									<table id="tbl_peopleList" class="tab1" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px; border-spacing: 0 4px;">
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

				if(opprice==99000) {

						%>

									<tr>
											<td class="td1">
											<!-- <input name="chkbox" type="checkbox" value="<%=opprice%>" class="opprice" id="noArray[j]"> -->
											<input type="checkbox" name="chk[]" class="chk" id="chk" value="<%=opprice%>" onclick="calc();"/>
											<input type="hidden" name="field_a[]" class="field_a" value="<%=opno%>" />

											</td>
											<td class="td2"><%=opname%>                                                      </td>
											<td class="td3" id = "td3" style="width: 75px;"><%=df.format(opprice) %>원</td> 
										  </tr>


					
									<%
				}
									else{
										%>



										<tr>
											<td class="td1">
											<!-- <input name="chkbox" type="checkbox" value="<%=opprice%>" class="opprice" id="noArray[j]"> -->
											<input type="checkbox" name="chk[]" class="chk" id="chk" value="<%=opprice%>" onclick="calc();"/>
											<input type="hidden" name="field_a[]" class="field_a" value="<%=opno%>" />

											</td>
											<td class="td2"  style="font-size: 16px;"><%=opname%>                                   </td>
											<td class="td3" id = "td3" style="width: 75px;"><%=df.format(opprice) %>원</td>
										  </tr>


											<%

									} //if-else

			}

				%>
					</tbody>
									</table>

					
												<td><input type=hidden name="total_sum" id="sell3" type="text" readonly></td>
												<input type=hidden name = prdNo value="<%=no%>">
												<input type="submit" name="Submit" id="button" value="Submit" style="display: none; " />
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
						$('#txt_getChkList').attr('style', "display:inline-block;");
					}else  {
						Div.style.visibility="hidden";
						Div.style.display="none";
						$('#txt_getChkList').attr('style', "display:inline-block; ");
							    

				
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


					<a href="#" id="cart_btn" onClick=inCart1()>장바구니 담기</a>
			

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
            <h1>바디보톡스란?</h1>
            <p class="memo" style="line-height: 30px;">
                근육이 과하게 발달된 부위의 사이즈를 줄여 매끈하고 슬림한 라인을 만들어줍니다.
            </p>


            <div class="con_wrap1 flex" style="justify-content: space-around;">

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/time-p.png" alt="">
                    </div>
                    <h2>시술시간</h2>
                    <p>15 - 20분 이내</p>
                </div>

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/injection-p.png" alt="">
                    </div>
                    <h2>마취여부</h2>
                    <p>스프레이 마취
                    </p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/effect-p.png" alt="">
                    </div>
                    <h2>회복기간</h2>
                    <p>즉시생활가능</p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/downtime-p.png" alt="">
                    </div>
                    <h2>유지기간</h2>
                    <p>6 - 8개월</p>
                </div>

            </div>
        </div>
    </div>





    <section id="line" class="content">
        <div class="inner">

            <div class="title">
                <h2>바디보톡스는 지방층과 근육층에 고루 분포시켜 지방과 근육 사이즈를<br>
                    동시에 줄여주어 라인을 슬림하게 개선해줍니다.
                </h2>
            </div>
 
            <div class="con">
                <div class="pic">
                    <img src="img/sub-ba1.jpg" alt="">
                </div>
                <div class="txt">
                    <p>
                        바디보톡스는 종아리, 팔뚝, 어깨/승모근 라인, 허벅지 등<br>
                        근육과 지방이 함께 있어 바디라인이 두껍고 울퉁불퉁하고<br>
                        탄력 없이 늘어져있는 부위를 매끄럽게 개선해주는데 도움을 줍니다.
                    </p>
                </div>
            </div>

            <div class="wrap">

                <div class="cont">
                    <div class="pic">
                        <img src="img/sub-ba2.jpg" alt="" width="350px" height="420px">
                    </div>
                    
                    <div class="txt">
                        <i class="fa-solid fa-quote-left"></i>
                        <p>
                            바디보톡스로<br>
                            뱃살, 팔뚝살, 허벅지<br>
                            지방을 쏘옥 ~ 빼주고
                        </p>
                        <i class="fa-solid fa-quote-right"></i>
                    </div>
                </div>

                <div class="conts">
                    <div class="txt">
                        <i class="fa-solid fa-quote-left"></i>
                        <p>
                            바디보톡스로<br>
                            근육 + 지방 줄이고 매끈한<br>
                            바디라인으로 개선
                        </p>
                        <i class="fa-solid fa-quote-right"></i>
                    </div>
                    
                    <div class="pic">
                        <img src="img/sub-ba3.jpg" alt="" width="350px" height="420px">
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
                                사진촬영
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
							<p>디자인
                            </p>
							</div>
                            <div class="line-box">
                                <div class="line1"></div>
                                <div class="line2"></div>
                                <div class="line3"></div>
                                <div class="line4"></div>
                            </div>
                            <div class="box">
                                <div>STEP 4</div>
                                <p>마취 스프레이
                                </p>
                            </div>
                            <div class="line-box">
                                <div class="line1"></div>
                                <div class="line2"></div>
                                <div class="line3"></div>
                                <div class="line4"></div>
                            </div>
                            <div class="box">
                                <div>STEP 5</div>
                                <p>시술
                                </p>
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
                    <p>두껍고 굴곡진 종아리를 슬립하게 만들고 싶은 분</p>
                </div>
                <div class="con_box2" data-aos="fade-down">
                    <h6>POINT 2</h6>
                    <hr>
                    <p>솟아있는 승모근을 여성스럽고 부드러운 어깨선으로 만들고 싶은 분</p>
                </div>
                <div class="con_box2" data-aos="fade-down">
                    <h6>POINT 3</h6>
                    <hr>
                    <p>근육이 발달된 팔뚝을 슬림하게 만들고 싶은 분</p>
                </div>
            </div>
        </div>
    </div>

			

    <div class="sub_con_box3">
        <div class="sub_con3">
            
            <p>EFFECTIVENESS AND RECOMMENDED PERIOD</p>
            <h1>효과 및 권장주기</h1>

            <div class="img-box">
                <img src="img/sub_effect11.gif" alt="">
            </div>

            <ul class="flex flex-jc-c">
                <li class="flex">
                    <span>1</span>
                    <p style="margin:20px 0; line-height:25px;">
                        시술 2주 후부터 서서히 줄어들기 시작하며 6~8주 내 최대 효과를 확인할 수 있습니다.
                    </p>
                </li>

                <li class="flex">
                    <span>2</span>
                    <p style="margin:20px 0; line-height:25px;">
                        3~6개월에 걸쳐 서서히 원래 사이즈로 되돌아오게 되므로 지속적인 효과를 원한다면 3~5개월 주기로 재시술을 권장드립니다.
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
						Q. 유닛이란?
					</div>

					<div class="answer" data-aos="fade-left">
						유닛(unit)은 보톡스 용량의 단위입니다. 근육의 크기에 따라 사용되어야 할 유닛의 용량은 달라집니다. 근육이 크다면 큰 용량이, 근육이 작다면 상대적으로 적은 용량이 필요하게 됩니다. 저희 톡스앤필에서는 방문 상담 시 고객님의 근육 사이즈를 체크하여 적절한 용량을 추천해드리고 있습니다.
					</div>
				</div>
			</div>


			<div class="qna_list">
				<div class="qna_item">
					<div class="ques" data-aos="fade-right">
						Q. 임신했는데 몸이 무거워져 다리가 많이 두꺼워졌습니다. 종아리보톡스 시술 받을 수 있나요?
					</div>

					<div class="answer" data-aos="fade-left">
						임신 중에 약물은 태아에게 영향을 끼칠 수 있어서 피해야 합니다. 레이저 시술이 크게 태아에 영향을 끼치는 것은 아닐 수도 있지만, 통증에 대한 스트레스가 태아에게 영향을 끼칠 수도 있다고 하여, 본원에서는 임신 중에는 톡신 및 레이저 시술을 하지 않으며 약물이 주입되는 시술은 모유 수유 때도 하지 않습니다.
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
                    시술 후 3~7일 동안 가급적 과음, 사우나/찜질방 출입, 열탕 목욕은 피해 주는 것이 좋습니다.
                </li>

                <li>
                    시술 후 당기는 느낌, 약간의 통증 및 욱신거림 등의 증상이 있을 수 있으나 3일 이내 완화됩니다.
                </li>

                <li>
                    종아리 시술 후 약 2주 동안 높은 구두를 착용하거나 등산, 계단을 오르내리는 행동은 피해주세요.
                </li>

                <li>
                    승모근, 팔뚝 시술 후 약 2주 동안 무거운 짐을 들거나, 가방을 한쪽으로만 들지 않도록 주의해주세요.
                </li>

                <li>
                    시술 후 활동이 많다면 효과가 미비할 수 있으니 무리한 활동, 격한 운동은 피해주시기 바랍니다.
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>


    <script>

        AOS.init();

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




function inCart1()              //  "장바구니담기" 버튼을 클릭시 호출
		{

		var checked = $('.chk').is(':checked');

		if(checked) {

			var frm1 = document.form;

			frm1.action = "incart1.jsp"
			document.getElementById('button').click();
		} else {
			alert("옵션을 선택해주세요 !");
		}
			
		}

		function rez()              //  "장바구니담기" 버튼을 클릭시 호출
		{

		var checked = $('.chk').is(':checked');

		if(checked) {

			var frm1 = document.form;
			frm1.action = "rezResult.jsp"
			document.getElementById('button').click();

		} else {
			alert("옵션을 선택해주세요 !");
		}
			
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