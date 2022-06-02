<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
</head>


<body>

<%


try {
 	 String DB_URL="jdbc:mysql://localhost:3306/care";  
     String DB_ID="skin";  
     String DB_PASSWORD="1234"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	request.setCharacterEncoding("euc-kr");

//	String opno = request.getParameter("opno1");
	String prdno = request.getParameter("prdno");
	String rvprice = request.getParameter("sell6");
	String day1 = request.getParameter("day1");
	String date = request.getParameter("date");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String phone = phone1 + "-" + phone2 + "-" + phone3;
	String sex = request.getParameter("sex");
	String memo = request.getParameter("memo");
	String sell3 = request.getParameter("sell3");
	String coupon = request.getParameter("coupon");


	%>


<form name=rez1 method=post action="pay_finish.jsp">
<%
	String jsql7= "SELECT * FROM gocart WHERE prdNo=?";
			PreparedStatement pstmt7 = con.prepareStatement(jsql7);
			pstmt7.setString(1, prdno);

			ResultSet rs7 = pstmt7.executeQuery(); 
			while(rs7.next()){
				String opno = rs7.getString("opNo"); 
				String merchant_uid = rs7.getString("merchant_uid"); 
%>
<input name='opno' type='hidden' value="<%=opno%>">
<%
			}
%>
<input name='prdno' type='hidden' value="<%=prdno%>">
<input name='sell6' id='sell6' type='hidden' value="<%=rvprice%>">
<input name='day1' type='hidden' value="<%=day1%>">
<input name='date' type='hidden' value="<%=date%>">
<input name='name' type='hidden' value="<%=name%>">
<input name='phone' type='hidden' value="<%=phone%>">
<input name='sex' type='hidden' value="<%=sex%>">
<input name='memo' type='hidden' value="<%=memo%>">
<input name='sell3' type='hidden' value="<%=sell3%>">
<input name='coupon' type='hidden' value="<%=coupon%>">
</form>

		<%

    } catch(Exception e) {
		out.println(e);
}

%>
  <script >

  
    var IMP = window.IMP; 
    IMP.init('imp91057481'); 


      // IMP.request_pay(param, callback) 결제창 호출
        IMP.request_pay({
    	pg : "kakaopay", 
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : '결제',
        amount : parseInt(document.getElementById("sell6").value),
        buyer_email : '구매자 이메일',
        buyer_name : '구매자 이름',
        buyer_tel : "010-1234-1234",
        buyer_addr : '구매자 주소',
        buyer_postcode : '구매자 주소',
        m_redirect_url : 'redirect url'
		}, function(rsp) {
			if ( rsp.success ) {
				var msg = '결제가 완료되었습니다.';
			var frm1 = document.rez1;
			frm1.action = "pay_finish.jsp"
			frm1.submit();
			} else {
				var msg = '결제에 실패하였습니다.';
				rsp.error_msg;
				location.href='guide.jsp';
			}
		});


  </script>

  </body>
  </html>