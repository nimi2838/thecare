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

  
<script>
  

    var IMP = window.IMP; 
    IMP.init('imp91057481'); 

    IMP.request_pay({
    	pg : "kakaopay", 
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : '����',
        amount : 1,
        buyer_email : '������ �̸���',
        buyer_name : '������ �̸�',
        buyer_tel : '������ ��ȣ',
        buyer_addr : '������ �ּ�',
        buyer_postcode : '������ �ּ�',
        m_redirect_url : 'redirect url'
    }, function(rsp) {
        if ( rsp.success ) {
            var msg = '������ �Ϸ�Ǿ����ϴ�.';
            location.href='�����Ϸ��� �� url';
        } else {
            var msg = '������ �����Ͽ����ϴ�.';
            rsp.error_msg;
            
        }
    });


    </script>
</head>

<body>

<button onclick="requestPay()">�����ϱ�</button>

  <script>
    function requestPay() {
      // IMP.request_pay(param, callback) ����â ȣ��
      IMP.request_pay({ // param
          pg: "html5_inicis",
          pay_method: "card",
          merchant_uid: "ORD20180131-0000011",
          name: "�븣���� ȸ�� ����",
          amount: 64900,
          buyer_email: "gildong@gmail.com",
          buyer_name: "ȫ�浿",
          buyer_tel: "010-4242-4242",
          buyer_addr: "����Ư���� ������ �Ż絿",
          buyer_postcode: "01181"
      }, function (rsp) { // callback
          if (rsp.success) {
              ...,
              // ���� ���� �� ����,
              ...
          } else {
              ...,
              // ���� ���� �� ����,
              ...
          }
      });
    }
  </script>


</body>
</html>
