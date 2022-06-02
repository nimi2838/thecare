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
<title>우편번호검색/주소자동입력</title>
</head>
<script language="javascript">	
	function getFocus()     //  로딩되자마자 동을 입력하는 텍스트필드에 커서를 위치시켜 줌
	{
		document.zipForm.dong.focus();      //  zipForm.dong.focus(); 로 사용해도 무방함
	}

	function dongCheck()
	{		
		if(document.zipForm.dong.value =="")
		{
			alert("주소를 입력하세요");
			document.zipForm.dong.focus();
			return;
		}
		document.zipForm.submit(); 
	}
</script>
<body onLoad="getFocus()">
   <div class="post-search" style="width: 544px; height: 710px;">
        <h1>
            <div class="title">우편번호 찾기</div>
        </h1>
  
   <form name="zipForm" method="post" action="zipCheckOk1.jsp">
   <input id="address_search_name" name="dong" type="text" placeholder="검색어(도로명,지번,건물명)를 입력해주세요">
            <input class="button" type="button" value="검색" onclick= "dongCheck();">
        </form>
  

	  <div class="post-search-tip">
            <h2>TIP</h2>
            <p>아래와 같이 검색하면 더욱 정확한 결과가 검색됩니다.</p>
            <dl>
                <dt>도로명 + 건물번호</dt>
                <dd>예) 영동대로 513, 제주 첨단로 242</dd>
            </dl>
            <dl>
                <dt>지역명(동/리) + 번지</dt>
                <dd>예) 삼성동 25, 제주 영평동 2181</dd>
            </dl>
            <dl>
                <dt>지역명(동/리) + 건물명(아파트명)</dt>
                <dd>예) 분당 주공, 삼성동 코엑스</dd>
            </dl>
        </div>
    
        <div class="search-over">
            <span>검색어에 아래와 같은 조합을 입력하면 더욱 정확한 결과가 검색됩니다.</span><br>
            <span class="ex">'도로명+건물번호', '지역명+지번', '지역명+건물명(아파트명)'</span>
        </div>
    
        <div class="search-empty">
            <strong class="error-message">검색된 결과가 없습니다.</strong>
            <p>검색어에 잘못된 철자가 없는지, 정확한 주소인지 다시 한번 확인해 주세요.</p>
            <div class="box">
                <h2>TIP</h2>
                <ul>
                    <li>지번주소(동/읍/면), 도로명, 건물명(아파트)을 확인해주세요.</li>
                    <li>일부 신축건물, 신도시의 경우 일시적으로 검색이 되지 않을 수 있습니다.</li>
                    <li>도로명 주소를 모르실 경우 <a href="http://www.juso.go.kr" target="_blank">www.juso.go.kr</a> 에서 확인 가능합니다.</li>
                    <li>동명으로 검색시 법정동명으로 검색하셔야 합니다.<br>(행정동명으로는 검색이 되지 않습니다.)</li>
                </ul>
            </div>
        </div>
    
     
        <div class="pagination_wrap"><nav><ul class="pagination pagination-sm"></ul></nav></div>
    
    </div>

 </body>
</html>