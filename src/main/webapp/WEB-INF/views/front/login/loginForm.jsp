<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>로그인 화면</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<!-- 부트스트랩임 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>



<!-- <link rel="icon" type="image/png" href="/bootstrap/images/icons/favicon.png" /> -->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/bootstrap/css/util.css">
<link rel="stylesheet" type="text/css" href="/bootstrap/css/main.css">
<!--===============================================================================================-->
<style>

/* body 요소에 대한 스타일 */
/*         body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa; 
            margin: 0; 
            padding: 0;
            display: flex; 
            justify-content: center; 
            align-items: center; 
            height: 100vh; 
        }
 */
/* 제목(h2) 요소에 대한 스타일 */
h2 {
	text-align: center; /* 가운데 정렬 */
	color: #333; /* 글자색 지정 */
}

/* 폼 컨테이너에 대한 스타일 */
.form-container {
	margin: 0 auto;
	width: 40vh; /* 너비 지정 */
	background-color: #e6cdcd1e; /* 배경색 지정 */
	border-radius: 8px; /* 테두리 반경 지정 */
	padding: 100px; /* 안쪽 여백 지정 */
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	width: 500px; /* 그림자 효과 지정 */
}

/* 폼 그룹에 대한 스타일 */
.form-group {
	margin-bottom: 20px; /* 아래 여백 지정 */
}

/* 라벨에 대한 스타일 */
label {
	display: inline;
	margin-bottom: 5px; /* 아래 여백 지정 */
	color: #555;
	margin-bottom: 5px; /* 글자색 지정 */
}

/* 버튼에 대한 스타일 */
button {
	padding: 10px 20px; /* 안쪽 여백 지정 */
	background-color: #c6f715; /* 배경색 지정 */
	color: #fff; /* 글자색 지정 */
	border: none; /* 테두리 제거 */
	border-radius: 5px; /* 테두리 반경 지정 */
	cursor: pointer; /* 커서 스타일 지정 */
	width: 100%; /* 너비 지정 */
	font-size: 16px; /* 글자 크기 지정 */
}

/* 버튼에 호버 상태일 때 적용되는 스타일 */
button:hover {
	background-color: #0056b3; /* 배경색 변경 */
}

.save {
	display: flex;
}

input::placeholder {
	opacity: .5;
}

/* 아이디 선택 저장 스타일 */
.loginArea .loginForm .linkChk {
	overflow: hidden; /* 넘치는 콘텐츠 숨김 */
	margin-top: 20px; /* 위 여백 지정 */
}

/* 로그인 버튼에 대한 스타일 */
.btnGreen, a.btnGreen {
	width: 100%; /* 너비 지정 */
	height: 50px; /* 높이 지정 */
	background-color: rgb(56, 221, 6); /* 배경색 지정 */
	padding: 11px 0 9px; /* 안쪽 여백 지정 */
	font-size: 18px; /* 글자 크기 지정 */
	line-height: 30px; /* 줄 높이 지정 */
	border-radius: 5px; /* 테두리 반경 지정 */
}

.a {
	color: black;
	opacity: .6;
}

.a:hover {
	color: black;
	opacity: 1;
}

/* 카카오톡 */
/*.loginArea.new .loginForm .fast_login .area .btnlogin.kakao {
            background-color: #f9e003;
            border-radius: 5px;
        }
        .loginArea.new .loginForm .fast_login .area .btnlogin {
            display: block;
            width: 170px;
            height: 40px;
            line-height: 40px;
            text-align: center;
        }
        a {
            color: #666;
            text-decoration: none;
        }
        a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
            margin: 0;
            padding: 0;
            border: 0;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        user agent stylesheet
        a:-webkit-any-link {
            color: -webkit-link;
            cursor: pointer;
            text-decoration: underline;
        }
        body, html {
            -webkit-font-smoothing: antialiased;
            -webkit-font-smoothing: antialiased;
            word-spacing: -1px;
            color: #666;
            font-size: 14px;
            line-height: 20px;
            font-family: Montserrat,-apple-system,NotoSansCJKkr,AppleSDGothicNeo,Roboto,dotum,"돋움",sans-serif;
            letter-spacing: -.04em;
            -moz-osx-font-smoothing: grayscale;
            -webkit-font-smoothing: antialiased;
        }*/
</style>

<script>
//개발서버로그인 front/js
function checkLogin() {
    var enteredId = document.getElementById("id").value;
    var enteredPassword = document.getElementById("passwd").value;

    var frmMain = document.getElementById("frmMain");
    frmMain.action = "/front/login/loginProc";
    frmMain.submit();
    
    if (enteredId == id && enteredPassword == passwd) {
        var frmMain = document.getElementById("frmMain");
        frmMain.action = "/front/login/loginForm";
        frmMain.submit();
    }
}
</script>

</head>
<body class="animsition">
	<%@ include file="/WEB-INF/views/include/front/header.jsp"%>
	<div class="form-container shadow-lg">
		<h2>로그인</h2>
		<br>
		<form id="frmMain" action="/front/login/loginProc" method="post">
			<div class="bor19 size-218 m-b-20">
				<input id="id" class="stext-111 cl2 plh3 size-116 p-lr-18" type="text"
					name="id" style="ime-mode: disabled;" required maxlength="16" autocomplete="off" 
					tabindex="1" placeholder="아이디" value="">
			</div>
			<div class="bor19 size-218 m-b-20">
				<input id="passwd" class="stext-111 cl2 plh3 size-116 p-lr-18" type="password"
					name="passwd" style="ime-mode: disabled;" required maxlength="16" autocomplete="off" 
					tabindex="2" placeholder="비밀번호" value="" onkeydown="if (event.keyCode==13) checkLogin();"/></d>
 
			</div>


			<div class="linkChk">
				<div class="save">

					<a class="stext-111 a" href="/front/login/findId">아이디 찾기</a> 
					<a class="stext-111 a" href="/front/login/findPw">비밀번호 찾기</a>
				</div>
			</div>
			
			<div style="margin-top: 5vh;">
				<button type="button" class="flex-c-m stext-101 cl0 size-125 bg3 bor2 hov-btn3 p-lr-15 trans-04" onclick="javascript:checkLogin();"> 로그인 </button>
					<a href="/front/login/terms" class="flex-c-m stext-101 cl5 size-125 bg2 bor1 hov-btn1 p-lr-15 trans-04">회원가입</a>
			</div>
		</form>
	</div>

	<%@ include file="/WEB-INF/views/include/front/footer.jsp"%>
</body>
</html>