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
                </form>
            </div>






        </div>
        <div class="line"></div>


         <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>�� �ɾ�</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">�ɾ� ������</a></li>
                            <li><a href="about_3.jsp">���ô±�</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>�� �ñ���</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">�� üũ</a></li>
							<li><a href="themore.jsp">�� ���</a></li>
                        </ul>
                    </div>
                </li>
               <!--  <li class="menu">
                    <a>������</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">�ȳ�/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li> -->
                <li class="menu">
                    <a>�ɾ����</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">�ȳ�/���</a></li>
                            <li><a href="change.jsp">����Ȯ��/����/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>�������</a>
                    <div>
                        <ul>
                            <li><a href="note.jsp">�����</a></li>
                            <li><a href="noti.jsp">��������</a></li>
                            <li><a href="event.jsp">�̺�Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>

        <div style="position: fixed; bottom:5%; right:3%;z-index:150;">
            <a alt="�� ����" class="moveTopBtn">
                <div  style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="�ֱ� �� �ü�">
                <div style="border-radius:50%;z-index:150; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">�ֱٺ��ü�</p>
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
                <p>���帧 ������ ���Ե� ��Ų�ɾ�</p>
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

					


					

                    <div class="form1">
                        <table cellpadding="0" cellspacing="0" style="cursor:pointer" onClick="multiSelect('OPEN')">
                          <tr>
                           <td>�ü� �ɼ�
                            <input type="button" value="��" style="background:none; outline:none; border:none; ">
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

				String noArray[] = new String[5];
				int priceArray[] = new int[5];
				int i=0;
				int j=0;
			while(rs1.next()) {	
				
				String opname = rs1.getString("opName");
				String opno = rs1.getString("opNo");
				int opprice = rs1.getInt("opPrice");

				noArray[i] = opno;
				priceArray[i] = opprice;

				

						%>

									
									<table id="tbl_peopleList" class="tab1" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
									<tbody>
											<td><input name="chkbox" type="checkbox" value="<%=opno%>"  id="noArray[i]" onClick="itemSum(this.form);example_1();">
											<input name="chkbox1" type="checkbox" value="<%=opprice%>"  id="priceArray[i]" onClick="itemSum(this.form);" style="display:inline-block; position:relative;"></td>
											<td><%=opname%>      </td>
												<td><%=opprice%></td>
										  </tbody>
									</table>

					
									<%
						   i++;
							j++;
			}

				%>

					<script language="javascript">

			//			getElementById('chk3');
			// 			querySelector('#chk1');
			//			getElementByName('chkbox');
						let example1 = document.getElementById('noArray[i]');
						let example2 = document.getElementById('priceArray[i]');

						function example_1() {
						if(example1.checked == true) {
							example1.checked = true;
							example2.checked = true;
							}
						if(example1.checked == false) {
								example1.checked = false;
							example2.checked = false;
							}
						   
						}


					   </script>
												<td><input name="total_sum" id="sell3" type="hidden" readonly></td>
												<input type=hidden name = prdNo value="<%=no%>">
							</form>
	
                            <div><input type="button" value="Ȯ��" id="btn_showChkList" name="btn_showChkList" onClick="multiSelect('CLOSE'); call();"></div>
                        </div>
						
                       </div>

                </div>


				
									




				<div>
				<!-- <input type="text" id="txt_getChkList" style="width: 500px; height:100px; outline:none; border: 0; background: none; font-size: 20px; padding:20px 30px; "> -->
				<textarea spellcheck = "false" id="txt_getChkList" style="display: none;"></textarea>
				</div>

                <div class="price-wrap">
                    <div class="price-box flex flex-jc-sb">
                        <div>�� �ݾ�</div>
                        <div class="price1">
                            <span><input id='result' type='text' value="0" style="outline: none; border:none; text-align: right;" readonly></span>��
                        </div>
                    </div>
                    <p>�ΰ��� 10% ����</p>
                </div>




				

			<script language="javascript">



							function itemSum(frm)
							{
							   var sum = 0;
							   var count = frm.chkbox1.length;
							   for(var i=0; i < count; i++ ){
								   if( frm.chkbox1[i].checked == true ){
									sum += parseInt(frm.chkbox1[i].value);
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


					


				var peopleArr = new Array();	// üũ�� �׸��� ��� ���� �迭 ����
				$(document).ready(function() {

					$("input[name=chkbox]").change(function() {
						// üũ�ڽ� ������  üũ�� üũ�ڽ� ���� �� �� ����ġ�� ��� üũ�ڽ� ���� 
				//		if($(this).length != $("input[name=chkbox]:checked").length) $("#chkAll").prop("checked", false); 
						putCheckList();
					});

					$("#btn_showChkList").click(function() {
			//			if(peopleArr.length == 0) {
			//				$("#txt_getChkList").val("");
			//				alert("üũ�� �׸��� �����ϴ�.");
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



				String jsql3 = "select * from cart where ctNo =? and prdNo = ?";

						PreparedStatement pstmt3 = con.prepareStatement(jsql3);
						pstmt3.setString(1, ctNo);
						pstmt3.setString(2, pno);

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

				
			<a href="reservation.jsp">�ü� �����ϱ�</a>
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
            <h1>���帧ġ��� ?</h1>
            <p class="memo" style="line-height: 30px;">
                [���帧����] ����+�����ֻ� - ������ - �𵨸��� <br>[�������] ������ - ��������ũ - ������� - �𵨸���
            </p>


            <div class="con_wrap1 flex flex-jc-sb">

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/time.png" alt="">
                    </div>
                    <h2>�ü��ð�</h2>
                    <p>30 - 40��</p>
                </div>

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/injection.png" alt="">
                    </div>
                    <h2>���뿩��</h2>
                    <p>����</p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/effect.png" alt="">
                    </div>
                    <h2>ȸ���Ⱓ</h2>
                    <p>��û�Ȱ����</p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/downtime.png" alt="">
                    </div>
                    <h2>�����Ⱓ</h2>
                    <p>2 - 3��</p>
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
								<h3 style="font-size:25px; margin:20px 0;">KAGS ���� 5�ܰ� �̻��� ���帧</h3>
								<p style="font-size:20px; line-height: 28px; text-align:start;">
								�Ӱ� ū ȭ�� ���帧�� 20�� �̻�,<br>
								�ߵ�� ���༺ ���Ͱ� �ִ� ����
								</p>
							</div>
						</div>
					</li>
					<li style="padding: 10px 50px; margin: 20px 0; border:1px solid #ddd; border-radius: 25px;">
						<div class="text flex">
							<span style="font-size:43px; margin-top: 15px; margin-right: 30px;">02</span>
							<div>
								<h3 style="font-size:25px; margin:20px 0  0 -15px;">���帧 ����� �ŵ�� �Ǻ�</h3>
								<p style="font-size:20px; line-height: 28px; text-align:start;">
								������ �ڱ�, ����ħ��, ���Ͱ� ����<br>
								���� �ö�� ���帧�� ȥ��� ����
								</p>
							</div>
						</div>
					</li>
<li style="padding: 10px 50px; margin: 20px 0; border:1px solid #ddd; border-radius: 25px;">
						<div class="text flex">
							<span style="font-size:43px; margin-top: 15px; margin-right: 30px;">03</span>
							<div>
								<h3 style="font-size:25px; margin:20px 0 0 -30px;">ġ�� ȣ������ �̹��� ���</h3>
								<p style="font-size:20px; line-height: 28px; text-align:start;">
								�ֱ� 3���� �̻��� ġ�ῡ ȿ���� ����<br>
								ġ�� ������ 1���� �ȿ� ����ϴ� ����
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
				<h1>�ü�����</h1>
		<div class="sub_con2-1">
			<div class="con2-1 flex flex-jc-c">
							<div class="box">
							<div>STEP 1</div>
							<p>������</p>
							</div>
								<div class="line-box">
									<div class="line1"></div>
									<div class="line2"></div>
									<div class="line3"></div>
									<div class="line4"></div>
								</div>
							<div class="box">
							<div>STEP 2</div>
							<p>�ڰ�����</p>
							</div>
								<div class="line-box">
									<div class="line1"></div>
									<div class="line2"></div>
									<div class="line3"></div>
									<div class="line4"></div>
								</div>
							<div class="box">
							<div>STEP 3</div>
							<p>����+�����ֻ�</p>
							</div>
							<div class="line-box">
									<div class="line1"></div>
									<div class="line2"></div>
								<div class="line3"></div>
								<div class="line4"></div>
						</div>
				<div class="box">
						<div>STEP 4</div>
					<p>������</p>
					</div>
						<div class="line-box">
							<div class="line1"></div>
							<div class="line2"></div>
							<div class="line3"></div>
							<div class="line4"></div>
						</div>
					<div class="box">
						<div>STEP 5</div>
					<p>�𵨸���</p>
					</div>
					<div class="line-box">
							<div class="line1"></div>
							<div class="line2"></div>
							<div class="line3"></div>
							<div class="line4"></div>
						</div>
					<div class="box">
						<div>STEP 6</div>
					<p>������</p>
					</div>
				</div>
		</div>

	</div>


</div>




    <div class="sub_con_box2">
        <div class="sub_con2">
            
            <p>RECOMMEND TO CUSTOMERS BELOW</p>
            <h1>�̷� �в� ��õ�մϴ�.</h1>

            <div class="con_wrap2">
                <div class="con_box2">
                    <h6>POINT 1</h6>
                    <hr>
                    <p>������ ������ ������ �ʿ��� ��</p>
                </div>
                <div class="con_box2">
                    <h6>POINT 2</h6>
                    <hr>
                    <p>�ܺ�ȯ�� ������ �ڱع��� �Ǻο� ������ ����� �ʿ��� ��</p>
                </div>
                <div class="con_box2">
                    <h6>POINT 3</h6>
                    <hr>
                    <p>������ ������ ������ �ʿ��� ��</p>
                </div>
            </div>
        </div>
    </div>

			

<!-- 	<div class="sub_con_box2_1">
        <div class="sub_con2_1">
            
            <p>RECOMMEND TO CUSTOMERS BELOW</p>
            <h1>�̷� �в� ��õ�մϴ�.</h1>

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
            <h1>ȿ�� �� �����ֱ�</h1>

            <div class="img-box">
                <img src="img/sub_effect01.gif" alt="">
            </div>

            <ul class="flex flex-jc-c">
                <li class="flex">
                    <span>1</span>
                    <p style="margin:20px 0; line-height:25px;">
                        �Ϲ������� 1�� �������� ����Ǹ� ������ �Ǹ��� �����մϴ�
                    </p>
                </li>

                <li class="flex">
                    <span>2</span>
                    <p style="margin:20px 0; line-height:25px;">
                       ������ ���¿� ���� ȿ�� �� ���� �ֱ�� �ٸ� �� �ֽ��ϴ�.
                    </p>
                </li>

                
            </ul>


        </div>
    </div>


	    <div class="sub_con_box5">
        <div class="sub_con5">

			<p>PROCEDURE QUESTIONS</p>
            <h1>�ü� Q&A</h1>

            <div class="qna_list">
				<div class="qna_item">
					<div class="ques">
						Q. Ȩ�ɾ�� � �κ��� ���̰� �ֳ���?
					</div>

					<div class="answer">
						���ɾ���� û���ϰ� �ҵ��� ���� �ⱸ�� �Ǻΰ��� ���� �η��� ������ �Ǻ� ���¸� �Ĳ��ϰ� üũ�Ͽ� 2�� ������ �߻����� �ʵ��� ���� �� ��� ������ ���ְ� �ֽ��ϴ�. ���� ���� �غ� �Ǿ����� ���� ���帧�� ������ ¥�� �Ǹ� ������ ������ ����ħ���� ���� �� �ֱ� ������ �� �Ǻ� ���°� ����� ������ �Ǵ��ϱ� ��ƴٸ� ������ �����ϼż� ���� �޴� ���� �����մϴ�.
					</div>
				</div>
			</div>


			<div class="qna_list">
				<div class="qna_item">
					<div class="ques">
						Q. ���� ���帧�� ȭ�� ���帧�� ��� �����ϳ���?
					</div>

					<div class="answer">
						���� ���帧�� ���� �ʱ��� ���帧���� �Ͼ�� �����䵹�ϰ� �ö�� ���帧�Դϴ�. ��� �ӿ� ������ �׿� �ֱ� ������ �� �������� ������, �״�� ��ġ�ϰ� �ȴٸ� ��� �ȿ� ������ ���� ȭ�� ���帧���� ���ϰ� �˴ϴ�. ȭ�� ���帧�� ���� ���� ����� ���� ���� ������ ���� ���帧�� ��Ƽ� ����� ���帧�Դϴ�. ������ �� �Ǻο� ��Ȯ�� ������ ���� �̿� �´� ���� �޴� ���� �����մϴ�.
					</div>
				</div>
			</div>

			






        </div>

    </div>



    <div class="sub_con_box4">
        <div class="sub_con4">
            
            <div class="con_box1">
                <p>CAUTIONS</p>
				<h1>���ǻ���</h1>
				<div>������ŭ�̳� �����ɾ ȿ���� ū ������ �ݴϴ�. <br>
					���ǻ����� �Ĳ��� ���� ��, �� �����ּ���.
				</div>
            </div>

            <ul class="con_box2">
                <li>
                    �ü� �� ���� �� ȭ���� 2~3�ð� �ں��� �����մϴ�.
                </li>

                <li>
                    �ü� �� 3~7�� ���� ������ ����, ��쳪/������ ����, �������, ���� ��� �����ִ� ���� �����ϴ�.
                </li>

                <li>
                    �ü� ������ ���ϰ� �������ų� �ڱ��� �ִ°� �����ֽô°� �����ϴ�.<br>
                    <span>(���� �������� ����� �� �� ������ �����ּ���)</span>
                </li>

                <li>
                    �ü� �� �ʹ� ����ų� ������ ������ ȿ�� �����Ⱓ�� ª�� �� �� �����Ƿ� ������ �����ִ� ���� �����ϴ�.
                </li>

                <li>
                    �Ǻ� ���¿� ���� �۰� �ױ�� �߻��� �� ������ �̾��� �����̸�, �� ��ȭ�˴ϴ�.
                </li>

                <li>
                    �ü� �� �ش���� �������� ������ �� ������ �Ͻ��� �����̹Ƿ� �������� �����ŵ� �˴ϴ�.
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
            <p class="text1">��ȣ�� : ���ɾ��Ǻΰ� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ּ� : ����Ư���� ���ʱ� ������� 439 ( ��Ƽ���� 4�� )
            </p>
            <p>����ڵ�Ϲ�ȣ : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ǥ�� : ������
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ȭ��ȣ : 02-517-0912
            </p>
            <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
    </div>



    







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
            height: '61px',
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
			var frm1 = document.form;
			frm1.action = "incart1.jsp";
			frm1.submit();

		}


		function cart1()
		{
			alert('��ٱ��Ͽ� �ش� �ü��� �ֽ��ϴ�.');
		}






    </script>



</body>

</html>