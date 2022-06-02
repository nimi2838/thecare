<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
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
                <li class="menu">
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
	
	request.setCharacterEncoding("euc-kr");

	String no = request.getParameter("prdNo");  

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
						<input type="hidden" value="<%=prdprice%>" name='sell1' id='sell1' >
                            <ul>
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
								<input type="checkbox" name="<%=opno%>" id="<%=opno%>" value='<%=opname%>'><%=opname%>
								<input type="hidden" value="<%=opprice%>" name='sell2' id='sell2' >
								</li>

								
<!-- 		<input type='checkbox'  name='animal' 
		       value='dog'
		       onclick='getCheckboxValue()'/> 개
		
		<input type='checkbox' 
		       name='animal' 
		       value='cat' 
		       onclick='getCheckboxValue()'/> 고양이
		 -->
								<%
			}

				%>
                            </ul>
                            <div><input type="button" value="확인" onClick="multiSelect('CLOSE'); getCheckboxValue();"></div>
                        </div>

                       </form>




                </div>

				<div id='result'></div>

                <div class="price-wrap" style="margin-top:300px;">
                    <div class="price-box flex flex-jc-sb">
                        <div>총 금액</div>
                        <div class="price1">
                            <span><input name='sum' id='sum' type='text' value="<%=prdprice%>" style="outline: none; border:none; text-align: right;" readonly></span>원
                        </div>
                    </div>
                    <p>부가세 10% 별도</p>
                </div>

				


				<form name= product method="post">
				<input type=hidden name = prdNo value="<%=no%>">
                <div class="btn-box">

					<%

				String jsql3 = "select * from cart where prdNo = ?";
		PreparedStatement pstmt3 = con.prepareStatement(jsql3);
		pstmt3.setString(1, no);
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

		//			$('input[name="checkbox"]:checked').each(function() {
		//		     alert($(this).val());
		//			 });

    //          var se2=document.getElementById('sell2').value;
           //    var se1=document.getElementById('sell1').value;


		//			document.getElementById('sell4').value =parseInt(document.getElementById('sell1').value) + parseInt(document.getElementById('sell2').value) - parseInt(document.getElementById('sell3').value);





//					if (document.getElementById('sell1').value && document.getElementById('sell2').value){
//						document.getElementById('sell3').value = parseInt(document.getElementById('sell1').value) + parseInt(document.getElementById('sell2').value);
//					}




					$('#Div ul li input[type=checkbox]').click(function(){ // 1번 알고리즘 실행



        var sum = 0; // 합계 초기화 변수 -> 반복문 밖에서 선언해준다.



        $('input[type=checkbox]').each(function(){ // 2번 알고리즘 실행

            if ($(this).is(":checked") == true) 

            {

 // html 에서 선언해준 input type='hidden' 의 value값을 가져온다.

                var opprice = 

parseInt($(this).parents('li').find('input[name=opprice]').val());

                sum = sum + opprice;

            }

        });

        console.log(sum);

    });




		}


					function getCheckboxValue()  {
					  // 선택된 목록 가져오기
					  const query = 'input[name="checkbox"]:checked';
					  const selectedEls = 
						  document.querySelectorAll(query);
					  
					  // 선택된 목록에서 value 찾기
					  let result = '';
					  selectedEls.forEach((el) => {
						result += el.value + ' ';
					  });
					  
					  // 출력
					  document.getElementById('result').innerText
						= result;
					}

		


//    function getCheckboxValue()  {
           // 선택된 목록 가져오기
 // const query = 'input[name="animal"]:checked';
 /// const selectedEls = 
  //    document.querySelectorAll(query);
  
       // 선택된 목록에서 value 찾기
//  let result = '';
 // selectedEls.forEach((el) => {
//    result += el.value + ' ';
//  });
  
  // 출력
//  document.getElementById('result').innerText
//    = result;
// }




    </script>



</body>

</html>