<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/note_detail.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <title>기록장 상세</title>
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
							<li><a href="guide.jsp">안내/비용</a></li>
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
                                        <li><a href="guide.jsp">안내/비용</a></li>
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
                                        <li><a href="guide.jsp">안내/비용</a></li>
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

	String idx = request.getParameter("idx");



		String jsql3 = "SELECT * FROM board WHERE idx=?";
		PreparedStatement pstmt3 = con.prepareStatement(jsql3);
		pstmt3.setInt(1, Integer.parseInt(idx));
		
		ResultSet rs3 = pstmt3.executeQuery();

		rs3.next();
		
		String subject1 = rs3.getString("subject");
		String name1 = rs3.getString("name");
		String content1 = rs3.getString("content");

	%>


    <div class="detail_wrap">
        <div class="detail_box">
            <div class="user_box">
        
                <div class="user1 flex">
                    <div class="img-box">
                    </div>
                    <div class="text">
                        <h2><%=name1%></h2>
                        <p>2022-03-30</p>
                    </div>
                </div>
        
                <div class="user2 flex">
                    <div class="item">
                        #코필러
                    </div>
                    <div class="item">
                        #붓기
                    </div>
                    <div class="item">
                        #보톡스
                    </div>
                </div>
        
                <div class="img-wrap flex">
                    <div class="img-box img1">
        						<img src="img/note5.jpg">
                    </div>
                    <div class="img-box">
        						<img src="img/note6.jpg">
                    </div>
                    <div class="img-box last">
        						<img src="img/note7.jpg">
                    </div>
                </div>
            </div>
        
            <div class="note">
                <div class="title">
                    <%=subject1%>
                </div>
                <div class="body">
                    <%=content1%>
                </div>
            </div>
        
            <hr>
        
            <div class="price">
                <h1>시술 비용</h1>
            </div>
        
        			<hr>
        
            <div class="comment">
                <h1>댓글</h1>
        
            <%

			String jsql2 = "SELECT * FROM reboard WHERE idx=?";
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
		pstmt2.setInt(1, Integer.parseInt(idx));
		
		ResultSet rs2 = pstmt2.executeQuery();

		while(rs2.next()) {

			 int ridx = rs2.getInt("ridx");
			 String content = rs2.getString("content");
			 String name = rs2.getString("name");
			
		%>
        				<table class="com_list">
        					<tr bgcolor='ffffff'>
        						<td>
        						<div class="img-box">  </div>
        						</td>
        
        						<td>
        						<div class="com_title"><%=name%></div>
        						<div><%=content%></div>
        						</td>
        									  
        						<td>
        						<div align="end" class="day">2022-03-30</div>
        						</td>
        					</tr>  	
        				</table>

        
        <%
		}
		%>
        
        
        
        
        
        				<hr>




















<%
		String idx1 = request.getParameter("idx");
       
		int pos = 0;
   
       String jsql = "select * from board where idx = ?";
       PreparedStatement pstmt =con.prepareStatement(jsql);
       pstmt.setInt(1, Integer.parseInt(idx1));
       ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
			rs.next();
			//대상글의 답변글임을 나타내기 위해 제목 앞에 [Re] 표시
			String sub =  rs.getString("subject").trim();
            String name = rs.getString("name").trim();
            String email = rs.getString("email").trim();
            String cont = rs.getString("content").trim();		
        	  //답변글의 각 줄 앞에 ">" 추가하여 대상글임을 표시

			//줄바꿈이 있는지 검사하여
			//cont변수에 줄이 바뀔때마다 ">"표시 출력 
			//indexOf(찾을문자열, 시작위치) - 위치값 반환, 			
			//포함되어 있지 않으면 -1 반환
			//인덱스값은 0부터 시작
            while ((pos = cont.indexOf("\n", pos)) != -1) 
			{			
				//substring(시작, 끝) - (끝-1 위치까지)
				String left = cont.substring(0, pos+1);
                String right = cont.substring(pos+1, cont.length());
                cont = left + " " + right;
                pos++;
             }

			String ymd = rs.getString("ymd");
			int readcount = rs.getInt("readcount");
			String pwd = rs.getString("pwd").trim();
			int mid = rs.getInt("masterid");
            int rnum = rs.getInt("replynum");
            int step = rs.getInt("step");
			readcount ++;

			String jsql5 = "select * from user where uId = ?";
       PreparedStatement pstmt5 =con.prepareStatement(jsql5);
       pstmt5.setString(1, myid);
       ResultSet rs5 = pstmt5.executeQuery();

	   rs5.next();

	   String uname = rs5.getString("uName");
   %>    

	 <br><br>
	<center><div style="font-size:25px;margin:10px 0 20px"><%= name %> 님의 글에 답변 달기</div></center>
		  <form method="post" action="note_rwrite_process.jsp" name="input" class="write_com">

        <table border="0" cellspacing="2" cellpadding="3">

		<tr class="user-view">
                                <td class="flex flex-ai-c">
                                <input type="hidden" name="idx" value="<%=idx%>">
        
                                    
									 <input type="text" name="in_name" value="<%=uname%>" style="    border: none;font-size: 20px;"></td>
                            </tr>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                    
                            <tr class="com_wrap">
                                <td class="td1">
                                    <textarea rows="10" cols="190"name="in_content" style="outline: none; padding: 20px 10px;"> 댓글을 입력해주세요.</textarea>
                                </td>
                                <td>
                                    <div class="btn"> 
                                        <input type="button" name="write_submit" value="등   록" OnClick="in_check()" 
                                        class="btn1"
                                        style="background: white; border: 1px solid #1f628e; padding: 113px 15px; font-size: 18px;">
                                    </div>
                                </td>
                            </tr> 	 
							<tr>    
                                    <td colspan="2"> 
                                    
                                    </td>
                                </tr>
                      
                      </table>
                      <input type="hidden" name="step" value="step">
                      <input type="hidden" name="mid" value="mid">
                      <input type="hidden" name="rnum" value="rnum">  
				

        </form>


		 

 
  
   <%
      }
        rs.close();
       con.close();
   %>         


















<!-- 




        
        
                <form method="post" action="board-write-process.jsp" name="input" class="write_com">
             
                     <table border="0" cellspacing="2" cellpadding="3">
                    
                            <tr class="user-view">
                                <td class="flex flex-ai-c">
                                <input type="hidden" name="idx" value="idx">
        
                                    <img src="img/bok.png" alt="">
                                    <input type="hidden" name="in_name">
                                봉조율</td>
                            </tr>
							<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                    
                            <tr class="com_wrap">
                                <td class="td1">
                                    <textarea rows="10" cols="190"name="in_content" style="outline: none; padding: 20px 10px;"> 댓글을 입력해주세요.</textarea>
                                </td>
                                <td>
                                    <div class="btn"> 
                                        <input type="button" name="write_submit" value="등   록" OnClick="in_check()" 
                                        class="btn1"
                                        style="background: white; border: 1px solid #1f628e; padding: 113px 15px; font-size: 18px;">
                                    </div>
                                </td>
                            </tr> 	 
                            <tr>    
                                    <td colspan="2"> 
                                    
                                    </td>
                                </tr>
                      
                      </table>
                      <input type="hidden" name="step" value="step">
                      <input type="hidden" name="mid" value="mid">
                      <input type="hidden" name="rnum" value="rnum">  
             
             
                      
             
                  
                   </form> -->
        
        
        
        
                </div> <!-- comment -->
        
        
        
        </div>
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



    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>



    <script>



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


            function in_check()
            {
                    if (document.input.in_content.value == "") 
                    {
                        alert("댓글을 입력해주세요...");
                        return;
                    }
    
                document.input.submit();
            }


            const $topBtn = document.querySelector(".moveTopBtn");

            // 버튼 클릭 시 맨 위로 이동
            $topBtn.onclick = () => {
                window.scrollTo({
                    top: 0,
                    behavior: "smooth"
                });
            }

        </script>

		


</body>

</html>