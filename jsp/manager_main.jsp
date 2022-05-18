<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="css/manager_main.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <script src="https://kit.fontawesome.com/214669976f.js" crossorigin="anonymous"></script>
  <title>관리자</title>
</head>
<body>
    
    <div class="top-wrap">
        <div class="top-box1 flex flex-jc-sb flex-ai-c">
            <div class="logo-box ">
                <div class="img-box">
                    <a href="manager_main.html">
                        <img src="img/logo.png" alt="" width="150px" height="69px">
                    </a>
                </div>
            </div>
        </div>
        <div class="line"></div>

    </div>




    <section id="fine" >
        <div class="inner">
    
            <div class="wrap">
                <div class="thank">

<%
     
	String id = (String)session.getAttribute("managerId");    

   java.util.Date date = new java.util.Date();  //    Date 타입의 객체 date 생성
   String curDate = date.toLocaleString();     //   변수 curDate에  현재시각(년.월.일 시:분:초)을 저장

 %>
                <h1>MANAGER</h1>
                <table class="tb">
                    <tr>
                            <td style="font-size:15pt;">접속관리자 ID:</td>
                            <td style="font-size:15pt;">&nbsp;&nbsp;&nbsp;<%=id%></td>
                    </tr>
                    <tr >
                           <td style="font-size:15pt;">접속 시각: </td>
                            <td style="font-size:15pt;">&nbsp;&nbsp;&nbsp;<%=curDate%></td>
                    </tr>
                    </table>  
                <div>
                    <ul>
                        <li class="test">
                            <a href="manager_member.jsp">
                                <div class="icon">
                                    <img class=""  src="img/manager-icon1.png" alt="" >
                                </div>
                                <h1>회원관리</h1>
                            </a>
                        </li>
                        <li class="test">
                            <a href="manager_procedure.jsp">
                                <div class="icon">
                                    <img class=""  src="img/manager-icon2.png" alt="" width="55px" height="">
                                </div>
                                <h1>시술관리</h1>
                            </a>
                        </li>
                        <li class="test">
                            <a href="manager_reservations.jsp">
                                <div class="icon">
                                    <img class="" src="img/manager-icon3.png" alt="" >
                                </div>
                                <h1>예약관리</h1>
                            </a>
                        </li>
                    </ul>
                    <div class="btn">
                        <a href="manager_logout.jsp" id="logout" class="logout" style="font-size : 16px;">logout</a>

                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>





    


    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo-ft.png" width = "150" alt="" >
          <p class = "text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
        </p>
          <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       대표자 : 봉조율 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       전화번호 : 02-517-0912
        </p>
          <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
     </div>
    


    


</body>
</html>