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
		document.res.date.value = time;

		if (checkTime(this)) {
			this.style.backgroundColor = "#efefef";

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
				btns[i].style.backgroundColor = "#efefef";
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

		const colYear = document.getElementById("calYear").innerText;
		const colmon = document.getElementById("calMonth").innerText;


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
							calendarChoiceDay(this,colYear , colmon);

						}
					}

					// @details �������� ���
					else if (date.getDate() == day) {
						column.style.backgroundColor = "#FFFFE6";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this,colYear , colmon);
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
							calendarChoiceDay(this,colYear , colmon);
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
						calendarChoiceDay(this,colYear , colmon);
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
	function calendarChoiceDay(column,colYear,colmon) {



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
		column.style.backgroundColor = "ffcbcb";
		const colday = column.innerText;
		console.log(colday);
		document.res.day1.value = colYear + "." + colmon + "." +colday;

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

        
