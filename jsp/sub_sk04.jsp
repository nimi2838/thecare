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
	<link rel="stylesheet" href="css/sub_da.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/guide.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
	<title>������ ���彺</title>
	
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
							<li><a href="guide.jsp">�ü��ȳ�/����</a></li>
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
                                        <li><a href="guide.jsp">�ü��ȳ�/����</a></li>
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
							<li><a href="guide.jsp">�ü��ȳ�/����</a></li>
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
                                        <li><a href="guide.jsp">�ü��ȳ�/����</a></li>
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
                <div class="moveTopBtn" style="border-radius:50%;z-index:2; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
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
                <p>��/��/�ܵ���̸� �ǼۻǼ��ϰ�!</p>
                <div class="price">
                    <span><%=price%></span>�� ����
                </div>
                <hr>
                <div class="tag">
                    #�ϻ��Ȱ�ٷΰ��� #�������ֻ�ü� #�ҿ�ð�1�ð�����<br>
					#������ #�ٸ��ü������డ��
                </div>
            </div>

            <div class="sub_text2">
                <div class="option flex">
                    <div>�ü�����</div>

					


					

                    <div class="form1">
                        <table cellpadding="0" cellspacing="0" style="cursor:pointer" onClick="multiSelect('OPEN'); td1();">
                          <tr>
                           <td>�ü� �ɼ�
                            <input type="button" value="��" style="background:none; outline:none; border:none; ">
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

				if(opprice==50000) {

						%>

									<tr>
											<td class="td1">
											<!-- <input name="chkbox" type="checkbox" value="<%=opprice%>" class="opprice" id="noArray[j]"> -->
											<input type="checkbox" name="chk[]" class="chk" id="chk" value="<%=opprice%>" onclick="calc();"/>
											<input type="hidden" name="field_a[]" class="field_a" value="<%=opno%>" />

											</td>
											<td class="td2" style=""><%=opname%>                                              </td>
											<td class="td3" id = "td3"><%=df.format(opprice) %>��</td> 
										  </tr>


					
									<%
				}
									else if(opprice==30000) {
										%>



										<tr>
											<td class="td1">
											<!-- <input name="chkbox" type="checkbox" value="<%=opprice%>" class="opprice" id="noArray[j]"> -->
											<input type="checkbox" name="chk[]" class="chk" id="chk" value="<%=opprice%>" onclick="calc();"/>
											<input type="hidden" name="field_a[]" class="field_a" value="<%=opno%>" />

											</td>
											<td class="td2" style="font-size: 16px;"><%=opname%>                                  </td>
											<td class="td3" id = "td3" style="width: 75px;"><%=df.format(opprice) %>��</td>
										  </tr>


											<%

									} //if-else
									else {

%>

											<tr>
											<td class="td1">
											<!-- <input name="chkbox" type="checkbox" value="<%=opprice%>" class="opprice" id="noArray[j]"> -->
											<input type="checkbox" name="chk[]" class="chk" id="chk" value="<%=opprice%>" onclick="calc();"/>
											<input type="hidden" name="field_a[]" class="field_a" value="<%=opno%>" />

											</td>
											<td class="td2" style="font-size: 16px;"><%=opname%>                                        </td>
											<td class="td3" id = "td3" style="width: 75px;"><%=df.format(opprice) %>��</td>
										  </tr>

<%
									}


			}

				%>
					</tbody>
									</table>

					
												<td><input type=hidden name="total_sum" id="sell3" type="text" readonly></td>
												<input type=hidden name = prdNo value="<%=no%>">
												<input type="submit" name="Submit" id="button" value="Submit" style="display: none; " />
							</form>
	
                            <div><input type="button" value="Ȯ��" id="btn_showChkList" name="btn_showChkList" onClick="multiSelect('CLOSE'); call();">
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
                        <div>�� �ݾ�</div>
                        <div class="price1">
                            <span><input id='result' type='text' value="0" style="outline: none; border:none; text-align: right;" readonly></span>��
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
					//���� ���� �� ����
					if (typeof(f.elements['chk[]'].length) == 'undefined') //����
					{
						if (f.elements['chk[]'].checked==false)
						{
							f.elements['field_a[]'].disabled=true;
							f.elements['field_b'].disabled=true;
						}
					} else { //����
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
						$('#txt_getChkList').attr('style', "display:inline-block; height: 150px;");
					}else  {
						Div.style.visibility="hidden";
						Div.style.display="none";
						$('#txt_getChkList').attr('style', "display:inline-block; height: 150px;");
							    

				
						}
					};


					


				var peopleArr = new Array();	// üũ�� �׸��� ��� ���� �迭 ����
				$(document).ready(function() {

					$("input[class=chk]").change(function() {
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


					<a href="#" id="cart_btn" onClick=inCart1()>��ٱ��� ���</a>
			

				<a href="#" onClick=rez()>�ü� �����ϱ�</a>
                </div>
				
				<%
					} else {
				%>

					 <div class="btn-box">


					<a href="#" onClick=login()>��ٱ��� ���</a>
			

				<a href="#" onClick=login()>�ü� �����ϱ�</a>
                </div>

					<%
				} //if-else ���̵� ����

					
			}
					%>

            </div>

        </div>
    </div>









    <div class="sub_con_box1">
        <div class="sub_con1">

            <p> WHAT IS IT?</p>
            <h1>������ ���彺�� ?</h1>
            <p class="memo" style="line-height: 30px;">
                ���� ���ϰ� �к�Ǵ� ������ �Ű����޹����� �Ƽ�ƿ�ݸ��� �к� �����Ͽ� ������ ����� �Ͻ������� ��ȭ��ŵ�ϴ�.<br>
                �̷� ���� �к� �پ��� ��/��/�ܵ���̿� ���� ������ ���彺�� �����Ͽ� ���� �к��� ���̰� �������� �����ִ� �ü��Դϴ�.
            </p>


            <div class="con_wrap1 flex flex-jc-sb">

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/time-b.png" alt="">
                    </div>
                    <h2>�ü��ð�</h2>
                    <p>15 - 20�� �̳�</p>
                </div>

                <div class="con_box1">
                    <div class="img-box">
                        <img src="img/injection-b.png" alt="">
                    </div>
                    <h2>���뿩��</h2>
                    <p>���� ����<br>
                        (20 - 30�� �ҿ�)
                    </p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/effect-b.png" alt="">
                    </div>
                    <h2>ȸ���Ⱓ</h2>
                    <p>��û�Ȱ����</p>
                </div>

                <div class="con_box1 con_box_11">
                    <div class="img-box">
                        <img src="img/downtime-b.png" alt="">
                    </div>
                    <h2>�����Ⱓ</h2>
                    <p>3����</p>
                </div>

            </div>
        </div>
    </div>


    <section id="point" class="content">
        <div class="inner">
            <div class="title">
                <p>��ü�� �� ���� ��, ����ذ�!</p>
                <h1>������ ���彺 ����Ʈ</h1>
            </div>
            <div class="wrap">
                <div class="con">
                    <p>�������� ������ �پ��� ������ ��ǰ���彺�� ���!</p>
                </div>

                <div class="con">
                    <p>���ɾ���� ��ǰ, ���� ��Ģ�� �ؼ��մϴ�.</p>
                </div>

                <div class="con">
                    <p>�ü� ������ ���� ���� �˸°� �ü��մϴ�.</p>
                </div>

                <div class="con">
                    <p>6~9������ �������� �ݺ� �ü��ϴ� ���� �����ϴ�.</p>
                </div>
                
                <div class="con con1">
                    <p>�ü��ð��� ª���� �ϻ��Ȱ���� ���͵� ���� ���Դϴ�.</p>
                </div>
            </div>
        </div>
    </section>

    <section id="bangbup" class="content">
        <div class="inner">
            <div class="title">
                <h1>�ֿ� �ü����� �� ġ����</h1>
            </div>
            <div class="wrap">

                <div class="cont">
                    <div class="pic" data-aos="fade-down">
                        <img src="img/gyeo.PNG" alt="">
                    </div>
                    <div class="txt">
                        <p>
                            �ܵ���̿� ���� ���� ���� ��� ���� ������<br>
                            ���븦 ������ �� �ֽ��ϴ�.<br>
                            ������ ���� 10~15����Ʈ�� ������ <br>
                            ������ �������� ����� ��� �ֻ������ν� ġ���մϴ�.
                        </p>
                    </div>
                </div>

                <div class="cont">
                    <div class="pic" style="margin-left: 20px;" data-aos="fade-down">
                        <img src="img/hand.PNG" alt="" width="350px" height="250px">
                    </div>
                    <div class="txt">
                        <p>
                            �����ϰų� ������ ���� �տ� ���� ���� ���� ��� <br>
                            �Ǻο� ���� �� �Ǽ� �� ���ΰ��迡 ������ �� �� �ֽ��ϴ�.<br>
                            ������ ���� 10~30����Ʈ�� ������ <br>
                            ������ �������� ����� ��� �ֻ������ν� ġ���մϴ�.
                        </p>
                    </div>
                </div>


                <div class="cont">
                    <div class="pic" data-aos="fade-down">
                        <img src="img/foot.PNG" alt="" width="350px" height="250px">
                    </div>
                    <div class="txt">
                        <p>
                            �߹ٴڿ� ���� ���� ���� ��� <br>
                            �߳����� ������ ������ �ֽ��ϴ�.<br>
                            ������ ���� 10~15����Ʈ�� ������ <br>
                            ������ �������� ����� ��� �ֻ������ν� ġ���մϴ�.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>




	

<div class="sub_box_wrap2-1">
	<div class="sub_con_box2-1">
				<p>PROCEDURE PROCESS</p>
				<h1>�ü�����</h1>
		<div class="sub_con2-1" data-aos="fade-down">
			<div class="con2-1 flex flex-jc-c">
							<div class="box">
							<div>STEP 1</div>
							<p>
                                ������<br>
                                (�Ƿ��� ��� ����)
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
                                ����<br>
                                (������)
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
							<p>�ü�</p>
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
                <div class="con_box2" data-aos="fade-down">
                    <h6>POINT 1</h6>
                    <hr>
                    <p>������ ������ ������ �ʿ��� ��</p>
                </div>
                <div class="con_box2" data-aos="fade-down">
                    <h6>POINT 2</h6>
                    <hr>
                    <p>�ܺ�ȯ�� ������ �ڱع��� �Ǻο� ������ ����� �ʿ��� ��</p>
                </div>
                <div class="con_box2" data-aos="fade-down">
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
                <img src="img/sub_effect04.gif" alt="">
            </div>

            <ul class="flex flex-jc-c">
                <li class="flex">
                    <span>1</span>
                    <p style="margin:20px 0; line-height:25px;">
                        �ü� 2~3�Ϻ��� ������ ȿ���� ��Ÿ���� 1~2�� �� �ִ� ȿ���� Ȯ���� �� �ֽ��ϴ�.
                    </p>
                </li>

                <li class="flex">
                    <span>2</span>
                    <p style="margin:20px 0; line-height:25px;">
                        ��� 2~3������ �����ǹǷ� �������� ȿ���� ���Ѵٸ� 3���� �̳� ��ü��� ����帳�ϴ�.
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
					<div class="ques" data-aos="fade-right">
						Q. �뷮�� ���� ��� �ǳ���?
					</div>

					<div class="answer" data-aos="fade-left">
						������ ����, ������ �� �к񷮿� ���� ���̰� �ֽ��ϴ�. �׷��� ������ �彺���ʿ����� ������ ������� �ü��� ���Ͻô� ��� �Ƿ��� ����� ���� ��Ȯ�� �뷮 ó������ �ü��� ����˴ϴ�. ��� �ܵ������ ��� 50~100����, �հ� ���� ��� 100~200���� ���̷� �����ϴ� ��찡 �����ϴ�.
					</div>
				</div>
			</div>


			<div class="qna_list">
				<div class="qna_item">
					<div class="ques" data-aos="fade-right">
						Q. �߿��� ������ �յΰ� �ִµ� ���� �ü� ������ �������?
					</div>

					<div class="answer" data-aos="fade-left">
						������ ����� ��� �ü� �� �� 2��°���� ȿ���� ��Ÿ���� �����Ͽ� 1~2�� �ĺ��ʹ� ����� ȿ���� ���� �� �ֱ� ������ �߿��� ������ �յ� 5~7�� �� �����ϼż� �ü� �����ø� ������ ���·� �ڽ� �ְ� ������ ���� �� �ֽ��ϴ�.
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
                    �ش�ü��� �� �к��� �پ��� �ü���, �� �к� �Ϻ��ϰ� �����Ǵ� �ü��� �ƴմϴ�.
                </li>

                <li>
                    �ü� �� 3~7�� ���� ������ ����, ��쳪/������ ����, �������, ���� ��� �����ִ� ���� �����ϴ�.
                </li>

                <li>
                    �Ǻ� ���¿� ���� �۰� �ױ�� �߻��� �� ������ �̾��� �����̸�, �� ��ȭ�˴ϴ�.
                </li>

                <li>
                    �幰�� �� ������ �ü� �� �Ƿ��� �ణ ������ �� ������, �Ͻ��� �����̹Ƿ� �������� �����ŵ� �Ǹ�, 
                    ������ �������� �۾��� �ؾ��ϴ� ��� �� �� ����ٶ��ϴ�.
                </li>

                <li>
                    �ü� ������ ���������� ���ϰų� �����Ⱑ �ʹ� ���� ���ӵǴ� �� ���� ���� �̻������ ������ 
                    �������� ���� ��Ź�帳�ϴ�.
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
            <p class="text1">��ȣ�� : ���ɾ��Ǻΰ� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ּ� : ����Ư���� ���ʱ� ������� 439 ( ��Ƽ���� 4�� )
            </p>
            <p>����ڵ�Ϲ�ȣ : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ǥ�� : ������
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ȭ��ȣ : 02-517-0912
            </p>
            <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
    </div>



    







    <!-- ž�� -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>


    <script>

        AOS.init();

				function _submit(f)
				{
					//���� ���� �� ����
					if (typeof(f.elements['chk[]'].length) == 'undefined') //����
					{
						if (f.elements['chk[]'].checked==false)
						{
							f.elements['field_a[]'].disabled=true;
							f.elements['field_b[]'].disabled=true;
						}
					} else { //����
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




function inCart1()              //  "��ٱ��ϴ��" ��ư�� Ŭ���� ȣ��
		{

		var checked = $('.chk').is(':checked');

		if(checked) {

			var frm1 = document.form;

			frm1.action = "incart1.jsp"
			document.getElementById('button').click();
		} else {
			alert("�ɼ��� �������ּ��� !");
		}
			
		}

		function rez()              //  "��ٱ��ϴ��" ��ư�� Ŭ���� ȣ��
		{

		var checked = $('.chk').is(':checked');

		if(checked) {

			var frm1 = document.form;
			frm1.action = "rezResult.jsp"
			document.getElementById('button').click();

		} else {
			alert("�ɼ��� �������ּ��� !");
		}
			
		}


		function cart1()
		{
			alert('��ٱ��Ͽ� �ش� �ü��� �ֽ��ϴ�.');
		}

		function login()
		{
			alert('�α��� �� �̿� ������ �������Դϴ�.');
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



    </script>


</body>

</html>