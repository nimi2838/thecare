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
	<link rel="stylesheet" href="css/sub-sk02.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/guide.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
	<title>아쿠아필</title>
	
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
        <div class="sub_con">

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
                <p>여드름 압출이 포함된 스킨케어</p>
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


				if(opprice==70000) {

						%>

									<tr>
											<td class="td1">
											<!-- <input name="chkbox" type="checkbox" value="<%=opprice%>" class="opprice" id="noArray[j]"> -->
											<input type="checkbox" name="chk[]" class="chk" id="chk" value="<%=opprice%>" onclick="calc();"/>
											<input type="hidden" name="field_a[]" class="field_a" value="<%=opno%>" />

											</td>
											<td class="td2"><%=opname%>                                                      </td>
											<td class="td3" id = "td3"><%=df.format(opprice) %>원</td> 
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
											<td class="td2"><%=opname%>                                                     </td>
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
						$('#txt_getChkList').attr('style', "display:inline-block; ");
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
            <h1>여드름치료란 ?</h1>
            <p class="memo" style="line-height: 30px;">
                [여드름관리] 압출+염증주사 - 기기관리 - 모델링팩 <br>[재생관리] 기기관리 - 진정마스크 - 재생광선 - 모델링팩
            </p>


            <div class="con_wrap1 flex flex-jc-sb">

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/time-b.png" alt="">
                    </div>
                    <h2>시술시간</h2>
                    <p>30 - 40분</p>
                </div>

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/injection-b.png" alt="">
                    </div>
                    <h2>마취여부</h2>
                    <p>없음</p>
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
                    <p>2 - 3주</p>
                </div>

            </div>



			<div class="detail flex" style="width:70%; margin: 50px auto 0;">
				<div>
				<img src ="img/sub_con1.png" style="width:85%;">
				</div>
				<ul >
					<li>
						<div class="text flex">
							<span>01</span>
							<div>
								<h3>KAGS 기준 5단계 이상의 여드름</h3>
								<p>
								붉고 큰 화농성 여드름이 20개 이상,<br>
								중등도의 진행성 흉터가 있는 상태
								</p>
							</div>
						</div>
					</li>
					<li>
						<div class="text flex">
							<span>02</span>
							<div>
								<h3>여드름 재발이 거듭된 피부</h3>
								<p>
								누적된 자국, 색소침착, 흉터가 많고<br>
								새로 올라온 여드름이 혼재된 상태
								</p>
							</div>
						</div>
					</li>
<li>
						<div class="text flex">
							<span>03</span>
							<div>
								<h3>치료 호전도가 미미한 경우</h3>
								<p>
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
                    <p>피지가 과도해 압출이 필요한 분</p>
                </div>
                <div class="con_box2">
                    <h6>POINT 2</h6>
                    <hr>
                    <p>외부환경 등으로 자극받은 피부에 진정과 재생이 필요한 분</p>
                </div>
                <div class="con_box2">
                    <h6>POINT 3</h6>
                    <hr>
                    <p>피지가 과도해 압출이 필요한 분</p>
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
                    <p>
                        일반적으로 1주 간격으로 진행되며 꾸준한 권리를 권장합니다
                    </p>
                </li>

                <li class="flex" >
                    <span >2</span>
                    <p >
                       개인의 상태에 따라 효과 및 권장 주기는 다를 수 있습니다.
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