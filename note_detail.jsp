<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <link rel="stylesheet" href="css/note_detail.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <title>����� ��</title>
</head>
<%
   String myid = (String)session.getAttribute("sid");            
      Date nowTime = new Date();
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

	String idx = request.getParameter("idx");



		String jsql3 = "SELECT * FROM board WHERE idx=?";
		PreparedStatement pstmt3 = con.prepareStatement(jsql3);
		pstmt3.setInt(1, Integer.parseInt(idx));
		
		ResultSet rs3 = pstmt3.executeQuery();

		rs3.next();
		
		String subject1 = rs3.getString("subject");
		String name1 = rs3.getString("name");
		String content1 = rs3.getString("content");
		String ymd1 = rs3.getString("ymd");


	%>



    <section id="note" class="content">
        <div class="inner">
            <div class="title">
                <h1>�����</h1>
                <p>�ü� �ı⸦ �����ؿ�</p>
            </div>
			
            <div class="wrap">

                <div class="list">
                    <ul>
                        <li>
                            <div class="tit">
                                <h1><%=name1%></h1>
                                <p style="margin-bottom: 30px;"><%=ymd1%></p>
                            </div>
                        </li>


                        <li>
                            <div class="txt">
                                <h1><%=subject1%></h1>
                                <p><%=content1%></p>
                            </div>
                        </li>

        
        
        
        
                        <li>
                            <div class="comment">
                                <h1>���</h1>

<ul>
								
        
            <%

			String jsql2 = "SELECT * FROM reboard WHERE idx=?";
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
		pstmt2.setInt(1, Integer.parseInt(idx));
		
		ResultSet rs2 = pstmt2.executeQuery();

		while(rs2.next()) {

			 int ridx = rs2.getInt("ridx");
			 String content = rs2.getString("content");
			 String name = rs2.getString("name");
			 String ymd = rs2.getString("ymd");
			
		%>
        				<li style="border: 0;">
                                        <div class="user"><h1><%=name%></h1></div>
                                        <div class="user-txt"><%=content%></div>
                                        <div class="date"><p><%=ymd.substring(0,12)%></p></div>
                                    </li>

        
        <%
		}
		%>
        
        
        
        </ul>
                            </div>



















<%
		String idx1 = request.getParameter("idx");
       
		int pos = 0;
   
       String jsql = "select * from board where idx = ?";
       PreparedStatement pstmt =con.prepareStatement(jsql);
       pstmt.setInt(1, Integer.parseInt(idx1));
       ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
			rs.next();
			//������ �亯������ ��Ÿ���� ���� ���� �տ� [Re] ǥ��
			String sub =  rs.getString("subject").trim();
            String name = rs.getString("name").trim();
            String cont = rs.getString("content").trim();		
        	  //�亯���� �� �� �տ� ">" �߰��Ͽ� �������� ǥ��

			//�ٹٲ��� �ִ��� �˻��Ͽ�
			//cont������ ���� �ٲ𶧸��� ">"ǥ�� ��� 
			//indexOf(ã�����ڿ�, ������ġ) - ��ġ�� ��ȯ, 			
			//���ԵǾ� ���� ������ -1 ��ȯ
			//�ε������� 0���� ����
            while ((pos = cont.indexOf("\n", pos)) != -1) 
			{			
				//substring(����, ��) - (��-1 ��ġ����)
				String left = cont.substring(0, pos+1);
                String right = cont.substring(pos+1, cont.length());
                cont = left + " " + right;
                pos++;
             }

			String ymd = rs.getString("ymd");
			int readcount = rs.getInt("readcount");
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
   
                        <li style="border-bottom: 0;">
                            <form class="comment-write" method="post" action="note_rwrite_process.jsp" name="input" >
                                <h1>����ۼ�</h1>
                                
                                <div class="text">
								<input type="hidden" name="idx" value="<%=idx%>">
								<input type="hidden" name="in_name" value="<%=uname%>">

                                    <textarea name="in_content" rows=5> ����� �Է����ּ���.</textarea>
                                    
                                    <input type="button" name="write_submit" value="��   ��" OnClick="in_check()" 
                                    class="btn">
                                </div>
                                
                                <input type="hidden" name="step" value="<%=step%>">
                                <input type="hidden" name="mid" value="<%=mid%>">
                                <input type="hidden" name="rnum" value="<%=rnum%>"> 
                            </form>
                        </li>
            
                    </ul>
                </div>
                
                <div class="write">
                    <a href="note.jsp"><h1>���</h1></a>
                </div>
                
            </div>
        </div>
    </section>






		 

 
  
   <%
      }
        rs.close();
       con.close();
   %>         



        
        
        
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
            <p class="text1">��ȣ�� : ���ɾ��Ǻΰ� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ּ� : ����Ư���� ���ʱ� ������� 439 ( ��Ƽ���� 4�� )
            </p>
            <p>����ڵ�Ϲ�ȣ : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ǥ�� : ������
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��ȭ��ȣ : 02-517-0912
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


            function in_check()
            {
                    if (document.input.in_content.value == "") 
                    {
                        alert("����� �Է����ּ���...");
                        return;
                    }
    
                document.input.submit();
            }


            const $topBtn = document.querySelector(".moveTopBtn");

            // ��ư Ŭ�� �� �� ���� �̵�
            $topBtn.onclick = () => {
                window.scrollTo({
                    top: 0,
                    behavior: "smooth"
                });
            }

        </script>

		


</body>

</html>