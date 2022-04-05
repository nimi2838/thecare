<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/note.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <title>메인페이지</title>
</head>
<body>


    <div class="top-wrap">
        <div class="top-box1 flex flex-jc-sb flex-ai-c">


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

            <div class="logo-box flex flex-jc-c">
                <div class="img-box">
                    <a href="main.jsp">
                        <img src="img/logo.png" alt="">
                    </a>
                </div>
            </div>
            <div class="search_wrap">
                <form accept-charset="utf-8" name="search" class="search-box flex flex-jc-end"
                    method="get" action="search.jsp" onsubmit=" keyword_check()" autocomplete=off>
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
               <!--  <li class="menu">
                    <a>차별점</a>
                    <div>
                        <ul>
                            <li><a href="guide.jsp">안내/비용</a></li>
                            <li><a href="review.jsp">전후사진</a></li>
                        </ul>
                    </div>
                </li> -->
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


    <div class="note_box">

        <h1>시술 기록장</h1>

        <a href="note_detail.html" class="con_box">

            <div class="img-box">
                <img src="img/dsp.png" alt="">
            </div>

            <div class="text-box">

                <div class="text1">
                    <h3>제목</h3>
                    <div class="icon-box">
                        <div class="icon1">
                            어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고
                        </div>
                    </div>
                </div>

                <div class="text2">
                    <div class="img-box">
                        <i class="fa-solid fa-comment"></i>
                    </div>
                    <div class="cnt">
                        99+
                    </div>
                </div>
            </div>
            
        </a>
        <hr>




         <a href="note_detail.html" class="con_box">

            <div class="img-box">
                <img src="img/dsn.png" alt="">
            </div>

            <div class="text-box">

                <div class="text1">
                    <h3>제목</h3>
                    <div class="icon-box">
                        <div class="icon1">
                            어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고
                        </div>
                    </div>
                </div>

                <div class="text2">
                    <div class="img-box">
                        <i class="fa-solid fa-comment"></i>
                    </div>
                    <div class="cnt">
                        99+
                    </div>
                </div>
            </div>
            
        </a>
        <hr>


          <a href="note_detail.html" class="con_box">

            <div class="img-box">
                <img src="img/bok.png" alt="">
            </div>

            <div class="text-box">

                <div class="text1">
                    <h3>제목</h3>
                    <div class="icon-box">
                        <div class="icon1">
                            어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고
                        </div>
                    </div>
                </div>

                <div class="text2">
                    <div class="img-box">
                        <i class="fa-solid fa-comment"></i>
                    </div>
                    <div class="cnt">
                        99+
                    </div>
                </div>
            </div>
            
        </a><hr>
		
		
		  <a href="note_detail.html" class="con_box">

            <div class="img-box">
                <img src="img/dsp.png" alt="">
            </div>

            <div class="text-box">

                <div class="text1">
                    <h3>제목</h3>
                    <div class="icon-box">
                        <div class="icon1">
                            어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고어쩌고저쩌고
                        </div>
                    </div>
                </div>

                <div class="text2">
                    <div class="img-box">
                        <i class="fa-solid fa-comment"></i>
                    </div>
                    <div class="cnt">
                        99+
                    </div>
                </div>
            </div>
            
        </a>
    </div>

    <input type="file" id="inputImage">

    <button id="sendButton">보내기</button>
  
    <img src="" class="uploadImage">

    <script>

        document.querySelector("#sendButton").addEventListener('click',()=>{
    
          let selectFile = document.querySelector("#inputImage").files[0];
    
          const file = URL.createObjectURL(selectFile);
    
          document.querySelector(".uploadImage").src = file;
    
        })
    
      </script>

    </body>
</html>