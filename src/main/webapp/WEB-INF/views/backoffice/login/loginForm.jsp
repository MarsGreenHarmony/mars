<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 로그인</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	height: 100vh;
	background-image:
		url('https://img.freepik.com/premium-photo/green-natural-eco-friendly-cosmetics-decorated-with-leaves-in-pink-and-green-colors_842021-3.jpg?w=1380');
	background-size: cover;
	background-position: center;
	display: flex;
	justify-content: center;
	align-items: center;
}

#loginContainer {
	width: 400px;
	height: 300px;
	background-color: rgba(255, 255, 255, 0.3); /* 투명한 하얀색 배경 */
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	display: flex;
	flex-direction: column;
	justify-content: center; /* 수직 방향 가운데 정렬 */
	align-items: center; /* 수평 방향 가운데 정렬 */
}

h1 {
	text-align: center; /* 그린하모니 텍스트를 가운데 정렬 */
	color: black;
}

input[type="text"], input[type="password"], input[type="submit"]
	/* input[type="button"] */ {
	width: calc(100% - 20px);
	padding: 10px;
	margin-bottom: 10px;
	border-radius: 3px;
}

input[type="submit"] {
	margin-top: 10px;
	border: none;
	background-color: #007bff;
	color: #fff;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
/* 가입 링크 스타일 */
.signup-link {
	text-align: center;
	margin-top: 10px;
	color: #007bff;
	text-decoration: none;
}
</style>
</head>
<body>
	<div id="loginContainer">
		<form id="loginForm" action="/backoffice/login/loginProc" method="post">
			<h1>그린하모니 관리자</h1>
			<input type="text" id="id" name="id" placeholder="아이디" required value="admin">
			<input type="password" id="passwd" placeholder="비밀번호" required value="admin">
			<input type="submit" value="로그인">
			<!-- <button type="button" id="joinButton">가입</button> -->
			<input type="button" class="signup-button" value="가입" onclick="location.href='/backoffice/manager/writeForm'"> 
		</form>
	</div>

	<script>
		/* document.getElementById("loginForm").addEventListener("submit",
				function(event) {
					event.preventDefault();
					var username = document.getElementById("id").value;
					var password = document.getElementById("passwd").value;
					console.log("아이디:", id);
					console.log("비밀번호:", passwd);
				});

		//가입
		document.getElementById("joinButton").addEventListener("click",
				function() {
					window.location.href = "/backoffice/manager/writeForm";
				}); */
	</script>
</body>
</html>

