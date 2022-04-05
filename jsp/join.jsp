<%@ page contentType="text/html;charset=euc-kr" %>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="css/join.css" />
  

  <title>ȸ������</title>
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


    <div class = "join_main">
        <div class = "inner">
            <div class = "join_box">
                <h1>JOIN</h1>
                <form name="newMem" method=post action=joinResult.jsp>
                    <table class="table" style="font-size:10pt; margin-top:30px;">
        
                       <tr>
                          
                          <td>
                             <div class="td_img flex flex-ai-c">
                             <input type=text name="id" 
                             size="20" placeholder="���̵�">
							 <input type="button" value="���̵� �ߺ�Ȯ��"
                              onClick="checkID()" style="margin-bottom: 10px; line-height: 36px; height: 35px; border: 1px solid #777;
                              color: #777; padding: 0; min-width: 114px; width: 13%; margin-left: 2%; cursor: pointer; background-color: #fff; font-size : 12px">
                             </div>
                          </td>
                       </tr>
                       <tr>
                          
                          <td><input type=password name="pw" 
                            size="35" placeholder="��й�ȣ" ></td>
                       </tr>
                       
                       <tr>
                          <td><input type=text name="name" size=35 placeholder="�̸�"></td>
                       </tr>
                       <tr>
                          <td>
                             <input type=text name=joomin1 size=10 placeholder="�ֹε�Ϲ�ȣ" style="display: inline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             -
                             <input type=text name=joomin2 size=13 style="display: inline;margin: 0;margin-left: 15px;">
                          </td>
                       </tr>
                       <tr>
                          <td>
                             <input type=text name=birthyy size=1  style="display: inline;">��
                             <input type=text name=birthmm size=1 style="display: inline;margin: 0;">��
                             <input type=text name=birthdd size=1  style="display: inline;margin: 0;">��
                             <input type=radio name=solar value="���" style="margin-left: 15px;"  checked>���
                             <input type=radio name=solar value="����">����
                          </td>
                       </tr>
                       <tr>
                          <td>
                             <input type=text name=email1 size=10 placeholder="�̸���"> &nbsp;&nbsp;&nbsp;&nbsp;@ &nbsp;&nbsp;&nbsp;&nbsp;
                             <select name=email2>
                                <option value="naver" selected>naver.com
                                <option value="hanmail">hanmail.net
                                <option value="daum">daum.net
                                <option value="nate">nate.com
                                <option value="gmail">gmail.com
                                <option value="icloud">icloud.com
                             </select>
                          </td>
                       </tr>
                       <tr>
                          <td>
                             <span class="pbox">
                             <select class="call" name=phone1>
                                <option value="010" selected>010
                                <option value="011">011
                                <option value="016">016
                                <option value="017">017
                                <option value="018">018
                                <option value="019">019
                             </select>
                          </span> &nbsp;&nbsp;&nbsp;-
                             <input type=text name=phone2 size=5 style="margin: 0; margin-left: 15px;"> &nbsp;&nbsp;&nbsp;-
                             <input type=text name=phone3 size=5 style="margin: 0; margin-left: 15px;">
                          </td>
                       </tr>
                       <tr>
                          <td style= "padding-top:7px;"><input type="text" name="zipcode" size="17" placeholder="�ּ�" readonly> 
                             <input type="button" class="btn" value="�����ȣ �˻�"
                              onClick="zipCheck()" style="margin-bottom: 10px;"><br>
                              
                             <input type="text" name="address1" size="35" readonly style="margin-bottom: 10px;"><br>
                             <input type="text" name="address2" size="25">&nbsp;(���ּ��Է�)</td>
                       </tr>
                       <tr>
                          <td>
                             <input type=radio name=sex value="����" style="margin-left: 30px;">����
                             <input type=radio name=sex value="����">����
                          </td>
                       </tr>
        
                    </table>
                   
                   <button type="submit"  class="join_btn" value= "ȸ������" onClick="checkValue()" style= "cursor: pointer;" >ȸ������</button>
                    </div>
                    </form>
                 </div>
              </div>
        </div>
    </div>

    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo.png" width = "150" alt="" style="margin-bottom: 20px;">
          <p class = "text1">��ȣ�� : ���ɾ��Ǻΰ� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   �ּ� : ����Ư���� ���ʱ� ������� 439 ( ��Ƽ���� 4�� )
        </p>
          <p>����ڵ�Ϲ�ȣ : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       ��ǥ�� : ������ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       ��ȭ��ȣ : 02-517-0912
        </p>
          <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
     </div> 

	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
	 </script>

	 
            <script language="javascript">
					

               function checkID() //   ID �ߺ��˻縦 �����ϴ� �ڹٽ�ũ��Ʈ �Լ�
               {
                  var id = newMem.id.value; // 132���� form�� �̸��� newMem�� �Ϳ� �ָ��� ��!

                  if (id == "") //   11~16��:  ID�� �Է¾��� ID �ߺ�üũ ��ư�� Ŭ���� ����� ó��
                  {
                     alert("ID�� �Է��� �ּ���!");
                     newMem.id.focus();
                     return;
                  }

                  window.open("checkId.jsp?id=" + id, "win", "width=255, height=145, scrollbars=no, resizable=no");
               } //   ���)  =>  window.open("URL", "â�̸�", "â�� Ư��");


               function checkValue() 
               { //   �ڹٽ�ũ��Ʈ�Լ� 
                  if (newMem.id.value == "") 
                  {
                     alert("���̵� �Է��� �ּ���!"); 
                     newMem.id.focus(); 
                     return; 
                  }

                  if (newMem.pw.value == "") {
                     alert("��й�ȣ�� �Է��� �ּ���!");
                     newMem.pw.focus();
                     return;
                  }

                  if (newMem.name.value == "") {
                     alert("�̸��� �Է��� �ּ���!");
                     newMem.name.focus();
                     return;
                  }

                  if (newMem.joomin1.value == "") {
                     alert("�ֹε�Ϲ�ȣ ���ڸ��� �Է��� �ּ���!");
                     newMem.joomin1.focus();
                     return;
                  }

                  if (newMem.joomin2.value == "") {
                     alert("�ֹε�Ϲ�ȣ ���ڸ��� �Է��� �ּ���!");
                     newMem.joomin2.focus();
                     return;
                  }

                  if (newMem.birthyy.value == "") {
                     alert("�¾ ������ �Է��� �ּ���!");
                     newMem.birthyy.focus();
                     return;
                  }

                  if (newMem.birthmm.value == "") {
                     alert("�¾ ���� �Է��� �ּ���!");
                     newMem.birthmm.focus();
                     return;
                  }

                  if (newMem.birthdd.value == "") {
                     alert("�¾ ��¥�� �Է��� �ּ���!");
                     newMem.birthdd.focus();
                     return;
                  }

                  if (newMem.email1.value == "") {
                     alert("�̸��� ���ڸ��� �Է��� �ּ���!");
                     newMem.email1.focus();
                     return;
                  }

                  if (newMem.email2.value == "") {
                     alert("�̸��� ���ڸ��� �Է��� �ּ���!");
                     newMem.email2.focus();
                     return;
                  }

                  if (newMem.tel.value == "") {
                     alert("��ȭ��ȣ�� �Է��� �ּ���!");
                     newMem.tel.focus();
                     return;
                  }

                  if (newMem.phone1.value == "") {
                     alert("�޴��� ���ڸ� ������ �Է��� �ּ���!");
                     newMem.phone1.focus();
                     return;
                  }

                  if (newMem.phone2.value == "") {
                     alert("�޴��� �߰��ڸ� ��ȣ�� �Է��� �ּ���!");
                     newMem.phone2.focus();
                     return;
                  }

                  if (newMem.phone3.value == "") {
                     alert("�޴��� ���ڸ� ��ȣ�� �Է��� �ּ���!");
                     newMem.phone3.focus();
                     return;
                  }

                  if(newMem.address1.value == "") {
		             alert("���ּҸ� �Է��� �ּ���! - (�����ȣ�˻� ��ư Ŭ��)");
		             newMem.address1.focus();
		             return;
                  }

                  if(newMem.address2.value == "") {
		             alert("���ּҸ� �Է��� �ּ���!");
		             newMem.address2.focus();
		             return;
                  }
				  if(newMem.sex.value == "") {
		             alert("������ ������ �ּ���!");
		             newMem.sex.focus();
		             return;
                  }

                  newMem.submit(); 
               }

                 function idFocus()        // ���� �ε��Ǹ�  ID�� �Է��ϴ� ��ġ�� �ٷ� Ŀ���� ��ġ���ѳ���
                 {										// �ڹٽ�ũ��Ʈ �Լ�  (body �±׾��� onLoad �̺�Ʈ �ڵ鷯�� �ָ��� ��!)
	                 newMem.id.focus();
	                 return;
                 }
                 
                 
                 function zipCheck()
                 {
                 	window.open("zipCheck.jsp", "win", "width=430, height=710, scrollbars=yes, status=yes");
                 }


				 </script>

				 <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>



    <!-- Initialize Swiper -->

    <!-- 3. ���� ��ũ��Ʈ -->
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
		const $topBtn = document.querySelector(".moveTopBtn");

// ��ư Ŭ�� �� �� ���� �̵�
$topBtn.onclick = () => {
  window.scrollTo({ top: 0, behavior: "smooth" });
}
        var swiper = new Swiper(".mySwiper", {
            cssMode: true,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            pagination: {
                el: ".swiper-pagination",
                clickable: true // ��ư Ŭ�� ����
            },
            autoplay: true,
            autoplaySpeed: 5000,
            keyboard: true
        });


        function SliderBox1__init() {
            $('.slider-box-1 > .slick').slick({
                autoplay: true,
                autoplaySpeed: 5000,
                pauseOnHover: false,
                slidesToShow: 3,
                slidesToScroll: 3,
                responsive: [{
                    breakpoint: 1050, // ȭ���� ���̰� 600px �̻��� �� 
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                }, {
                    breakpoint: 850, // ȭ���� ���̰� 320px �̻��� �� 
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }],

                // arrows:true,
                prevArrow: ".slider-box-1 > .arrows > .btn-left",
                nextArrow: ".slider-box-1 > .arrows > .btn-right"
            });
        }

        $(function () {
            SliderBox1__init();
        });


        function SliderBox2__init() {
            $('.slider-box-2 > .slick').slick({
                autoplay: true,
                autoplaySpeed: 5000,
                pauseOnHover: false,
                slidesToShow: 1,
                slidesToScroll: 1,
                // responsive: [{
                //     breakpoint: 1050, // ȭ���� ���̰� 600px �̻��� �� 
                //     settings: {
                //         slidesToShow: 2,
                //         slidesToScroll: 2
                //     }
                // }, {
                //     breakpoint: 850, // ȭ���� ���̰� 320px �̻��� �� 
                //     settings: {
                //         slidesToShow: 1,
                //         slidesToScroll: 1
                //     }
                // }],

                // arrows:true,
                prevArrow: ".slider-box-2 > .arrows > .btn-left",
                nextArrow: ".slider-box-2 > .arrows > .btn-right"
            });
        }

        $(function () {
            SliderBox2__init();
        });


        //         gsap.to('body', {
        //   scrollTrigger:{
        //     start:'top 0',
        //     end:'top 800px',
        //     trigger:'.top-box2',
        //     markers: true,
        //     pin:true
        //   },
        // });

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
    </script>
</body>
</html>