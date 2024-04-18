<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<lang="ko">
<head>

<meta charset="utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="format-detection" content="telephone=no">
<link rel="shortcut icon"
	href="https://static.oliveyoung.co.kr/pc-static-root/image/comm/favicon.ico">
<link rel="stylesheet" type="text/css" href="/mypage/mypage.css">

<meta property="og:type" content="website">
<meta property="og:title" content="마이페이지">
<meta property="og:url"
	content="https://www.oliveyoung.co.kr/store/main/main.do">
<meta property="og:image" content="">
<!--=================O==============================================================================-->
<!-- <link rel="icon" type="image/png" href="/bootstrap/images/icons/favicon.png" /> -->
<!--==================O=============================================================================-->
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

<link type="text/css" rel="stylesheet" href="/donggubat/donggubat1.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat2.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat3.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat4.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat5.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat6.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat8.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat9.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat12.css">


<!-- <link type="text/css" rel="stylesheet"
 1  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/reset.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 2  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/common.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 3  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/layer/layer.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 4  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/layout/layout.css?ts=1664527143">
<link type="text/css" rel="stylesheet"
 5  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/goods/list.css?ts=1666156327">
<link type="text/css" rel="stylesheet"
 6  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/button.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 8  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/js/jquery/chosen/chosen.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 9  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/custom.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 12  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/donggu/donggu.css?ts=1705303957"> -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<body class="animsition">
	<%@ include file="/WEB-INF/views/include/front/header.jsp"%>
	<meta charset="utf-8">
	<meta http-equiv="Content-Script-Type" content="text/javascript">
	<meta http-equiv="Content-Style-Type" content="text/css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="format-detection" content="telephone=no">
	<link rel="shortcut icon"
		href="https://static.oliveyoung.co.kr/pc-static-root/image/comm/favicon.ico">
	<link rel="stylesheet" type="text/css" href="mypagetest.css">

	<meta property="og:type" content="website">
	<meta property="og:url"
		content="https://www.oliveyoung.co.kr/store/main/main.do">
	<meta property="og:image" content="">


	<script src="https://code.jquery.com/jquery-3.7.1.js"
		integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="/js/front.js"></script>
	<script src="/js/jquery-3.7.1.min.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js">
		
	</script>


<style>
article {
	flex-basis: 100%;
	padding: 10px
}

/* 상단 헤더 테이블 */
table.type_01 {
	border-collapse: collapse;
	width: 95%;
	line-height: 1.5;
	/* margin: 1rem auto; */
	border: 1px solid #ddd;
	background-color: white;
}

table.type_01 th, table.type_01 td {
	padding: 3px;
	text-align: left;
	border-bottom: 1px solid #ddd;
	text-align: center;
}

table.type_01 th {
	background-color: #2b2b2b;
	color: #ddd;
}

table.type_01 tbody table.type_01 tr:hover {
	background-color: #f8f8f8;
	opacity: 0.9;
	/* cursor: pointer; */
}
.mt-4{
margin-top:-3rem!important;
}
/* 좌측 헤더 테이블 */
table.type_02 {
	width: 1024px;
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-left: 3px solid #369;
	margin: 20px 10px;
}

table.type_02 th {
	padding: 4px;
	font-weight: bold;
	vertical-align: top;
	color: #153d73;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-left:1px solid #ccc;
	text-align: center;
}

table.type_02 td {
	padding: 20px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

table.type_02 {
	width: 750px;
	margin: 50px 20px;
	border-left:1px solid #ccc;
}
button, input[type="submit"]{
  width:200px;
  margin-left:300px;
 }
.btnWrapper {
	text-align: center; /* 수평 중앙 정렬 */
	margin-top: 10px; /* 원하는 만큼의 상단 여백 지정 */
}

.btnBasic {
	border-radius: 5px;
	display: inline-block;
	min-width: 50px;
	height: 26px;
	line-height: 26px;
	text-align: center;
	background-color: #606060;
	color: #ffffff;
	vertical-align: middle;
	margin: 10px auto 10px;
	padding: 0px 7px
}
</style>

<script>
	function remove() {
		var frmMain = document.getElementById("frmMain");
		frmMain.action = "/common/board/faqremove";
		frmMain.submit();
	}
</script>
<div id="Container">

		<div id="Contents">



			<div class="mypage-head rate_05">
				<h1 class="tit">
					<a href="/common/board/list">고객센터</a>
				</h1>

				<div class="grd-box">
					<div class="info_user clrfix">

						<div class="thum"></div>

					</div>


					<div class="point-box ">
						<ul class="infor clrfix" id="pointInfo">


						</ul>
					</div>
				</div>
			</div>


			<div class="mypage-ix">

				<div class="mypage-lnb">
					<ul>
						<li><h2>고객 센터</h2>
							<ul>
								<li class="subMenu "><a href="/common/board/list">공지사항</a></li>
								<li class="subMenu on"><a href="/common/board/faqlist">자주찾는 질문</a></li>
							
							</ul>
				</div>

			
			
	<input type="hidden" name="cd_bbs_type" value="${boardDto.cd_bbs_type}" />
	<input type="hidden" name="seq_bbs" value="${boardDto.seq_bbs}" />
	<div id="layoutSidenav_content">
		<div>
			<div>
				<main>
					<div class="container-fluid px-4">
						</div>
						
				</main>
				<article>
				<h1 class="mt-4">자주찾는질문 상세내역</h1>
					<table class="type_02"
						style="margin-left: auto; margin-right: auto;">
						<tr>
							<th width="10%">제목</th>
							<td>${boardDto.title}</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>${boardDto.contents}</td>
						</tr>
						<%-- <tr>
				<th>등록자</th>
				<td>${boardDto.sel_nm}</td>
			</tr> --%>
						<tr>
							<th>등록 일시</th>
							<td>${boardDto.dt_reg}</td>
						</tr>
					
					</table>
					


				</article>
</div>
</div>
</div>
				<!--include - footer.jsp  -->
		
			</div>
		</div>
	</div>
<%@ include file="/WEB-INF/views/include/front/footer.jsp"%>
</body>
</html>