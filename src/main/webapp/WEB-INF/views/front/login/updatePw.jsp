<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/js/front.js"></script>
<script src="/js/jquery-3.7.1.min.js"></script>

<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/reset.css?ts=1663913816">
<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/common.css?ts=1663913816">
<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/layer/layer.css?ts=1663913816">
<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/layout/layout.css?ts=1664527143">
<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/goods/list.css?ts=1666156327">
<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/button.css?ts=1663913816">
<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/member/member.css?ts=1663913816">
<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/js/jquery/chosen/chosen.css?ts=1663913816">
<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/custom.css?ts=1663913816">
<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/donggu/donggu.css?ts=1705303957">

<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css">
<!--===================O============================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--====================O===========================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/fonts/iconic/css/material-design-iconic-font.min.css">
<!--=====================O==========================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--======================O=========================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/animate/animate.css">
<!--=======================O========================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/css-hamburgers/hamburgers.min.css">
<!--========================O=======================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/animsition/css/animsition.min.css">
<!--=========================O======================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/select2/select2.min.css">
<!--=============================O==================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/bootstrap/css/util.css">
<link rel="stylesheet" type="text/css" href="/bootstrap/css/main.css">
<!--===============================================================================================-->
    

</head>
<body class="animsition">
	<%@ include file="/WEB-INF/views/include/front/header.jsp"%>


<form id="frmMain" method="POST">
<div class="content_box">
	
		<div class="member_wrap">
			<div class="member_tit" style="display:none;">
				<h2>비밀번호 찾기</h2>
			</div>
			<div class="member_cont">
				<div class="find_password_box">
					<h3>비밀번호 변경</h3>
					<p>새로운 비밀번호를 입력해주세요.</p>
					<div class="login_input">
						<div class="member_warning">
						
							<input type="text" id="passwd" name="newPassword" oninput="updatePassword" placeholder="새로운 비밀번호">
							<div id="result"></div>

							<input type="text" id="pw2" oninput="updatePassword" placeholder="비밀번호를 한번 더 입력해주세요.">
							<div id="result2"></div>

							<p class="find_password"><a href="#" class="js_btn_find_id">비밀번호 찾기</a></p>
							<a href="/front/login/loginForm">뒤로가기</a>
							<p class="dn" id="errorMessage"></p>
						</div>
						
						<div class="btn_center_box">
							 <button id="checkData" class="btn_member_next" type="button"  onclick="javascript: updatePassword(event)">확인</button>
					
						</div>
					</div>
				</div>	
				<!-- //find_password_box -->
			</div>
			<!-- //member_cont -->
		</div>
		<!-- //member_wrap -->
	</form>
	<%@ include file="/WEB-INF/views/include/front/footer.jsp" %>
</div>

</body>
</html>
