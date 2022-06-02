<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <link rel="stylesheet" href="css/zipcode.css" />
<title>�����ȣ�˻�/�ּ��ڵ��Է�</title>
</head>
<script language="javascript">	
	function getFocus()     //  �ε����ڸ��� ���� �Է��ϴ� �ؽ�Ʈ�ʵ忡 Ŀ���� ��ġ���� ��
	{
		document.zipForm.dong.focus();      //  zipForm.dong.focus(); �� ����ص� ������
	}

	function dongCheck()
	{		
		if(document.zipForm.dong.value =="")
		{
			alert("�ּҸ� �Է��ϼ���");
			document.zipForm.dong.focus();
			return;
		}
		document.zipForm.submit(); 
	}
</script>
<body onLoad="getFocus()">
   <div class="post-search" style="width: 544px; height: 710px;">
        <h1>
            <div class="title">�����ȣ ã��</div>
        </h1>
  
   <form name="zipForm" method="post" action="zipCheckOk1.jsp">
   <input id="address_search_name" name="dong" type="text" placeholder="�˻���(���θ�,����,�ǹ���)�� �Է����ּ���">
            <input class="button" type="button" value="�˻�" onclick= "dongCheck();">
        </form>
  

	  <div class="post-search-tip">
            <h2>TIP</h2>
            <p>�Ʒ��� ���� �˻��ϸ� ���� ��Ȯ�� ����� �˻��˴ϴ�.</p>
            <dl>
                <dt>���θ� + �ǹ���ȣ</dt>
                <dd>��) ������� 513, ���� ÷�ܷ� 242</dd>
            </dl>
            <dl>
                <dt>������(��/��) + ����</dt>
                <dd>��) �Ｚ�� 25, ���� ���� 2181</dd>
            </dl>
            <dl>
                <dt>������(��/��) + �ǹ���(����Ʈ��)</dt>
                <dd>��) �д� �ְ�, �Ｚ�� �ڿ���</dd>
            </dl>
        </div>
    
        <div class="search-over">
            <span>�˻�� �Ʒ��� ���� ������ �Է��ϸ� ���� ��Ȯ�� ����� �˻��˴ϴ�.</span><br>
            <span class="ex">'���θ�+�ǹ���ȣ', '������+����', '������+�ǹ���(����Ʈ��)'</span>
        </div>
    
        <div class="search-empty">
            <strong class="error-message">�˻��� ����� �����ϴ�.</strong>
            <p>�˻�� �߸��� ö�ڰ� ������, ��Ȯ�� �ּ����� �ٽ� �ѹ� Ȯ���� �ּ���.</p>
            <div class="box">
                <h2>TIP</h2>
                <ul>
                    <li>�����ּ�(��/��/��), ���θ�, �ǹ���(����Ʈ)�� Ȯ�����ּ���.</li>
                    <li>�Ϻ� ����ǹ�, �ŵ����� ��� �Ͻ������� �˻��� ���� ���� �� �ֽ��ϴ�.</li>
                    <li>���θ� �ּҸ� �𸣽� ��� <a href="http://www.juso.go.kr" target="_blank">www.juso.go.kr</a> ���� Ȯ�� �����մϴ�.</li>
                    <li>�������� �˻��� ������������ �˻��ϼž� �մϴ�.<br>(�����������δ� �˻��� ���� �ʽ��ϴ�.)</li>
                </ul>
            </div>
        </div>
    
     
        <div class="pagination_wrap"><nav><ul class="pagination pagination-sm"></ul></nav></div>
    
    </div>

 </body>
</html>