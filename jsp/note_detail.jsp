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
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title>����������</title>
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

    <div class="detail_wrap">
        <div class="detail_box">
            <div class="user_box">
        
                <div class="user1 flex">
                    <div class="img-box">
        						<img src="img/osn.png" alt="">
                    </div>
                    <div class="text">
                        <h2>������</h2>
                        <p>2022-03-30</p>
                    </div>
                    <div class="like">
                        <img src="img/heart.png">
                    </div>
                </div>
        
                <div class="user2 flex">
                    <div class="item">
                        #���ʷ�
                    </div>
                    <div class="item">
                        #�ױ�
                    </div>
                    <div class="item">
                        #���彺
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
                    ������ �������� �̤�
                </div>
                <div class="body">
                    4�������� ������ �ߴµ� ���� �� ���� �������� ���� �� �����Ϸ��� �� �� ���� �����̾��µ� ģ���� ���� ��밡 �� �������� ����� ���ڶ� ���̰� ���ٰ� �ϰ� ��¥ ģ�� ģ���� �����ڿ��� ��¦ �� ���� �� ���������� ������ �����̷��� �Ф� ���� �ڳ��� ������ ���� �� �ִ� ���̶� �� ������������ �ױ����� �̤� 
        					������ �ױ� �������� �������� ?? �Ф� �� ��� ���ּ��� �� ������� �� ��
                </div>
            </div>
        
            <hr>
        
            <div class="price">
                <h1>�ü� ���</h1>
            </div>
        
        			<hr>
        
            <div class="comment">
                <h1>���</h1>
        
        
        				<table class="com_list">
        					<tr bgcolor='ffffff'>
        						<td>
        						<div class="img-box"><img src="img/dsp.png"></div>
        						</td>
        
        						<td>
        						<div class="com_title">��Ż��</div>
        						<div>�ױ� ������ �̻ڰڳ׿�!</div>
        						</td>
        									  
        						<td>
        						<div align="end" class="day">2022-03-30</div>
        						</td>
        					</tr>  	
        				</table>

        
        
        				<table class="com_list">
        					<tr bgcolor='ffffff'>
        						<td>
        						<div class="img-box"><img src="img/drp.png"></div>
        						</td>
        
        						<td>
        						<div class="com_title">�ٿ�</div>
        						<div>�ױ��� �� ���ƿ� !</div>
        						</td>
        									  
        						<td>
        						<div align="end" class="day">2022-04-02</div>
        						</td>
        					</tr>  	
        				</table>
        

        
        				<table class="com_list">
        					<tr bgcolor='ffffff'>
        						<td>
        						<div class="img-box"><img src="img/dsn.png"></div>
        						</td>
        
        						<td>
        						<div class="com_title">����� ����</div>
        						<div>�̻ڽó׿�</div>
        						</td>
        									  
        						<td>
        						<div align="end" class="day">2022-04-05</div>
        						</td>
        					</tr>  	
        				</table>
        					
        
        
        
        
        				<hr>
        
        
                <form method="post" action="board-write-process.jsp" name="input" class="write_com">
             
                     <table border="0" cellspacing="2" cellpadding="3">
                    
                            <tr class="user-view">
                                <td class="flex flex-ai-c">
                                <input type="hidden" name="idx" value="idx">
        
                                    <img src="img/bok.png" alt="">
                                    <input type="hidden" name="in_name">
                                ������</td>
                            </tr>
							<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                    
                            <tr class="com_wrap">
                                <td class="td1">
                                    <textarea rows="10" cols="190"name="in_content" style="outline: none; padding: 20px 10px;"> ����� �Է����ּ���.</textarea>
                                </td>
                                <td>
                                    <div class="btn"> 
                                        <input type="button" name="write_submit" value="��   ��" OnClick="in_check()" 
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
        
        
        
        
        
                </div> <!-- comment -->
        
        
        
        
            </div>
        </div>

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