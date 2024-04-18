<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 가입</title>
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

#signupContainer {
	width: 400px;
	height: 500px;
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
	text-align: center; /* 헤더를 가운데 정렬 */
	color: black;
}

input[type="text"], input[type="password"], input[type="submit"] {
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
/* 링크 스타일 */
.link {
	text-align: center;
	margin-top: 10px;
	color: #007bff;
	text-decoration: none;
}
</style>
</head>
<body>
	<div id="signupContainer">
		<form id="signupForm" action="/front/signup/signupProc" method="post">
			<h1>관리자 가입</h1>
			<label for="username">아이디:</label> 
			<input type="text" id="username" placeholder="아이디" required> 
			<label for="password">비밀번호:</label>
			<input type="password" id="password" placeholder="비밀번호" required>
			<label for="confirmPassword">비밀번호 확인:</label> 
			<input type="password" id="confirmPassword" placeholder="비밀번호 확인" required> 
			<label for="name">이름:</label> 
			<input type="text" id="name" placeholder="이름" required> 
			<label for="email">이메일:</label> 
			<input type="email" id="email" placeholder="이메일" style="width: calc(100% - 20px); 
					padding: 10px; margin-bottom: 10px; border-radius: 3px;" required>
			<input type="submit" value="가입">

		</form>
	</div>

	<script>
		document.getElementById("signupForm").addEventListener(
				"submit",
				function(event) {
					event.preventDefault();
					var username = document.getElementById("username").value;
					var password = document.getElementById("password").value;
					var confirmPassword = document
							.getElementById("confirmPassword").value;
					var email = document.getElementById("email").value;
					console.log("아이디:", username);
					console.log("비밀번호:", password);
					console.log("이메일:", email);
					// 비밀번호 확인
					if (password !== confirmPassword) {
						alert("비밀번호가 일치하지 않습니다.");
						return;
					}
					// 여기에 추가적인 검증 및 처리 로직을 추가할 수 있습니다.
					// 예를 들어, 이메일 형식 검증 등
				});
	</script>
</body>
</html>