<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


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

<script>
function findIdSubmit(form) {
    var cst_nm = form.cst_nm.value.trim();
    var cst_email = form.cst_email.value.trim();

    if (cst_nm.length == 0) {
        alert('이름을 입력해주세요');
        form.cst_nm.focus();
        return false;
    }

    if (cst_email.length == 0) {
        alert('이메일을 입력해주세요');
        form.cst_email.focus();
        return false;
    }
    // 폼이 제대로 작동하도록 수정
    form.submit();
    return true;
}

</script>
<form id="frmMain" action="/front/login/findIdresult" method="POST" >
<div class="content_box">
	
		<div class="member_wrap">
			<div class="member_tit" style="display:none;">
				<h2>비밀번호 찾기</h2>
			</div>
			<div class="member_cont">
				<div class="find_password_box">
					<h3>아이디 찾기</h3>
					<p>가입하신 성함과 이메일을 입력해주세요.</p>
					<div class="login_input">
						<div class="member_warning">
							<input type="text" id="cst_nm" name="cst_nm" placeholder="이름">
							<input type="text" id="cst_email" name="cst_email" placeholder="이메일">
							<p class="find_password"><a href="/front/login/findPw" class="js_btn_find_id">비밀번호 찾기</a></p>
							<a href="/front/login/loginForm">뒤로가기</a>
							<p class="dn" id="errorMessage"></p>
						</div>
						<div class="btn_center_box">
							 <button id="checkData" class="btn_member_next" type="button" onclick="return findIdSubmit(this.form);">찾기</button>
					
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
