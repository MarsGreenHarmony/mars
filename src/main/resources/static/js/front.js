function selectBasket() {
}

/**
 * @author thepluto#hotmail.com
 * @since 2023-11-02
 *
 * <p>DESCRIPTION: 다음 우편번호 찾기(https://postcode.map.daum.net/guide)</p>
 * <p>IMPORTANT:</p>
 */
function execDaumPostcode() {
	
	var width = 500; //팝업의 너비
	var height = 600; //팝업의 높이
	
	new daum.Postcode({
		width: width,
		height: height,
		oncomplete: function(data) {
			// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var roadAddr = data.roadAddress;		// 도로명 주소 변수
			var extraRoadAddr = '';					// 참고 항목 변수
			
			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				extraRoadAddr += data.bname;
			}
			
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if(data.buildingName !== '' && data.apartment === 'Y'){
				extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			}
			
			// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if(extraRoadAddr !== ''){
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}
			
			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById("postcode").value		= data.zonecode;
			document.getElementById("roadAddr").value		= roadAddr;
			document.getElementById("addr2").value			= data.jibunAddress;
			
			// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
			if(roadAddr !== ''){
				document.getElementById("extraAddress").value = extraRoadAddr;
			}
			else {
				document.getElementById("extraAddress").value = '';
			}
			
			var guideTextBox = document.getElementById("guide");
			// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
			if(data.autoRoadAddress) {
				var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
				guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
				guideTextBox.style.display = 'block';
			
			}
			else if(data.autoJibunAddress) {
				var expJibunAddr = data.autoJibunAddress;
				guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
				guideTextBox.style.display = 'block';
			}
			else {
				guideTextBox.innerHTML = '';
				guideTextBox.style.display = 'none';
			}
			}
		}).open({
			left: (window.screen.width / 2) - (width / 2),
			top: (window.screen.height / 2) - (height / 2)
	});
}


/**
 * @author thepluto#hotmail.com
 * @since 2023-10-30
 *
 * <p>DESCRIPTION: 가입 정보 확인</p>
 * <p>IMPORTANT:</p>
 */
function checkRegister() {
	
	var frmMain = document.getElementById("frmMain");
	frmMain.action = "/front/customer/writeProc";
	frmMain.submit();
}

//비밀번호 재설정
function updatePassword(event) {
    var passwd = document.getElementById("passwd").value;
    var pw2 = document.getElementById("pw2").value;

    if (passwd !== pw2) {
        alert("비밀번호가 일치하지 않습니다.");
        event.preventDefault();
        return false;
    }

    var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*?_]).{8,16}$/;
    if (!passwordRegex.test(passwd)) {
        alert("비밀번호는 최소 6자에서 16자까지, 영문자, 숫자 및 특수 문자를 1개 이상 포함해야 합니다.");
        event.preventDefault();
        return false;
    }
    
    	var frmMain = document.getElementById("frmMain");
		frmMain.action = "/front/login/updatePwresult";
		frmMain.submit();

}

function validatePassword() {
	var passwd = document.getElementById('passwd').value;
	var pw2 = document.getElementById('pw2').value;
	var resultDiv = document.getElementById('result');
	var resultDiv2 = document.getElementById('result2');

	var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*?_]).{8,16}$/;

	if (passwordRegex.test(passwd)) {
		if (passwd === pw2) {
			resultDiv2.innerHTML = '비밀번호 일치';
			resultDiv2.style.color = 'green';
			resultDiv.innerHTML = '';
			resultDiv.style.color = '';
		
		} else {
			resultDiv2.innerHTML = '동일한 비밀번호를 입력 해주세요.';
			resultDiv2.style.color = 'red';
			resultDiv.innerHTML = '';
			resultDiv.style.color = '';
		}
		} else {
			resultDiv.innerHTML = '비밀번호는 최소 6자에서 16자까지, 영문자, 숫자 및 특수 문자를1개 이상 포함해야 합니다.';
			resultDiv.style.color = 'red';
		}

	// 자동으로 유효성 검사
		document.getElementById('passwd').addEventListener('input', validatePassword);
		document.getElementById('pw2').addEventListener('input', validatePassword);
}
