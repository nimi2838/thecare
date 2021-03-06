<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <link rel="stylesheet" href="css/searchno.css">
  <title>???ٱ???</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

</head>

<%
DecimalFormat df = new DecimalFormat("###,###");
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
                            <input class="form" name="keyword" type="text" placeholder="?˻?? ?Է????ּ???." >
                        </td>
                        <td class="schBtn">
                            <input type="image" src="img/Search_thin_icon.png" alt="?˻?" onsubmit="search_form()" style="width: 30px; height: 30px;">
                        </td>
                    </form>
                </div>






        </div>
        <div class="line"></div>


	  <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>?? ?ɾ?</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">?ɾ? ??????</a></li>
                            <li><a href="about_3.jsp">???ô±?</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>?? ?ñ???</a>
					<div>
                        <ul>
                            <li><a href="#" onclick="login();">?? üũ</a></li>
							<li><a href="themore.jsp">?? ????</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>?ɾ?????</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">?ü??ȳ?/????</a></li>
                            <li><a href="#" onclick="login();">????Ȯ??/????/????</a></li>
                            <li><a href="review.jsp">???Ļ???</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>????????</a>
                    <div>
                        <ul>
                            <li><a href="#" onclick="login();">??????</a></li>
                            <li><a href="noti.jsp">????????</a></li>
                            <li><a href="event.jsp">?̺?Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>


<!-- ?????Ϸ? -->
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
                                <input class="form" name="keyword" type="text" placeholder="?˻?? ?Է????ּ???." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="?˻?" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">?? ?ɾ???</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">?ɾ? ??????</a></li>
                                        <li><a href="about_3.jsp">???ô±?</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">?? ?ñ???</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">?? üũ</a></li>
                                        <li><a href="themore.jsp">?? ????</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">?ɾ?????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">?ü??ȳ?/????</a></li>
                                        <li><a href="#" onclick="login();">????Ȯ??/????/????</a></li>
                                        <li><a href="review.jsp">???Ļ???</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">????????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="#" onclick="login();">??????</a></li>
                                        <li><a href="noti.jsp">????????</a></li>
                                        <li><a href="event.jsp">?̺?Ʈ</a></li>
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
                            <input class="form" name="keyword" type="text" placeholder="?˻?? ?Է????ּ???." >
                        </td>
                        <td class="schBtn">
                            <input type="image" src="img/Search_thin_icon.png" alt="?˻?" onsubmit="search_form()" style="width: 30px; height: 30px;">
                        </td>
                    </form>
                </div>






        </div>
        <div class="line"></div>




	
        <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>?? ?ɾ?</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">?ɾ? ??????</a></li>
                            <li><a href="about_3.jsp">???ô±?</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>?? ?ñ???</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">?? üũ</a></li>
							<li><a href="themore.jsp">?? ????</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>?ɾ?????</a>
                    <div>
                        <ul>
							<li><a href="guide.jsp">?ü??ȳ?/????</a></li>
                            <li><a href="change.jsp">????Ȯ??/????/????</a></li>
                            <li><a href="review.jsp">???Ļ???</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>????????</a>
                    <div>
                        <ul>
                            <li><a href="note.jsp">??????</a></li>
                            <li><a href="noti.jsp">????????</a></li>
                            <li><a href="event.jsp">?̺?Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>





	
           <!-- ?????Ϸ? -->
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
                                <input class="form" name="keyword" type="text" placeholder="?˻?? ?Է????ּ???." >
                            </td>
                            <td class="schBtn">
                                <input type="image" src="img/Search_thin_icon.png" alt="?˻?" onsubmit="search_form()" style="width: 35px; height: 35px;">
                            </td>
                        </form>
                    </div>
                    <ul id="gnb">
                        <li>
                            <a href="#">?? ?ɾ???</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="about_1.jsp">?ɾ? ??????</a></li>
                                        <li><a href="about_3.jsp">???ô±?</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">?? ?ñ???</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="custom.jsp">?? üũ</a></li>
                                        <li><a href="themore.jsp">?? ????</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">?ɾ?????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="guide.jsp">?ü??ȳ?/????</a></li>
                                        <li><a href="change.jsp">????Ȯ??/????/????</a></li>
                                        <li><a href="review.jsp">???Ļ???</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">????????</a>
                            <div class="subwrap">
                                <div class="inner">
                                    <ul class="depth_1">
                                        <li><a href="note.jsp">??????</a></li>
                                        <li><a href="noti.jsp">????????</a></li>
                                        <li><a href="event.jsp">?̺?Ʈ</a></li>
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
            <a alt="?? ????" class="moveTopBtn">
                <div  style="border-radius:50%;z-index:150; width:60px;height:55px; margin-bottom: 5px; text-align: center;">
                    <img src="img/up.png" width="50px" height="50px">
                </div>
            </a>
            <a href="new_view.jsp" alt="?ֱ? ?? ?ü?">
                <div style="border-radius:50%;z-index:150; width:60px;height:60px; text-align: center; ">
                        <img src="img/clock.png" width="50px" height="50px">
                        <br><p style="margin-top: 5px; font-size: 13px; font-weight: bold;">?ֱٺ??ü?</p>
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

	%>




    
    <div class="about-ban1">
        <div class="text-box1">
			<p class="title">???ٱ???</p>
            <hr>
        </div>
    </div>




	<form name="cart_fm" method="post" onsubmit="_submit(this); " >
    <div class="search_wrap1">
	<div class="flex flex-ai-c allchk">
	<input type='checkbox' name='animal' value='selectall' onclick='selectAll(this)' style="width: 18px; height: 18px;" /> <p style=" margin: 0 0 0 10px; font-weight: bold; ">??ü ????</p></div>
<br />
	<%

		String jsql1 = "select * from cart where ctNo = ?";
		PreparedStatement pstmt1 = con.prepareStatement(jsql1);
		pstmt1.setString(1, ctNo);
		ResultSet rs1 = pstmt1.executeQuery(); 

		if (rs1.next()) {


		String jsql = "select * from cart where ctNo = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setString(1, ctNo);
		ResultSet rs = pstmt.executeQuery(); 
		


		while(rs.next()) {


		 String prdNo = rs.getString("prdNo"); 
		 String opNo = rs.getString("opNo"); 



			String jsql2= "SELECT * FROM surgery WHERE prdNo=?";
			PreparedStatement pstmt2 = con.prepareStatement(jsql2);
			pstmt2.setString(1, prdNo);

			ResultSet rs2 = pstmt2.executeQuery(); 
			rs2.next();

			String name = rs2.getString("prdName"); 
			String price = rs2.getString("startprice"); 

			String jsql3= "SELECT * FROM soption WHERE opNo=?";
			PreparedStatement pstmt3 = con.prepareStatement(jsql3);
			pstmt3.setString(1, opNo);

			ResultSet rs3 = pstmt3.executeQuery(); 
			rs3.next();

			String opname = rs3.getString("opName"); 
			int opprice = rs3.getInt("opPrice"); 

%>

			
        <div class="search_box">
            <div class="search1 flex">
				<input type="checkbox" name="chk[]" class="chk flex-ai-c" id="chk" value="<%=prdNo%>" style="margin:48px 25px 0 0; width: 18px; height: 18px;" />
				<input type="hidden" name="field_a[]" class="field_a" value="<%=opNo%>" />
				<a href="sub_<%=prdNo%>.jsp?prdNo=<%=prdNo%>" class="search_a">
					<h2><%=name%></h2>
					<p><%=opname%></p>
					</a>
            </div>
            <div class="search2">
                <div class="price">
                    <span><%=df.format(opprice)%></span>??
                </div>
				<a href=deletecart.jsp?prdNo=<%=prdNo%>&opNo=<%=opNo%> class="btn" style="border: none; background:none;">????</a>
            </div>
        </div>
			


		<%
	}  // while
		%>

			<script>

			function selectAll(selectAll)  {
			  const checkboxes 
				 = document.querySelectorAll('input[type="checkbox"]');
			  
			  checkboxes.forEach((checkbox) => {
				checkbox.checked = selectAll.checked
			  })
			}

			
			function _submit(f)
				{
					//???? ???? ?? ????
					if (typeof(f.elements['chk[]'].length) == 'undefined') //????
					{
						if (f.elements['chk[]'].checked==false)
						{
							f.elements['field_a[]'].disabled=true;
						}
					} else { //????
						for (i=0; i<f.elements['chk[]'].length; i++)
						{
							if (f.elements['chk[]'][i].checked==false)
							{
								f.elements['field_a[]'][i].disabled=true;
							}
						}
					}
					return true;
				}

			</script>


		<div class="btn_box1" style="width:max-content; margin: 80px auto; color:#fff; font-size:18px; font-weight: 500;">
			
			<a href="#" onClick=cart() style="text-align:center; padding: 20px 55px;
    background: #f89fa8;
    color: #ffffff; font-weight: bold;
    border-radius: 5px;  margin: 0px 10px;">?ü? ????</a>
		</div>
<%
		} // if
	else {

		%>


			<div class="finish">
			<div class="icon">
				<i class="fa-solid fa-circle-xmark"></i>
			</div>
			  <h1>???ٱ??ϰ? ???????ϴ? !</h1>
			  <p>
			  </p>
			  <div class="btn">
				<a href="guide.jsp">?ü? ????????</a>
			  </div>
		</div>



			<%
	} //else
	%>


    </div>
	<form>







    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo-ft.png" width = "150" alt="" style="margin-bottom: 20px;">
          <p class = "text1">??ȣ?? : ???ɾ??Ǻΰ? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   ?ּ? : ????Ư???? ???ʱ? ???????? 439 ( ??Ƽ???? 4?? )
        </p>
          <p>?????ڵ??Ϲ?ȣ : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       ??ǥ?? : ?????? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       ??ȭ??ȣ : 02-517-0912
        </p>
          <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
     </div>
    

<%
    } catch(Exception e) {
		out.println(e);
}
   
%>
    



<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>
<script src="https://kit.fontawesome.com/58c5940c20.js" crossorigin="anonymous"></script>


<!-- Initialize Swiper -->
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

// ??ư Ŭ?? ?? ?? ???? ?̵?
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




    
     function keyword_check(){
    
                  if(document.search.keyword.value==''){ 
    
                  alert('?˻?? ?Է??ϼ???');
    
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
			alert('?α??? ?? ?̿? ?????? ???????Դϴ?.');
			document.location.href="login.jsp";
		}




			function cart()              //  "???ٱ??ϴ???" ??ư?? Ŭ???? ȣ??
		{

			var checked = $('.chk').is(':checked');

		if(checked) {

			var frm1 = document.cart_fm;
			frm1.action = "cartResult.jsp"
			frm1.submit();

		} else {
			alert("?????? ?ü??? ???????ּ??? !");
		}
			

		}



</script>
</body>
</html>