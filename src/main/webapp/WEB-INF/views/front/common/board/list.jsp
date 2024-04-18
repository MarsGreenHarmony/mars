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
.layer_wrap_cont {
	display: none; /* 초기에는 숨깁니다. */
	position: absolute;
	margin: 0;
	top: 50%; /* 화면 세로 중앙에 배치 */
	left: 50%; /* 화면 가로 중앙에 배치 */
	transform: translate(-50%, -50%);
	background-color: #fff;
	border: 1px solid #ccc;
	padding: 20px;
	z-index: 9999; /* 다른 요소 위에 표시 */
}

.delivery_add_layer .layer_wrap_cont {
	width: 690px;
}

.layer_wrap .layer_wrap_cont {
	position: relative;
	border: 2px solid #555555;
	background: #ffffff;
}

.layer_wrap_cont {
	width: 690px;
	height: 450px;
}

.left_table_type td {
	padding: 10px 10px 10px 15px;
}

.left_table_type .postcode input {
	background: #979797;
	width: 100px;
	color: #FFF;
	font-weight: bold;
	margin-left: 20px;
}

#addr2 {
	width: 250px; /* 너비를 원하는 값으로 조정 */
}

#addr1 {
	margin-top: -6px;
}

.mypage_table_type td {
	height: 150px;
	border-top: 1px solid #dbdbdb;
}

.mypage_table_type th {
	text-align: center;
}

button {
	border: 1px solid #ccc;
	background-color: #fff;
	padding: 10px 20px; /* 원하는 패딩 값으로 조절하세요 */
	font-size: 10px; /* 원하는 글꼴 크기로 조절하세요 */
	cursor: pointer;
}

.board-list-2s{
 
	width:80%;
	margin-bottom:50px

}
.board-list-2s tr th{
	text-align:center;
}
.board-list-2s tr th{
border-left: 1px solid #dbdbdb;
border-right: 1px solid #dbdbdb;

}
</style>


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
								<li class="subMenu on"><a href="/common/board/list">공지사항</a></li>
								<li class="subMenu"><a href="/common/board/faqlist">자주찾는 질문</a></li>
								
							</ul>
				</div>
				<div class="container-fluid px-4">
			<h1 class="mt-4">공지 사항</h1>
			
		</div>
				<table class="board-list-2s mgT20">
					<colgroup>
						<col style="width: 8%;">
						<col style="width: 45%;">
						<col style="width: 17%;">
					</colgroup>
					<thead>
						<tr>
							<tr>
							<th>NO</th>
						<th>내용</th>
						<!-- <th>등록자</th> -->
						<th>등록일시</th>
					</tr>
					</thead>
					<tbody style="line-height: 2.5;">
				<c:forEach items="${list}" var="item">
				<tr>
					
					<td>${item.seq_bbs}</td>
					<td style="text-align: left"><a href="/common/board/view?seq_bbs=${item.seq_bbs}">${item.title}</a></td> 
					<td>${item.dt_reg}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
			</div>
			<%-- <a href="/common/board/writeForm?cd_bbs_type=${paging.cd_bbs_type}" class="btnBasic"> 등록 </a> --%>
		</div>
	</div>

<%@ include file="/WEB-INF/views/include/front/footer.jsp"%>
</body>
</html>
