<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/sub_2.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<title>상세화면</title>
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
                     <li><a href="guide.jsp">안내/예약</a></li>
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
                                        <li><a href="guide.jsp">안내/예약</a></li>
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
                     <li><a href="guide.jsp">안내/예약</a></li>
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
                                        <li><a href="guide.jsp">안내/예약</a></li>
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
                <div class="moveTopBtn" style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
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
                <p>비수술적 콧대개선 하이코 (HIKO)</p>
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
                   
                        <div id="Div" style="padding: 10px 0 0 0;">
						
							<form name="form">
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
											<td><input name="chkbox" type="checkbox" value="<%=opprice%>"  id="<%=opno%>" onClick="itemSum(this.form);"></td>
											<td><%=opname%>      </td>
												<td><%=opprice%></td>
										  </tbody>
									</table>

									<%
			}

				%>
												<td><input name="total_sum" id="sell3" type="hidden" readonly></td>
							</form>
	
                            <div><input type="button" value="확인" id="btn_showChkList" name="btn_showChkList" onClick="multiSelect('CLOSE'); call();"></div>
                        </div>
						
                       </form>

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
        }else  {
			Div.style.visibility="hidden";
			$('#txt_getChkList').attr('style', "display:inline-block;width: 497px; height:90px; outline:none; border: 0; background: #fff; font-size: 20px; line-height:50px; padding:30px 30px ; text-rendering: none; appearance:none; resize: none; font-weight:bold; color: #555; font-family: 'ChosunSg'; overflow:hidden;");
	
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
				rs2.next();
		%>



    <div class="sub_con_box1">
        <div class="sub_con1">

            <p> WHAT IS IT?</p>
            <h1>하이코란 ?</h1>
            <p class="memo" style="line-height: 30px;">
               하이코는 히알루론산 필러와 인체에 무해한 녹는 실을 이용하여 콧대와 코끝을 개선하는 시술입니다.
            </p>


            <div class="con_wrap1 flex flex-jc-sb">

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/time.png" alt="">
                    </div>
                    <h2>시술시간</h2>
                    <p>1시간 이내</p>
                </div>

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/injection.png" alt="">
                    </div>
                    <h2>마취여부</h2>
                    <p>연고마취 & 국소마취</p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/effect.png" alt="">
                    </div>
                    <h2>회복기간</h2>
                    <p>1개월</p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/downtime.png" alt="">
                    </div>
                    <h2>유지기간</h2>
                    <p>6 - 12개월</p>
                </div>

            </div>



			<div class="detail6">
				<div class="flex sub">
					<img class="img1" src ="img/sub_img02-1.png">
					<div class="plus">+</div>
					<img class="img2" src ="img/sub_img03.png">
				</div>
				<ul class="flex">
					<li>
						<div class="text">
						<h2>PDO(polydioxnone)</h2>
								<p>
								- 단백질로 구성된 성분<br>
								- 인체에 매우 안전한 나사모양의 실<br>
								- <span style="color: red;">심장 수술 시 사용</span>하여 안전성을 입증받은 제품<br>
								- 체내에 녹아 일정 시간이 지난 후엔 완전하게 녹아 소면되는 특수실
<!-- 
								회오리V리프팅은 기존의 녹는실 PDO보다 리프팅 효과와 지속기간이 더욱 강력해진 녹는실(PDO)을 이용한 시술로써 절개나 수술 없이 늘어진 피부를 팽팽하게 리프팅하여 V라인 및 피부탄력을 개선시키는 시술입니다. 회오리실의 매듭이 지지대 역할을 하여 삽입된 실을 당겨주고 스크류(Screw)의 꼬임이 고무줄과 같은 역할을 하여 탄력성이 강하고 근육이 원하는 방향으로 자연스럽게 당겨져 강력한 효과를 볼 수 있습니다. -->
								</p>
						</div>
					</li>
					<li>
						<div class="text text1">
						<h2>히알루론산</h2>
								<p>
								- 피부 속에 존재하는 다당류의 하나인 성분으로 피부랑 친한 친수성인 진피 구성 성분으로 인체에 무해<br>
								- 시간이 지나면 체내에서 분해, 흡수되어 소멸
								</p>
						</div>
					</li>
				</ul>

				
				<div class="sub2 flex">
					<div>
						<div class="bg">
						</div>
							<img src="img/sub_img04.png">
						<p>시술 당일</p>
					</div>

					<div>
						<div class="bg">
						</div>
							<img src="img/sub_img05.png">
						<p>시술 2주 후</p>
					</div>

					<div>
						<div class="bg">
						</div>
							<img src="img/sub_img06.png">
						<p>시술 6주 후</p>
					</div>
				
				</div>
				<h2> PDO실의 인체 흡수 소멸 과정의 촬영입니다.</h2>
			</div> <!-- 디테일6 닫기 -->

	
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
							<p>마취주사</p>
							</div>
							<div class="line-box">
									<div class="line1"></div>
									<div class="line2"></div>
								<div class="line3"></div>
								<div class="line4"></div>
						</div>
				<div class="box">
						<div>STEP 4</div>
					<p>PDO실 주입</p>
					</div>
						<div class="line-box">
							<div class="line1"></div>
							<div class="line2"></div>
							<div class="line3"></div>
							<div class="line4"></div>
						</div>
					<div class="box">
						<div>STEP 5</div>
					<p>필러 주입</p>
					</div>
					<div class="line-box">
							<div class="line1"></div>
							<div class="line2"></div>
							<div class="line3"></div>
							<div class="line4"></div>
						</div>
					<div class="box">
						<div>STEP 6</div>
					<p>몰딩</p>
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
                    <p>콜라겐 생성으로 시간이 지난 후에도 자연스러운 볼륨 유지를 원하는 분</p>
                </div>
                <div class="con_box2">
                    <h6>POINT 2</h6>
                    <hr>
                    <p>콧대가 휘거나 매부리 모양으로 고민인 분</p>
                </div>
                <div class="con_box2">
                    <h6>POINT 3</h6>
                    <hr>
                    <p>필러에서 채워지지 못했던 코끝까지의 매끄러운 라인 개선을 원하는 분</p>
                </div>
            </div>
        </div>
    </div>

			

    <div class="sub_con_box3">
        <div class="sub_con3">
            
            <p>EFFECTIVENESS AND RECOMMENDED PERIOD</p>
            <h1>효과 및 권장주기</h1>

            <div class="img-box">
                <img src="img/sub_effect06.gif" alt="">
            </div>

            <ul class="flex flex-jc-c">
                <li class="flex">
                    <span>1</span>
                    <p style="margin:35px 0; line-height:25px;">
                        사용하는 필러의 제품에 따라 개인에 따라 유지 기간이 달라지게 되는데  <br>
일반적으로 6~12개월 사이로 유지됩니다.
                    </p>
                </li>

                <li class="flex">
                    <span>2</span>
                    <p style="margin:35px 0; line-height:25px;">
                       만약 재시술을 계획하신다면 멍과 부기가 가라앉은 후부터 가능하며 <br>
의료진과의 충분한 상담 후 결정하시기 바랍니다.
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
						Q. 코필러와 하이코의 차이는?
					</div>

					<div class="answer">
						하이코는 히알루론산 필러와 인체에 무해한 녹는 실을 이용하여 콧대와 코끝을 개선하는 시술로써 기존 필러만 사용하여 콧대 라인의 볼륨을 살려주는 코 필러와 차이가 있습니다. 하이코는 콧대는 물론 코끝까지 또렷하게 만들어주며, 녹는 실이 필러를 지탱해 주기 때문에 코 모양 개선에 탁월합니다. 또한 실이 녹으면서 콜라겐을 생성하여 필러가 흡수된 후에도 자연스러운 볼륨이 오랫동안 유지됩니다.
					</div>
				</div>
			</div>


			<div class="qna_list">
				<div class="qna_item">
					<div class="ques">
						Q. 코 성형을 했습니다. 코 필러나 하이코 시술 가능한가요?
					</div>

					<div class="answer">
						코 성형 수술을 받은 적이 있으시다면 시술을 진행하기 어렵습니다. 수술로 인해 피부 안쪽은 이미 흉터화 조직이 형성되어 있어 시술이 어렵고 혈관손상을 받을 위험도가 높아지기 때문에 권장 드리지 않으나 <br> 정확한 시술 가능 여부는 내원진료 후 판별 가능합니다.
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
			var frm1 = document.product;
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