<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
  <script src="https://kit.fontawesome.com/21f77d5a02.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/rez.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script type="text/javascript">
	let calenderChoiceDate; // Į������ ���ڸ� �����ϴ� ��������
	document.addEventListener("DOMContentLoaded", function() {
		buildCalendar();
		init();
	});
	var btns = document.getElementsByClassName("btns");

	var today = new Date(); // @param ���� ����, ���� ��¥ / �� ��ǻ�� ������ �������� today�� Date ��ü�� �־���
	var date = new Date(); // @param ���� ����, today�� Date�� �����ִ� ����

	function checkTime(obj) { // 00:00
		var time = obj.innerHTML

		var getTime = time.substring(0, 2); // �ð�(hh)�κи� ���� 
		var getMinuts = time.substring(3, time.length); // ��(mm)�κи� ����

		var currentDate = new Date();

		calenderChoiceDate.setHours(getTime)
		calenderChoiceDate.setMinutes(getMinuts)
		var compareDate = new Date(calenderChoiceDate);

		return compareDate < currentDate
	}

	function handleClick(event) {
		var time = this.innerHTML; // 'hh:mm' ���·� ���� ���´� 
		console.log(time)

		if (checkTime(this)) {
			this.style.backgroundColor = "#dddddd";

		} else {
			if (event.target.classList[1] === "clicked") {
				event.target.classList.remove("clicked");
			} else {
				for (var i = 0; i < btns.length; i++) {

					btns[i].classList.remove("clicked");
				}

				event.target.classList.add("clicked");
			}
		}
	}

	function init() {
		for (var i = 0; i < btns.length; i++) {
			if (checkTime(btns[i])) {
				btns[i].style.backgroundColor = "#dddddd";
			}
			btns[i].addEventListener("click", handleClick);
		}
	}

	/**
	 * @brief   ������ ��ư Ŭ��
	 */
	function prevCalendar() {
		this.today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		buildCalendar(); // @param ���� Ķ���� ��� ��û
	}

	/**
	 * @brief   ������ ��ư Ŭ��
	 */
	function nextCalendar() {
		this.today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		buildCalendar(); // @param ��� Ķ���� ��� ��û
	}

	/**
	 * @brief   Ķ���� ����
	 * @details ��¥ ���� �޾� Ķ���� ���� �����ϰ�, ��¥���� ä���ִ´�.
	 */
	function buildCalendar() {

		let doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
		let lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);

		let tbCalendar = document.querySelector(".scriptCalendar > tbody");

		document.getElementById("calYear").innerText = today.getFullYear(); // @param YYYY��
		document.getElementById("calMonth").innerText = autoLeftPad((today
				.getMonth() + 1), 2); // @param MM��
		// ���������� ���ڸ� �����Ѵ�.
		calenderChoiceDate = today;
				
		// @details ���� Ķ������ ��°���� �����ִٸ�, ���� Ķ������ �����Ѵ�.
		while (tbCalendar.rows.length > 0) {
			tbCalendar.deleteRow(tbCalendar.rows.length - 1);
		}

		// @param ù��° ����
		let row = tbCalendar.insertRow();

		// @param ��¥�� ǥ��� ���� ������
		let dom = 1;

		// @details �������� ���ϰ�( doMonth.getDay() ) + �ش���� ��ü��( lastDate.getDate())��  ������ ������
		//               7�� �������� �ø�( Math.ceil() )�ϰ� �ٽ� �������� ���ϰ�( doMonth.getDay() )�� ���ش�.
		let daysLength = (Math
				.ceil((doMonth.getDay() + lastDate.getDate()) / 7) * 7)
				- doMonth.getDay();

		// @param �޷� ���
		// @details ���۰��� 1���� ���� �����ϰ� ���ϰ�( doMonth.getDay() )�� ���� ���̳ʽ�( - )�� for���� �����Ѵ�.
		for (let day = 1 - doMonth.getDay(); daysLength >= day; day++) {

			let column = row.insertCell();

			// @param ����( �����ϰ� �Ϳ����� ������ ���� )
			if (Math.sign(day) == 1 && lastDate.getDate() >= day) {

				// @param ���� ��¥ ������ ����

				column.innerText = autoLeftPad(day, 2);				

				// @param �Ͽ����� ���
				if (dom % 7 == 1) {
					column.style.color = "#FF4D4D";
				}

				// @param ������� ���
				if (dom % 7 == 0) {
					column.style.color = "#4D4DFF";
					row = tbCalendar.insertRow(); // @param ������� ������ �ٽ� ���� ���� ���� �߰��Ѵ�.
				}

			}

			// @param ���� �����ϰ� �Ϳ����� ������ ��¥����
			else {
				let exceptDay = new Date(doMonth.getFullYear(), doMonth
						.getMonth(), day);
				column.innerText = autoLeftPad(exceptDay.getDate(), 2);
				column.style.color = "#A9A9A9";
			}

			// @brief   ����, ��� ����ó��
			// @details ������ ���� �⵵�� �������
			if (today.getFullYear() == date.getFullYear()) {

				// @details ������� ���ÿ��� �������
				if (today.getMonth() == date.getMonth()) {

					// @details �����Ϻ��� ������ ����̸鼭 ������� ���ԵǴ� ���ΰ��
					if (date.getDate() > day && Math.sign(day) == 1) {
						column.style.backgroundColor = "#E5E5E5";
					}

					// @details �����Ϻ��� �����̸鼭 ������� ���ԵǴ� ���ΰ��
					else if (date.getDate() < day && lastDate.getDate() >= day) {
						column.style.backgroundColor = "#FFFFFF";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this);
						}
					}

					// @details �������� ���
					else if (date.getDate() == day) {
						column.style.backgroundColor = "#FFFFE6";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this);
						}
					}

					// @details ��������� �����ΰ��
				} else if (today.getMonth() < date.getMonth()) {
					if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
						column.style.backgroundColor = "#E5E5E5";
					}
				}

				// @details ��������� �����ΰ��
				else {
					if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
						column.style.backgroundColor = "#FFFFFF";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this);
						}
					}
				}
			}

			// @details �����ѳ⵵�� ����⵵���� �������
			else if (today.getFullYear() < date.getFullYear()) {
				if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
					column.style.backgroundColor = "#E5E5E5";
				}
			}

			// @details �����ѳ⵵�� ����⵵���� ū���
			else {
				if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
					column.style.backgroundColor = "#FFFFFF";
					column.style.cursor = "pointer";
					column.onclick = function() {
						calendarChoiceDay(this);
					}
				}
			}

			dom++;

		}
	}

	/**
	 * @brief   ��¥ ����
	 * @details ����ڰ� ������ ��¥�� üũǥ�ø� �����.
	 */
	function calendarChoiceDay(column) {

		calenderChoiceDate.setDate(column.innerHTML)
		for (var i = 0; i < btns.length; i++) {
			if (checkTime(btns[i])) {
				btns[i].style.backgroundColor = "#dddddd";
			}else{
				btns[i].style.backgroundColor = "";
			}
		}
		// @param ���� �������� �����ϴ� ��� ���� �������� ǥ�������� �ʱ�ȭ �Ѵ�.
		if (document.getElementsByClassName("choiceDay")[0]) {
			document.getElementsByClassName("choiceDay")[0].style.backgroundColor = "#FFFFFF";
			document.getElementsByClassName("choiceDay")[0].classList
					.remove("choiceDay");
		}

		// @param ������ üũ ǥ��
		column.style.backgroundColor = "#FF9999";

		// @param ������ Ŭ������ ����
		column.classList.add("choiceDay");
	}

	/**
	 * @brief   ���� ���ڸ���( 00 ) ����
	 * @details �ڸ����� ���ڸ��� ( 1, 2, 3�� )�� ���� 10, 11, 12��� ���� ���ڸ��� �������� ���߱����� 0�� ���δ�.
	 * @param   num     �տ� 0�� ���� ���� ��
	 * @param   digit   ������ �ڸ����� ���� ( 2�ڸ����� ��� 00, 3�ڸ����� ��� 000 �� )
	 */
	function autoLeftPad(num, digit) {
		if (String(num).length < digit) {
			num = new Array(digit - String(num).length + 1).join("0") + num;
		}
		return num;
	}
</script>
  <title>�ü�����</title>
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






            <!-- 
                <form accept-charset="utf-8" name="search" align="right" style="margin-right:70px;" method = "get" action ="NextFile.jsp" onsubmit="return keyword_check()" autocomplete=off>
					<td class="search">
					  <input class="form" type="text"  name="keyword" placeholder="�˻�" style="position: absolute;top: 50%;
					  left: 50%; transform: translate(-50%,-50%);  width: 900px; height: 50px; font-size: 25px; color: white;text-align: left; margin: 0 auto; 
					  padding: 18px 0 18px 10px; outline: none; display: block; border: 0; border-bottom: 1px solid white; background: rgba(87, 87, 87, 0);
					   box-shadow: none;">
					  </td>
					<td class="schBtn" style="top: 0; left: 10px;">
					<input  type="image" src="img-1/schBtn.png" alt="�˻�" onsubmit="search_form()"
					style="position: absolute;top: 49%;
					  left: 72%; transform: translate(-49%,-72%); width: 30px; height: 30px;">
					</td>  
					</form> -->






            <!-- <div class="flex-1-0-0 flex flex-ai-c flex-jc-e">
                    <div class="search-form form flex flex-ai-c">
                      <input type="text" placeholder="�˻�� �Է����ּ���.">
                      <a href="#" class="btn-type-1 btn-search">
                        <div class="img-box">
                            <img src="img/Search_thin_icon.png" alt="">
                        </div>
                      </a>
                    </div>
                  </div> -->


        </div>
        <div class="line"></div>


        <div class="top-box2">
            <ul class="flex flex-jc-c">
                <li class="menu">
                    <a>�� �ɾ��</a>
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
							<li><a href="custom.jsp">�� ���</a></li>
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


<div class = "contents">
<div class = "inner">

<div class = "tit" style = "width: 100%; float:left; border-bottom: 1px solid #ccc;" ><h1 style = "font-size: 33px;">�ü�����</h1></div>
<div class="no_box" style="width:max-content; margin: 20px auto 150px;">
        <div class="icon" style="width: max-content; margin: 0 auto; padding-top: 180px;">
		<i class="fa-solid fa-circle-exclamation" style="font-size:150px; color: #999999; margin:0 auto 50px;"></i>
		</div>
		<p class="title" style="text-align:center; font-size: 30px; font-weight:bold; color:#c5c5c5; margin:0 0 100px;">��ٱ��Ͽ� ��� �ü��� �����ϴ�.</p>
			<div style="margin: 50px auto; ">
			<a href="guide.jsp" style="text-align:center; font-size: 25px; background: #999999; width:100%; padding: 25px 125px; color:#fff; font-weight: bold;">�ü� ������ ����</a>
			</div>
			
    </div>

<hr>

<form name="res" method=post action=reservationResult.jsp >
<table class="scriptCalendar" style = "float: left;"  >
    <thead > 
        <tr>
            <td onClick="prevCalendar();" style="cursor:pointer;">&#60;&#60;</td>
            <td colspan="5">
                <span id="calYear">YYYY</span>��
                <span id="calMonth">MM</span>��
            </td>
            <td onClick="nextCalendar();" style="cursor:pointer;">&#62;&#62;</td>
        </tr>
        <tr>
            <td>��</td><td>��</td><td>ȭ</td><td>��</td><td>��</td><td>��</td><td>��</td>
        </tr>
    </thead>
    <tbody></tbody>
</table>



<div class="BookingTimeArea" alt="����ð�" style = "width: 50%; float : right; margin-top : 30px;">
												
						<ul class="List">
							<li>
								<label class = "btns">00:00</label></li>
							
							
														<li>
								<label  class = "btns">10:30</label>
							</li>
							
														<li>
								<label class = "btns">11:00</label>
							</li>
							
							
														<li>
								<label class = "btns">11:30</label>
							</li>
							
							
								
														
														<li>
								<label class = "btns">12:00</label>
							</li>
							
							
														<li>
								<label class = "btns">12:30</label>
							</li>
							
							
														<li>
								<label class = "btns">13:00</label>
							</li>
							
							
														<li>
								<label class = "btns">13:30</label>
							</li>
							
							
														<li>
								<label class = "btns">14:00</label>
							</li>
							
							
														<li>
								<label class = "btns">14:30</label>
							</li>
							
							
														<li>
								<label class = "btns">15:00</label>
							</li>
							
							
														<li>
								<label class = "btns">15:30</label>
							</li>
							
							
														<li>
								<label class = "btns">16:00</label>
							</li>
							
							
														<li>
								<label class = "btns">16:30</label>
							</li>
							
							
														<li>
								<label class = "btns">17:00</label>
							</li>
							
							
														<li>
								<label class = "btns">17:30</label>
							</li>

							<li>
								<label class = "btns">23:59</label>
							</li>
							</ul>
					</div>
 



					<div class = "tit" style = "width: 100%; float:left; border-bottom: 1px solid #ccc;" ><h1 style = "font-size: 33px;">������ �Է�</h1></div>

					
					
					
					
					
					
					
					
					<table class="table" style="font-size:10pt; margin-top:30px; width: 100%;  ">
					                    
					<tr>

                          <td class = "td_tit">
						  �̸� : <input type="text" name="name" class="name" style = "margin-left: 75px;">
						  </td>
                      </tr>
					  <tr>
                          <td class = "td_tit">
                             ����ó : <span class="pbox">
                             <select class="call" name=phone1>
                                <option value="010" selected>010
                                <option value="011">011
                                <option value="016">016
                                <option value="017">017
                                <option value="018">018
                                <option value="019">019
                             </select>
                          </span> &nbsp;&nbsp;&nbsp;-
                             <input type=text name=phone2 size=5 style="margin: 0; margin-left: 8px;"> &nbsp;&nbsp;&nbsp;-
                             <input type=text name=phone3 size=5 style="margin: 0; margin-left: 8px;">
                          </td>
                       </tr>
					   <tr>
                          <td class = "td_tit">
                             ���� : <input type=radio name=sex value="����" style="margin-left: 75px;">����
                             <input type = radio name=sex value="����">����
                          </td>
                       </tr>
					   <tr>
					  
                             <td class = "td_tit">
							 <p style = " position: relative;">��û���� :<textarea name = "memo" style="resize: none;  position: absolute; top:0; left: 115; border-color: #ccc;" cols="45" rows="3"></textarea> 
							 </td>
                          
                       </tr>

</table>

 <button type="submit"  class="rez_btn" value= "����" onClick="checkValue()" style= "cursor: pointer;" >����</button>
</form>
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

        
        

  
    
        <!-- Swiper JS -->
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollTrigger.min.js"></script>
        
        
        
        <!-- Initialize Swiper -->
        
        <!-- 3. ���� ��ũ��Ʈ -->
        <script>
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

		// ������ ���� ���� �ð��� üũ

	new Date(); 
	new Date(year, month, day, hours, minutes, seconds, milliseconds); 
	new Date(milliseconds); 
	new Date('date');



	function lastTimeConstraint(toYear, toMonth, toDate, toSecond, callBack) {

		

		const lastTime = document.getElementById("choiceTime").lastElementChild.value;

		const lastHour = lastTime.substring(0, 2);

		const lastMinute = lastTime.substring(2, 4);

		const lastDay = new Date(toYear, toMonth, toDate, lastHour, lastMinute, toSecond);

		callBack(lastDay);

	}

	function isUseDay(strTime, strDay) { 
		var tHH = Number(strTime.substring(2,4)); 
		var tMM = Number(strTime.substring(4,6)); 
		var rYY = Number(strDay.substring(0,4)); 
		var rMM = Number(strDay.substring(5,7)) - 1; 
		var rDD = Number(strDay.substring(8,10)); 
		var currDate = new Date(); 
		var tDate = new Date(rYY, rMM, rDD, tHH, tMM); 
	// �Է��� �ð��� �������� �ð� �����̸� 
	false if ( tDate - currDate < 0 ) { return false; } 
	else { return true; } }

        </script>
        </body>
        </html>