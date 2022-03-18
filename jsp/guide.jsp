<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="css/guide.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <title>�ü��ȳ�</title>
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
                    <a>�� �ɾ��</a>
                    <div>
                        <ul>
                            <li><a href="about_1.jsp">���丮</a></li>
                            <li><a href="about_3.jsp">���ô±�</a></li>
                        </ul>
                    </div>
                </li>
				<li class="menu">
                    <a>�Ǻ�Ÿ��</a>
					<div>
                        <ul>
                            <li><a href="custom.jsp">�� üũ</a></li>
                            <li><a href="qna.jsp">�� ����</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ü�</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">�ȳ�/���</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>����</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">�ٷο���</a></li>
                            <li><a href="change.jsp">����Ȯ��/����/���</a></li>
                            <li><a href="new_view.jsp">�ֱٺ��ü�</a></li>
                        </ul>
                    </div>
                </li>

                
                <li class="jsp">
                    <a>Ŀ�´�Ƽ</a>
                    <div>
                        <ul>
                            <li><a href="noti.html">��������</a></li>
                            <li><a href="event.html">�̺�Ʈ</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>





    <div class="categori_box">

        <div class="categori">
            <h1>ī�װ�</h1>
            <ul class="plz">
                <li class="on">
                    <p>��Ų�ɾ�</p>
                </li>
                <li>
                    <p>�ȸ��ɾ�</p>
                </li>
                <li>
                    <p>���̽�����</p>
                </li>
                <li>
                    <p>�ٵ����</p>
                </li>
            </ul>

        </div>


        <div class="about1-1">

            <h1>�ü��ȳ�/����</h1>
            <!-- ��Ʈ���� -->
            <div class="ne ne1">

                <div class="row">


					<div class="box">
                        <a href="sub_1.jsp?prdNo=sk02">
                            <div class="name">���帧�ɾ�</div>
                            <p>���帧 ������ ���Ե� ��Ų�ɾ�</p>
                            <div class="price"><span>70,000</span>�� ����</div>
                        </a>
                    </div>

					
                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk01">
                            <div class="name">�������</div>
                            <p>���ڱ� ���û�� ! ���� �����ʸ�</p>
                            <div class="price"><span>29,000</span>�� ����</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">


					<div class="box">
                        <a href="sub_1.jsp?prdNo=sk03">
                            <div class="name">Ŭ��Ƽ</div>
                            <p>�ֱٱ� / ��Ƽ / ȫ���� �����ϴ� ���ɾ�� �ñ״�ó ���� ���α׷� </p>
                            <div class="price"><span>200,000</span>�� ����</div>
                        </a>
                    </div>

					
                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk04">
                            <div class="name">������ ���彺</div>
                            <p>��/��/�ܵ���̸� �ǼۻǼ��ϰ�! </p>
                            <div class="price"><span>50,000</span>�� ����</div>
                        </a>
                    </div>

                </div>



            </div>

            <div class="ne ne2">

                

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fa01">
                            <div class="name">���̽��ʷ�</div>
                            <p>�� �󱼿� �� �´� ������ �ʷ�</p>
                            <div class="price"><span>150,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fa02">
                            <div class="name">������</div>
                            <p>������� ��밳�� ������ (HIKO)</p>
                            <div class="price"><span>140,000</span>�� ����</div>
                        </a>
                    </div>


                </div>

				<div class="row">


					<div class="box">
                        <a href="sub_1.jsp?prdNo=fa03">
                            <div class="name">�Լ�/�Բ����ʷ�</div>
                            <p>ȭ���� �̼Ҹ� ���� �Լ�/�Բ����ʷ�</p>
                            <div class="price"><span>59,000</span>�� ����</div>
                        </a>
                    </div>

                </div>


            </div>

            <div class="ne ne3">

                <div class="row flex">

                    <div class="box">
                      <a href="sub_1.jsp?prdNo=li01">
                            <div class="name">�簢�� ���彺</div>
                            <p>�ߴ޵� �� ������ �ٿ� ������ V�������� </p>
                            <div class="price"><span>19,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=li02">
                            <div class="name">�����ֻ�</div>
                            <p>�̿� ����, �ιػ� ���� �ȳ�! </p>
                            <div class="price"><span>50,000</span>�� ����</div>
                        </a>
                    </div>

                </div>

				<div class="row flex">


                    <div class="box">
                        <a href="sub_1.jsp?prdNo=li03">
                            <div class="name">�����ֻ�</div>
                            <p>��󵵷� ���׷��̵�� ����������ֻ�</p>
                            <div class="price"><span>300,000</span>�� ����</div>
                        </a>
                    </div>

                </div>



            </div>

            <div class="ne ne4">

                <div class="row flex">

                    <div class="box">
				
                        <a href="sub_1.jsp?prdNo=bo01">
                            <div class="name">�ٵ� ���彺</div>
                            <p>���� : ���Ƹ�/�¸��/�����/�ȶ� </p>
                            <div class="price"><span>99,000</span>�� ����</div>
                        </a>
                    </div>




                    <div class="box">
                        <a href="sub_1.jsp?prdNo=bo03">
                            <div class="name">���� �ֻ�</div>
                            <p>�߸�/������ ������� </p>
                            <div class="price"><span>290,000</span>�� ����</div>
                        </a>
                    </div>

                </div>


				<div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=bo04">
                            <div class="name">�ɱ��� �ֻ�</div>
                            <p>����/�ȶ�/�����/���Ƹ��� ������ؽü� </p>
                            <div class="price"><span>400,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=bo02">
                            <div class="name">�ٵ𽴸�ũ</div>
                            <p>�ٵ�ź�°����� ���� �����ĸ�����</p>
                            <div class="price"><span>40,000</span>�� ����</div>
                        </a>
                    </div>

                </div>
                
            </div> 
<!-- row -->

            </div>
<!-- ne -->

        </div>
<!-- about1 -->
    </div>
	<!-- ī�׷θ��ڽ� -->


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






    <!-- ž�� -->

    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>





    <script>
        // gsap.to('.top-wrap > .top-box2', {
        //     scrollTrigger: {
        //         trigger: '.top-wrap',
        //         start: 'top -98px',
        //         scrub: true
        //     },
        //     height: '72px',
        //     textalign: 'center',
        //     top: '0',
        //     position: 'fixed',
        //     background: '#fff',
        //     borderBottom: '1px solid #ccc'
        // });


        let = 0

        $(function () {
            $(".plz li").on("click", function () {
                no = $(this).index() + 1;
                $(".plz li ").show();
                $('.plz li ').removeClass('on');
                $(this).addClass('on');

                $(".ne").hide();
                if($('.ne').css('display') == 'none'){
                    $(".ne" + no).show();
        }else{
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


    </script>

</body>

</html>