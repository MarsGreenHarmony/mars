<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" type="text/css" href="/customer/delete.css">
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
<body class="animsition">
	<%@ include file="/WEB-INF/views/include/front/header.jsp"%>
	<meta charset="utf-8">
	<meta http-equiv="Content-Script-Type" content="text/javascript">
	<meta http-equiv="Content-Style-Type" content="text/css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" type="text/css" href="mypage.css">
	<link rel="stylesheet" type="text/css" href="delete.css">
	<meta property="og:type" content="website">
	<meta property="og:title" content="마이페이지">
	<meta property="og:url"
		content="https://www.oliveyoung.co.kr/store/main/main.do">
	<meta property="og:image" content="">
</head>

<style>
.mypage_zone_tit h3 {
	display: inline-block;
	font-size: 16px;
	text-align: center;
}
</style>

<div id="Container">

	<div id="Contents">


  <div class="mypage-head rate_05">
         <h1 class="tit"><a href="/front/buy/orderList">마이페이지</a></h1>
         
         <div class="grd-box">
            <div class="info_user clrfix">
               
               <div class="thum">
                 
                  
               </div>
               
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
                  <li><h2>쇼핑 정보</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/buy/orderList" >주문/배송 조회</a></li>
                      
                     <li class="subMenu"><a href="/front/buy/cart">장바구니</a></li>
                  <li class="subMenu"><a href="/front/customer/like" >좋아요</a></li>
                     </ul>
             
                  <li><h2>나의 상품 후기</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/customer/review">나의 상품 후기</a></li>
                       
                     </ul>
                  </li>
              <li><h2>고객 센터</h2>
               <ul>
                  <li class="subMenu"><a href="/front/customer/inquiryForm">1:1문의하기</a></li>
                  <li class="subMenu on"><a href="/front/customer/inquirylist">나의 문의 내역</a></li>
                     <li class="subMenu"><a href="/common/board/faqlist">자주 찾는 질문</a></li>
               
               
               </ul>
             </li>
                  <li><h2>회원 정보</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/customer/modifyForm">회원정보 변경</a></li>
                        <li class="subMenu"><a href="/front/delivery/deliveryForm" >배송지 관리</a></li>
                        <li class="subMenu"><a href="/front/customer/deleteForm">회원탈퇴</a></li>
                     </ul>
                  </li>
               </ul>
            </div>
            <!-- //마이페이지 SUB 메뉴 -->
			<!-- //마이페이지 SUB 메뉴 -->

			<!-- //마이페이지 SUB -->
			<script
				src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.side.js?dumm=20240227003"></script>
			<script>
  
   });
</script>

			<div class="mypage-conts">
				<script
					src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.header.js?dumm=20240227003"></script>
				<script>
               $(window).ready(function(){
                  mypage.header.init();
               });
            </script>


				<style>

<style>

article {
	flex-basis: 100%;
	padding: 50px
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

.mt-4 {
	border-bottom: solid 1px #ccc;
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

.mypage-lnb li h2{
 font-weight: bolder;
 }
</style>

				
				<div id="layoutSidenav_content">
					<main>
						<div class="container-fluid px-4">
							<h1 class="mt-4">나의 문의 내역</h1>

						</div>
					</main>
					<input type="hidden" name="cd_bbs_type" value="${boardDto.cd_bbs_type}" /> <input type="hidden"
						name="seq_bbs" value="${boardDto.seq_bbs}" />
					<div id="layoutSidenav_content">
						<div>
							<div>
								<main>
									<div class="container-fluid px-4"></div>
								</main>
								<article>
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
										<tr>
											<th>답변</th>
											<td>${boardDto.contents_reply}</td>
										</tr>
									</table>
									 <a class="btnBasic" href="/front/customer/inquirylist"> 목록 </a>


								</article>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/include/front/footer.jsp"%>
</body>
</html>