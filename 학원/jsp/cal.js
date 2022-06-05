	let calenderChoiceDate; // 칼렌다의 날자를 저장하는 전역변수
	document.addEventListener("DOMContentLoaded", function() {
		buildCalendar();
		init();
	});
	var btns = document.getElementsByClassName("btns");

	var today = new Date(); // @param 전역 변수, 오늘 날짜 / 내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
	var date = new Date(); // @param 전역 변수, today의 Date를 세어주는 역할

	function checkTime(obj) { // 00:00
		var time = obj.innerHTML

		var getTime = time.substring(0, 2); // 시간(hh)부분만 저장 
		var getMinuts = time.substring(3, time.length); // 분(mm)부분만 저장

		var currentDate = new Date();

		calenderChoiceDate.setHours(getTime)
		calenderChoiceDate.setMinutes(getMinuts)
		var compareDate = new Date(calenderChoiceDate);

		return compareDate < currentDate
	}

	function handleClick(event) {
		var time = this.innerHTML; // 'hh:mm' 형태로 값이 들어온다 
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
	 * @brief   이전달 버튼 클릭
	 */
	function prevCalendar() {
		this.today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		buildCalendar(); // @param 전월 캘린더 출력 요청
	}

	/**
	 * @brief   다음달 버튼 클릭
	 */
	function nextCalendar() {
		this.today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		buildCalendar(); // @param 명월 캘린더 출력 요청
	}

	/**
	 * @brief   캘린더 오픈
	 * @details 날짜 값을 받아 캘린더 폼을 생성하고, 날짜값을 채워넣는다.
	 */
	function buildCalendar() {

		let doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
		let lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);

		let tbCalendar = document.querySelector(".scriptCalendar > tbody");

		document.getElementById("calYear").innerText = today.getFullYear(); // @param YYYY월
		document.getElementById("calMonth").innerText = autoLeftPad((today
				.getMonth() + 1), 2); // @param MM월

		const colYear = document.getElementById("calYear").innerText;
		const colmon = document.getElementById("calMonth").innerText;


		// 전역변수에 날자를 셋팅한다.
		calenderChoiceDate = today;
				
		// @details 이전 캘린더의 출력결과가 남아있다면, 이전 캘린더를 삭제한다.
		while (tbCalendar.rows.length > 0) {
			tbCalendar.deleteRow(tbCalendar.rows.length - 1);
		}

		// @param 첫번째 개행
		let row = tbCalendar.insertRow();

		// @param 날짜가 표기될 열의 증가값
		let dom = 1;

		// @details 시작일의 요일값( doMonth.getDay() ) + 해당월의 전체일( lastDate.getDate())을  더해준 값에서
		//               7로 나눈값을 올림( Math.ceil() )하고 다시 시작일의 요일값( doMonth.getDay() )을 빼준다.
		let daysLength = (Math
				.ceil((doMonth.getDay() + lastDate.getDate()) / 7) * 7)
				- doMonth.getDay();

		// @param 달력 출력
		// @details 시작값은 1일을 직접 지정하고 요일값( doMonth.getDay() )를 빼서 마이너스( - )로 for문을 시작한다.
		for (let day = 1 - doMonth.getDay(); daysLength >= day; day++) {

			let column = row.insertCell();


			// @param 평일( 전월일과 익월일의 데이터 제외 )
			if (Math.sign(day) == 1 && lastDate.getDate() >= day) {

				// @param 평일 날짜 데이터 삽입

				column.innerText = autoLeftPad(day, 2);				

				// @param 일요일인 경우
				if (dom % 7 == 1) {
					column.style.color = "#FF4D4D";
				}

				// @param 토요일인 경우
				if (dom % 7 == 0) {
					column.style.color = "#4D4DFF";
					row = tbCalendar.insertRow(); // @param 토요일이 지나면 다시 가로 행을 한줄 추가한다.
				}

			}

			// @param 평일 전월일과 익월일의 데이터 날짜변경
			else {
				let exceptDay = new Date(doMonth.getFullYear(), doMonth
						.getMonth(), day);
				column.innerText = autoLeftPad(exceptDay.getDate(), 2);
				column.style.color = "#A9A9A9";
			}

			// @brief   전월, 명월 음영처리
			// @details 현재년과 선택 년도가 같은경우
			if (today.getFullYear() == date.getFullYear()) {

				// @details 현재월과 선택월이 같은경우
				if (today.getMonth() == date.getMonth()) {

					// @details 현재일보다 이전인 경우이면서 현재월에 포함되는 일인경우
					if (date.getDate() > day && Math.sign(day) == 1) {
						column.style.backgroundColor = "#E5E5E5";
					}

					// @details 현재일보다 이후이면서 현재월에 포함되는 일인경우
					else if (date.getDate() < day && lastDate.getDate() >= day) {
						column.style.backgroundColor = "#FFFFFF";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this,colYear , colmon);

						}
					}

					// @details 현재일인 경우
					else if (date.getDate() == day) {
						column.style.backgroundColor = "#FFFFE6";
						column.style.cursor = "pointer";
						column.onclick = function() {
							calendarChoiceDay(this,colYear , colmon);
						}
					}

					// @details 현재월보다 이전인경우
				} else if (today.getMonth() < date.getMonth()) {
					if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
						column.style.backgroundColor = "#E5E5E5";
					}
				}

				// @details 현재월보다 이후인경우
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

			// @details 선택한년도가 현재년도보다 작은경우
			else if (today.getFullYear() < date.getFullYear()) {
				if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
					column.style.backgroundColor = "#E5E5E5";
				}
			}

			// @details 선택한년도가 현재년도보다 큰경우
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
	 * @brief   날짜 선택
	 * @details 사용자가 선택한 날짜에 체크표시를 남긴다.
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
		// @param 기존 선택일이 존재하는 경우 기존 선택일의 표시형식을 초기화 한다.
		if (document.getElementsByClassName("choiceDay")[0]) {
			document.getElementsByClassName("choiceDay")[0].style.backgroundColor = "#FFFFFF";
			document.getElementsByClassName("choiceDay")[0].classList
					.remove("choiceDay");
		}

		// @param 선택일 체크 표시
		column.style.backgroundColor = "ffcbcb";
		const colday = column.innerText;
		console.log(colday);
		document.res.day1.value = colYear + "." + colmon + "." +colday;

		// @param 선택일 클래스명 변경
		column.classList.add("choiceDay");
		
	}


	/**
	 * @brief   숫자 두자릿수( 00 ) 변경
	 * @details 자릿수가 한자리인 ( 1, 2, 3등 )의 값을 10, 11, 12등과 같은 두자리수 형식으로 맞추기위해 0을 붙인다.
	 * @param   num     앞에 0을 붙일 숫자 값
	 * @param   digit   글자의 자릿수를 지정 ( 2자릿수인 경우 00, 3자릿수인 경우 000 … )
	 */
	function autoLeftPad(num, digit) {
		if (String(num).length < digit) {
			num = new Array(digit - String(num).length + 1).join("0") + num;
		}
		return num;
	}





	
		 function checkValue() 
               { //   자바스크립트함수 
                  if (newMem.id.value == "") 
                  {
                     alert("아이디를 입력해 주세요!"); 
                     newMem.id.focus(); 
                     return; 
                  }

                  if (newMem.pw.value == "") {
                     alert("비밀번호를 입력해 주세요!");
                     newMem.pw.focus();
                     return;
                  }

                  if (newMem.name.value == "") {
                     alert("이름을 입력해 주세요!");
                     newMem.name.focus();
                     return;
                  }

                  if (newMem.joomin1.value == "") {
                     alert("주민등록번호 앞자리를 입력해 주세요!");
                     newMem.joomin1.focus();
                     return;
                  }

                  if (newMem.joomin2.value == "") {
                     alert("주민등록번호 뒷자리를 입력해 주세요!");
                     newMem.joomin2.focus();
                     return;
                  }

                  if (newMem.birthyy.value == "") {
                     alert("태어난 연도를 입력해 주세요!");
                     newMem.birthyy.focus();
                     return;
                  }

                  if (newMem.birthmm.value == "") {
                     alert("태어난 달을 입력해 주세요!");
                     newMem.birthmm.focus();
                     return;
                  }

                  if (newMem.birthdd.value == "") {
                     alert("태어난 날짜를 입력해 주세요!");
                     newMem.birthdd.focus();
                     return;
                  }

                  if (newMem.email1.value == "") {
                     alert("이메일 앞자리를 입력해 주세요!");
                     newMem.email1.focus();
                     return;
                  }

                  if (newMem.email2.value == "") {
                     alert("이메일 뒷자리를 입력해 주세요!");
                     newMem.email2.focus();
                     return;
                  }

                  if (newMem.tel.value == "") {
                     alert("전화번호를 입력해 주세요!");
                     newMem.tel.focus();
                     return;
                  }

                  if (newMem.phone1.value == "") {
                     alert("휴대폰 앞자리 국번을 입력해 주세요!");
                     newMem.phone1.focus();
                     return;
                  }

                  if (newMem.phone2.value == "") {
                     alert("휴대폰 중간자리 번호를 입력해 주세요!");
                     newMem.phone2.focus();
                     return;
                  }

                  if (newMem.phone3.value == "") {
                     alert("휴대폰 끝자리 번호를 입력해 주세요!");
                     newMem.phone3.focus();
                     return;
                  }

                  if(newMem.address1.value == "") {
		             alert("집주소를 입력해 주세요! - (우편번호검색 버튼 클릭)");
		             newMem.address1.focus();
		             return;
                  }

                  if(newMem.address2.value == "") {
		             alert("상세주소를 입력해 주세요!");
		             newMem.address2.focus();
		             return;
                  }
				  if(newMem.sex.value == "") {
		             alert("성별을 선택해 주세요!");
		             newMem.sex.focus();
		             return;
                  }

                  newMem.submit(); 
               }

        
