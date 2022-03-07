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
                            <li><a href="guide.jsp">�ü����</a></li>
                            <li><a href="review.jsp">���Ļ���</a></li>
                        </ul>
                    </div>
                </li>
                <li class="menu">
                    <a>�ü�����</a>
                    <div>
                        <ul>
                            <li><a href="reservation.jsp">�����ϱ�</a></li>
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





    <div class="categori_box">

        <div class="categori">
            <h1>ī�װ���</h1>
            <ul class="plz">
                <li class="on">
                    <p>���彺</p>
                </li>
                <li>
                    <p>����/�ʷ�</p>
                </li>
                <li>
                    <p>������������</p>
                </li>
                <li>
                    <p>����</p>
                </li>
                <li>
                    <p>��Ų�ɾ�</p>
                </li>
                <li>
                    <p>ü��</p>
                </li>
                <li>
                    <p>����</p>
                </li>
            </ul>

        </div>


        <div class="about1-1">

            <h1>�ü��ȳ�/����</h1>
            <!-- ��Ʈ���� -->
            <div class="ne ne1">

                <div class="row">

                    <div class="box">
                      <a href="sub_1.jsp?prdNo=tox01">
						<!-- <a href='sub_1.jsp?prdNo=tox01' onclick="top.frame1.location='in_view.jsp?prdNo=tox01';"> -->
                            <div class="name">�簢�� ���彺</div>
                            <p>�ߴ޵� �� ������ �ٿ� ������ V�������� </p>
                            <div class="price"><span>19,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=tox02">
                            <div class="name">�ָ� ���彺</div>
                            <p>ǥ���ָ��� ź���� �����ϴ� ������� </p>
                            <div class="price"><span>30,000</span>�� ����</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=tox03">
                            <div class="name">������ ���彺</div>
                            <p>��/��/�ܵ���̸� �ǼۻǼ��ϰ�! </p>
                            <div class="price"><span>50,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
				
                        <a href="sub_1.jsp?prdNo=tox04">
                            <div class="name">�ٵ� ���彺</div>
                            <p>���� : ���Ƹ�/�¸��/�����/�ȶ� </p>
                            <div class="price"><span>99,000</span>�� ����</div>
                        </a>
                    </div>

                </div>



            </div>

            <!-- ���̾�Ʈ -->
            <div class="ne ne2">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fil01">
                            <div class="name">�����ֻ�</div>
                            <p>�̿� ����, �ιػ� ���� �ȳ�! </p>
                            <div class="price"><span>50,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fil02">
                            <div class="name">�����ֻ�</div>
                            <p>���󵵷� ���׷��̵�� ����������ֻ�</p>
                            <div class="price"><span>300,000</span>�� ����</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fil03">
                            <div class="name">���̽��ʷ�</div>
                            <p>�� �󱼿� �� �´� ������ �ʷ�</p>
                            <div class="price"><span>150,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=fil04">
                            <div class="name">������</div>
                            <p>������� ��밳�� ������ (HIKO)</p>
                            <div class="price"><span>140,000</span>�� ����</div>
                        </a>
                    </div>
                </div>


            </div>

            <div class="ne ne3">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=las01">
                            <div class="name">�Ḷ�� FLX</div>
                            <p>[��ǰ �� Ȯ��] ������ �������� ź��UP]</p>
                            <div class="price"><span>1,000,,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=las02">
                            <div class="name">����</div>
                            <p>[��ǰ����������] �������� ������ ������ </p>
                            <div class="price"><span>690,000</span>�� ����</div>
                        </a>
                    </div>

                </div>



            </div>

            <div class="ne ne4">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=col01">
                            <div class="name">Ŭ��Ƽ</div>
                            <p>�ֱٱ� / ��Ƽ / ȫ���� �����ϴ� ���ɾ�� �ñ״�ó ���� ���α׷� </p>
                            <div class="price"><span>200,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=col02">
                            <div class="name">���������</div>
                            <p>���Ǳ��� �����ϴ� ���� ������ </p>
                            <div class="price"><span>60,000</span>�� ����</div>
                        </a>
                    </div>

                </div>

                


            </div>


            <div class="ne ne5">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk01">
                            <div class="name">����/�ܱ��ֻ�</div>
                            <p>���� ���˷�л��� �����ϴ� �����ַ��</p>
                            <div class="price"><span>350,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk02">
                            <div class="name">NCTF ����ġ��</div>
                            <p>��Ų�ν����� ���� ������ �׶��� </p>
                            <div class="price"><span>90,000</span>�� ����</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk03">
                            <div class="name">�ñ׳�72/�Ʊ��ֻ�</div>
                            <p>�������ڿ� ����������� �Ǻ� ����!</p>
                            <div class="price"><span>150,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk04">
                            <div class="name">�˶�� �ʸ�</div>
                            <p>õ���̼�ħ���� �Ǻΰ��� ���� </p>
                            <div class="price"><span>99,000</span>�� ����</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk05">
                            <div class="name">���帧����/�������</div>
                            <p>���帧 ������ ���Ե� ��Ų�ɾ�</p>
                            <div class="price"><span>70,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=sk06">
                            <div class="name">��������</div>
                            <p>���ڱ� ���û�� ! ���� �����ʸ�</p>
                            <div class="price"><span>29,000</span>�� ����</div>
                        </a>
                    </div>

                </div>


            </div>


            <div class="ne ne6">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=bo01">
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


            <div class="ne ne7">

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=wax01">
                            <div class="name">������(����),(����)</div>
                            <p>����� �λ��� ���� ����</p>
                            <div class="price"><span>50,000</span>�� ����</div>
                        </a>
                    </div>

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=wax02">
                            <div class="name">�ٵ�����(����)</div>
                            <p>���� �ʵ� �ڽ��ְ�</p>
                            <div class="price"><span>30,000</span>�� ����</div>
                        </a>
                    </div>

                </div>

                <div class="row flex">

                    <div class="box">
                        <a href="sub_1.jsp?prdNo=wax03">
                            <div class="name">�ٵ�����(����)</div>
                            <p>1�ν� �����̺� ���� </p>
                            <div class="price"><span>60,000</span>�� ����</div>
                        </a>
                    </div>


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