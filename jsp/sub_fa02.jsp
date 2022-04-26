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
	<title>��ȭ��</title>
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
                            <li><a href="#" onclick="login();">�� üũ</a></li>
                     <li><a href="themore.jsp">�� ���</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ɾ����</a>
                    <div>
                        <ul>
                     <li><a href="guide.jsp">�ȳ�/����</a></li>
                            <li><a href="#" onclick="login();">����Ȯ��/����/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>�������</a>
                    <div>
                        <ul>
                            <li><a href="#" onclick="login();">�����</a></li>
                            <li><a href="noti.jsp">��������</a></li>
                            <li><a href="event.jsp">�̺�Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>


<!-- ����Ϸ� -->
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
                                <input class="form" name="keyword" type="text" placeholder="�˻�� �Է����ּ���." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="�˻�" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">�� �ɾ��</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">�ɾ� ������</a></li>
                                        <li><a href="about_3.jsp">���ô±�</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�� �ñ���</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">�� üũ</a></li>
                                        <li><a href="themore.jsp">�� ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�ɾ����</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">�ȳ�/����</a></li>
                                        <li><a href="#" onclick="login();">����Ȯ��/����/���</a></li>
                                        <li><a href="review.jsp">���Ļ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�������</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">�����</a></li>
                                        <li><a href="noti.jsp">��������</a></li>
                                        <li><a href="event.jsp">�̺�Ʈ</a></li>
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
                <li class="menu">
                    <a>�ɾ����</a>
                    <div>
                        <ul>
                     <li><a href="guide.jsp">�ȳ�/����</a></li>
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





   
           <!-- ����Ϸ� -->
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
                                <input class="form" name="keyword" type="text" placeholder="�˻�� �Է����ּ���." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="�˻�" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">�� �ɾ��</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">�ɾ� ������</a></li>
                                        <li><a href="about_3.jsp">���ô±�</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�� �ñ���</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="custom.jsp">�� üũ</a></li>
                                        <li><a href="themore.jsp">�� ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�ɾ����</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">�ȳ�/����</a></li>
                                        <li><a href="change.jsp">����Ȯ��/����/���</a></li>
                                        <li><a href="review.jsp">���Ļ���</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">�������</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="note.jsp">�����</a></li>
                                        <li><a href="noti.jsp">��������</a></li>
                                        <li><a href="event.jsp">�̺�Ʈ</a></li>
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
            <a href="" alt="�� ����">
                <div class="moveTopBtn" style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="�ֱ� �� �ü�">
                <div style="border-radius:50%;z-index:2; width:60px;height:60px; text-align: center; ">
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
                <p>������� ��밳�� ������ (HIKO)</p>
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
	
                            <div><input type="button" value="Ȯ��" id="btn_showChkList" name="btn_showChkList" onClick="multiSelect('CLOSE'); call();"></div>
                        </div>
						
                       </form>

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


		


	var peopleArr = new Array();	// üũ�� �׸��� ��� ���� �迭 ����
	$(document).ready(function() {

		$("input[name=chkbox]").change(function() {
			// üũ�ڽ� ������  üũ�� üũ�ڽ� ���� �� �� ����ġ�� ��� üũ�ڽ� ���� 
			if($(this).length != $("input[name=chkbox]:checked").length) $("#chkAll").prop("checked", false); 
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
            <h1>�����ڶ� ?</h1>
            <p class="memo" style="line-height: 30px;">
               �����ڴ� ���˷�л� �ʷ��� ��ü�� ������ ��� ���� �̿��Ͽ� ���� �ڳ��� �����ϴ� �ü��Դϴ�.
            </p>


            <div class="con_wrap1 flex flex-jc-sb">

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/time.png" alt="">
                    </div>
                    <h2>�ü��ð�</h2>
                    <p>1�ð� �̳�</p>
                </div>

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/injection.png" alt="">
                    </div>
                    <h2>���뿩��</h2>
                    <p>������ & ���Ҹ���</p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/effect.png" alt="">
                    </div>
                    <h2>ȸ���Ⱓ</h2>
                    <p>1����</p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/downtime.png" alt="">
                    </div>
                    <h2>�����Ⱓ</h2>
                    <p>6 - 12����</p>
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
								- �ܹ����� ������ ����<br>
								- ��ü�� �ſ� ������ �������� ��<br>
								- <span style="color: red;">���� ���� �� ���</span>�Ͽ� �������� �������� ��ǰ<br>
								- ü���� ��� ���� �ð��� ���� �Ŀ� �����ϰ� ��� �Ҹ�Ǵ� Ư����
<!-- 
								ȸ����V�������� ������ ��½� PDO���� ������ ȿ���� ���ӱⰣ�� ���� �������� ��½�(PDO)�� �̿��� �ü��ν� ������ ���� ���� �þ��� �Ǻθ� �����ϰ� �������Ͽ� V���� �� �Ǻ�ź���� ������Ű�� �ü��Դϴ�. ȸ�������� �ŵ��� ������ ������ �Ͽ� ���Ե� ���� ����ְ� ��ũ��(Screw)�� ������ ���ٰ� ���� ������ �Ͽ� ź�¼��� ���ϰ� ������ ���ϴ� �������� �ڿ������� ����� ������ ȿ���� �� �� �ֽ��ϴ�. -->
								</p>
						</div>
					</li>
					<li>
						<div class="text text1">
						<h2>���˷�л�</h2>
								<p>
								- �Ǻ� �ӿ� �����ϴ� �ٴ���� �ϳ��� �������� �Ǻζ� ģ�� ģ������ ���� ���� �������� ��ü�� ����<br>
								- �ð��� ������ ü������ ����, ����Ǿ� �Ҹ�
								</p>
						</div>
					</li>
				</ul>

				
				<div class="sub2 flex">
					<div>
						<div class="bg">
						</div>
							<img src="img/sub_img04.png">
						<p>�ü� ����</p>
					</div>

					<div>
						<div class="bg">
						</div>
							<img src="img/sub_img05.png">
						<p>�ü� 2�� ��</p>
					</div>

					<div>
						<div class="bg">
						</div>
							<img src="img/sub_img06.png">
						<p>�ü� 6�� ��</p>
					</div>
				
				</div>
				<h2> PDO���� ��ü ��� �Ҹ� ������ �Կ��Դϴ�.</h2>
			</div> <!-- ������6 �ݱ� -->

	
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
							<p>�����ֻ�</p>
							</div>
							<div class="line-box">
									<div class="line1"></div>
									<div class="line2"></div>
								<div class="line3"></div>
								<div class="line4"></div>
						</div>
				<div class="box">
						<div>STEP 4</div>
					<p>PDO�� ����</p>
					</div>
						<div class="line-box">
							<div class="line1"></div>
							<div class="line2"></div>
							<div class="line3"></div>
							<div class="line4"></div>
						</div>
					<div class="box">
						<div>STEP 5</div>
					<p>�ʷ� ����</p>
					</div>
					<div class="line-box">
							<div class="line1"></div>
							<div class="line2"></div>
							<div class="line3"></div>
							<div class="line4"></div>
						</div>
					<div class="box">
						<div>STEP 6</div>
					<p>����</p>
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
                    <p>�ݶ�� �������� �ð��� ���� �Ŀ��� �ڿ������� ���� ������ ���ϴ� ��</p>
                </div>
                <div class="con_box2">
                    <h6>POINT 2</h6>
                    <hr>
                    <p>��밡 �ְų� �źθ� ������� ����� ��</p>
                </div>
                <div class="con_box2">
                    <h6>POINT 3</h6>
                    <hr>
                    <p>�ʷ����� ä������ ���ߴ� �ڳ������� �Ų����� ���� ������ ���ϴ� ��</p>
                </div>
            </div>
        </div>
    </div>

			

    <div class="sub_con_box3">
        <div class="sub_con3">
            
            <p>EFFECTIVENESS AND RECOMMENDED PERIOD</p>
            <h1>ȿ�� �� �����ֱ�</h1>

            <div class="img-box">
                <img src="img/sub_effect06.gif" alt="">
            </div>

            <ul class="flex flex-jc-c">
                <li class="flex">
                    <span>1</span>
                    <p style="margin:35px 0; line-height:25px;">
                        ����ϴ� �ʷ��� ��ǰ�� ���� ���ο� ���� ���� �Ⱓ�� �޶����� �Ǵµ�  <br>
�Ϲ������� 6~12���� ���̷� �����˴ϴ�.
                    </p>
                </li>

                <li class="flex">
                    <span>2</span>
                    <p style="margin:35px 0; line-height:25px;">
                       ���� ��ü��� ��ȹ�ϽŴٸ� �۰� �αⰡ ������� �ĺ��� �����ϸ� <br>
�Ƿ������� ����� ��� �� �����Ͻñ� �ٶ��ϴ�.
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
						Q. ���ʷ��� �������� ���̴�?
					</div>

					<div class="answer">
						�����ڴ� ���˷�л� �ʷ��� ��ü�� ������ ��� ���� �̿��Ͽ� ���� �ڳ��� �����ϴ� �ü��ν� ���� �ʷ��� ����Ͽ� ��� ������ ������ ����ִ� �� �ʷ��� ���̰� �ֽ��ϴ�. �����ڴ� ���� ���� �ڳ����� �Ƿ��ϰ� ������ָ�, ��� ���� �ʷ��� ������ �ֱ� ������ �� ��� ������ Ź���մϴ�. ���� ���� �����鼭 �ݶ���� �����Ͽ� �ʷ��� ����� �Ŀ��� �ڿ������� ������ �������� �����˴ϴ�.
					</div>
				</div>
			</div>


			<div class="qna_list">
				<div class="qna_item">
					<div class="ques">
						Q. �� ������ �߽��ϴ�. �� �ʷ��� ������ �ü� �����Ѱ���?
					</div>

					<div class="answer">
						�� ���� ������ ���� ���� �����ôٸ� �ü��� �����ϱ� ��ƽ��ϴ�. ������ ���� �Ǻ� ������ �̹� ����ȭ ������ �����Ǿ� �־� �ü��� ��ư� �����ջ��� ���� ���赵�� �������� ������ ���� �帮�� ������ <br> ��Ȯ�� �ü� ���� ���δ� �������� �� �Ǻ� �����մϴ�.
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

// ��ư Ŭ�� �� �� ���� �̵�
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
    

			function login()
		{
			alert('�α��� �� �̿� ������ �������Դϴ�.');
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






    </script>



</body>

</html>