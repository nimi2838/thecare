<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="css/manager_procedure.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <script src="https://kit.fontawesome.com/214669976f.js" crossorigin="anonymous"></script>
  <title>관리자</title>
</head>
<body>
    
    <div class="top-wrap">
        <div class="top-box1 flex flex-jc-sb flex-ai-c">
            <div class="logo-box ">
                <div class="img-box">
                    <a href="manager_main.jsp">
                        <img src="img/logo.png" alt="" width="150px" height="69px">
                    </a>
                </div>
            </div>
        </div>
        <div class="line"></div>

    </div>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care"; 
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

    
%>


    <section id="content" >
        <div class="inner">
            <h1 class="title">시술관리</h1>

            <div class="wrap">

                <div class="titleArea">
                    <h2>전체 시술 조회</h2>
                    <div class="new">
                        <a href="insertsurgery.jsp">
                            <img src="img/manager-plus.png" alt="" width="30px" height="30px">
                            <p>시술등록</p>
                        </a>
                    </div>
                </div>
            </div>
            <table>
                <thead>
                    <tr>
                        <td>카테고리</td>
                        <td>시술번호</td>
                        <td>시술이름</td>
                        <td>시술가격</td>
						<td>수정</td>
						<td>삭제</td>
                    </tr>
                </thead>
                
                <tbody>
                   <%
	String jsql = "select * from surgery where prdNo NOT like 'aa'";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery();
	while(rs.next()) {

			String ctgType =  rs.getString("ctgType");	
			String prdNo =  rs.getString("prdNo");
			String prdName =  rs.getString("prdName");	
			String startprice =  rs.getString("startprice");	
			%>
                    <tr>
                        <td><%=ctgType%></td>
						<td><%=prdNo%></td>
                        <td><%=prdName%></td>
                        <td><%=startprice%></td>
						<td><a style = "color:blue;" href="update_Managersurgery.jsp?prdNo=<%=prdNo%>">Yes</a></td>
                        <td><a style = "color:red;" href="delete_Managersurgery.jsp?prdNo=<%=prdNo%>">Yes</a></td>
                    </tr>
						<script>
					
							function real(){
							 if(confirm("정말 예약을 취소하시겠습니까?"))
							 {
							  document.location.href="delete_Managersurgery.jsp?prdNo=<%=prdNo%>"
							 }
							 else
							 {
							 alert('예약을 유지합니다.');
							 return false;
							 }
							}
					</script>
					<%
		}  // while문의 끝
%>
                </tbody>
            </table>

            <a href="manager_main.jsp">
                <div class="btn">메인</div>

            </a> 
<script>
$('tbody tr').eq(1).remove();

</script>

        </div>
    </section>
<%
    } catch (Exception e) {
      out.println(e);	
}
%>





    


    <div class="footer flex flex-jc-c">
        <div class="text">
            <img src="./img/logo.png" width = "150" alt="" >
          <p class = "text1">상호명 : 더케어피부과 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   주소 : 서울특별시 서초구 강남대로 439 ( 멀티빌딩 4층 )
        </p>
          <p>사업자등록번호 : 012-012-00012 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       대표자 : 봉조율 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       전화번호 : 02-517-0912
        </p>
          <p>COPYRIGHT (C) 2022 THE CARE .ALL RIGHTS RESERVED.</p>
        </div>
     </div>
    


    


</body>
</html>