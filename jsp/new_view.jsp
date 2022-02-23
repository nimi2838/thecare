<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <link rel="stylesheet" href="css/searchno.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <title>��Ű ���</title>
</head>
<body>
	<!-- 	<%
			String cookie_check = request.getHeader("Cookie");
			if(cookie_check != null) {
					Cookie[] cookies = request.getCookies();
					for(Cookie cookie_prdno : cookies) {
						if(cookie_prdno.getName().equals("prdNo")) {
								%>
												<p> ��ǰ : <%=cookie_prdno.getValue()%> </p>
									<%
							}
					}
			}
			
		%> -->


<%
   String myid = (String)session.getAttribute("sid");    
   

		%>



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
                    <a href="join.jsp">
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



<div class="about-ban1">
        <div class="text-box1">
			<p class="title">�ֱ� �� �ü�</p>
            <hr>
        </div>
    </div>


    <div class="search_wrap1">
	
		<%
		
				Cookie[] cook = request.getCookies();

				if(cook != null) {
					for(int i=0; i<cook.length;i++){
						String name = cook[i].getName();
						if(name.equals("prdNo")){
							String value=cook[i].getValue();
							%>
									
			
        <div class="search_box">
            <div class="search1">
			<a href="sub_1.jsp?prdNo=<%=value%>" class="search_a">
                <h2><%=value%></h2>

                <p>???</p>
				</a>
            </div>
            <div class="search2">
                <div class="price">
                    <span>???</span>�� ����
                </div>
				<a href="deletecart.jsp?prdNo=<%=value%>" class="btn" style="border: none; background:none;">����</a>
            </div>
        </div>

		
								<%
						}
					}
				} else {
					%>
								<p>��ǰ : ����</p>
						<%
				}
		%>

			


		<div class="btn_box1" style="width:max-content; margin: 80px auto; color:#fff; font-size:18px; font-weight: 500;">
			<a href="#" onClick=cart1() style="text-align:center; padding: 20px 55px;
    background: #ffffff;
    border: 1px solid #ffc6c6;
    color: #ff9090;
    border-radius: 5px; margin: 0px 10px;">��ü �ü� ����</a>
			<a href="#" onClick=cart1() style="text-align:center; padding: 20px 55px;
    background: #ffa5a5;
    color: #ffffff;
    border-radius: 5px;  margin: 0px 10px;">���� �ü� ����</a>
		</div>



    </div>



</body>
</html>