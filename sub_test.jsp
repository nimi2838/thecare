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
    <title>��ȭ��</title>
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
                        <input class="form" name="keyword" type="text" placeholder="�˻�� �Է����ּ���." >
                    </td>
                    <td class="schBtn">
                        <input type="image" src="img/Search_thin_icon.png" alt="�˻�" onsubmit="search_form()" style="width: 30px; height: 30px;">
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
                    <a>ȸ��Ұ�</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">���ɾ��?</a>
                            </li>
                            <li><a href="about_2.jsp">���ɾ� �Ƿ���</a></li>
                            <li><a href="about_3.jsp">���ɾ� ���ô±�</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ü��ȳ�</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">�ü��ȳ�</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ü�����</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">�ü�����</a></li>
                            <li><a href="change.jsp">����Ȯ��/����/���</a></li>
                            <li><a href="new_view.jsp">�ֱٺ��ü�</a></li>
                        </ul>
                    </div>
                </li>
                
                <li class="menu">
                    <a href="custom.jsp">����ü�</a>
                </li>
                <li class="menu">
                    <a>Ŀ�´�Ƽ</a>
                    <div>
                        <ul>
                            <li><a href="noti.jsp">��������</a></li>
                            <li><a href="qna.jsp">1:1����</a></li>
                            <li><a href="event.jsp">�̺�Ʈ</a></li>
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
                    <span><%=price%></span>�� ����
                </div>
                <hr>
                <div class="tag">
                    #�ϻ��Ȱ�ٷΰ��� #�������ֻ�ü� <br>
                    #10�г��� #�ٸ��ü������డ��
                </div>
            </div>

            <div class="sub_text2">
                <div class="option flex">
                    <div>�ü�����</div>

					

                    <form name="form1">
					
                        <table cellpadding="0" cellspacing="0" style="cursor:pointer" onClick="multiSelect('OPEN')">
                          <tr>
                           <td>�ü� �ɼ�
                            <input type="button" value="��" style="background:none; outline:none; border:none; ">
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
		       onclick='getCheckboxValue()'/> ��
		
		<input type='checkbox' 
		       name='animal' 
		       value='cat' 
		       onclick='getCheckboxValue()'/> �����
		 -->
								<%
			}

				%>
                            </ul>
                            <div><input type="button" value="Ȯ��" onClick="multiSelect('CLOSE'); getCheckboxValue();"></div>
                        </div>

                       </form>




                </div>

				<div id='result'></div>

                <div class="price-wrap" style="margin-top:300px;">
                    <div class="price-box flex flex-jc-sb">
                        <div>�� �ݾ�</div>
                        <div class="price1">
                            <span><input name='sum' id='sum' type='text' value="<%=prdprice%>" style="outline: none; border:none; text-align: right;" readonly></span>��
                        </div>
                    </div>
                    <p>�ΰ��� 10% ����</p>
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

			<a href="#" onClick=cart1()>��ٱ��� ���</a>


				<%
		}
		else  
		{
			%>

					<a href="#" onClick=inCart1()>��ٱ��� ���</a>

				<%
		} 
				%>

				
 <a href="cart.html">�ü� �����ϱ�</a>
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






    







    <!-- ž�� -->
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

			  alert('�˻�� �Է��ϼ���');

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


		function inCart1()              //  "��ٱ��ϴ��" ��ư�� Ŭ���� ȣ��
		{
			var frm1 = document.product;
			frm1.action = "incart.jsp";
			frm1.submit();
		}


		function cart1()
		{
			alert('��ٱ��Ͽ� �ش� �ü��� �ֽ��ϴ�.');
		}



		
        function multiSelect(value){
        if(value=="OPEN") {
			Div.style.visibility="visible";

        }else  {
			Div.style.visibility="hidden";
//				$('input:checkbox[name=multicheck]:checked').each(function() { // üũ�� üũ�ڽ��� value ���� ������ �´�.
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




					$('#Div ul li input[type=checkbox]').click(function(){ // 1�� �˰��� ����



        var sum = 0; // �հ� �ʱ�ȭ ���� -> �ݺ��� �ۿ��� �������ش�.



        $('input[type=checkbox]').each(function(){ // 2�� �˰��� ����

            if ($(this).is(":checked") == true) 

            {

 // html ���� �������� input type='hidden' �� value���� �����´�.

                var opprice = 

parseInt($(this).parents('li').find('input[name=opprice]').val());

                sum = sum + opprice;

            }

        });

        console.log(sum);

    });




		}


					function getCheckboxValue()  {
					  // ���õ� ��� ��������
					  const query = 'input[name="checkbox"]:checked';
					  const selectedEls = 
						  document.querySelectorAll(query);
					  
					  // ���õ� ��Ͽ��� value ã��
					  let result = '';
					  selectedEls.forEach((el) => {
						result += el.value + ' ';
					  });
					  
					  // ���
					  document.getElementById('result').innerText
						= result;
					}

		


//    function getCheckboxValue()  {
           // ���õ� ��� ��������
 // const query = 'input[name="animal"]:checked';
 /// const selectedEls = 
  //    document.querySelectorAll(query);
  
       // ���õ� ��Ͽ��� value ã��
//  let result = '';
 // selectedEls.forEach((el) => {
//    result += el.value + ' ';
//  });
  
  // ���
//  document.getElementById('result').innerText
//    = result;
// }




    </script>



</body>

</html>