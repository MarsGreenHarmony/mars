<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">




<link rel="stylesheet" type="text/css"
	href="https://oypartner.cj.net/CJOYP/css/jquery/plugins/jquery-ui/themes/smoothness/jquery-ui.min.css"
	media="screen">
<link rel="stylesheet" type="text/css"
	href="https://oypartner.cj.net/CJOYP/css/common/common.css"
	media="screen">
<link rel="stylesheet" type="text/css"
	href="https://oypartner.cj.net/CJOYP/css/prvsusr/common.css"
	media="screen">
<link rel="stylesheet" type="text/css"
	href="https://oypartner.cj.net/CJOYP/css/common/loadingimg.css"
	media="screen">





<!-- <script type="text/javascript">
var CONST = {
	CONTEXT_PATH: "/CJOYP",
	G_LANGUAGE: '', 
	USER_ID: "", 
	IMG_PATH_LOADER: 'https://oypartner.cj.net/CJOYP/images/ajax-loader.gif' 
}
// 스크립트에서 message를 사용하기 위한 처리

</script>



<script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/common/json2.js" charset="utf-8"></script>
<script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/jquery/jquery.js" charset="utf-8"></script>
<script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/prvsusr/jquery-ui.min.js" charset="utf-8"></script>
<script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/jquery/plugins/jquery.blockUI.js"></script>
<script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/jquery/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/jquery/plugins/jquery-ui/jquery-ui-custom.js" charset="utf-8"></script>
<script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/common/frameone-common.js" charset="utf-8"></script>
<script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/prvsusr/slider.js" charset="utf-8"></script>
<script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/prvsusr/common.js" charset="utf-8"></script> -->

</head>
<style>

.banner_menu {

width:171px;

}

</style>
<body>
	<!-- skip navigation -->
	<div id="skipnavigation">
		<ul>
			<li><a href="#content">본문 바로가기</a></li>
			<li><a href="#gnb">주 메뉴 바로가기</a></li>
			<li><a href="#footer">하단 메뉴 바로가기</a></li>
		</ul>
	</div>
	<!-- //skip navigation -->

	<!-- wrap -->
	<div id="wrap">

		<!-- header -->
		<div id="header">

			<div id="header_son">

				<!-- logo area -->
				<h1 style="top: 0">
					<a href="/seller/main/main" title="메인페이지"> <img
						style="width: 250px; height: 100px;" src="/seller/main/logo.png"
						alt="GREEN HARMONY"></a>
				</h1>
				<!-- //logo area -->

				<!-- 기본메뉴 -->
				<div class="bnb">
					<h2 class="blind">기본메뉴</h2>
					<ul>



						<%-- <li><a href="/seller/login/loginForm">로그인 &nbsp;&nbsp;|</a></li>
						<li><a href="/seller/sellers/register">회원가입</a></li>&nbsp;&nbsp;&nbsp;

						<!-- 세션적용(세션이있으면)  -->
						<c:if test="${not empty sessionScope.ID}">

							<a href="/seller/login/logout">로그아웃</a>	

						</c:if> --%>
						<c:choose>

							<c:when test="${empty sessionScope.ID}">
								<li><a href="/seller/login/loginForm">로그인 &nbsp;&nbsp;|</a></li>
								<li><a href="/seller/sellers/register">회원가입</a></li>&nbsp;&nbsp;&nbsp;
						
							</c:when>
							<c:otherwise>
								<a href="/seller/login/logout">로그아웃</a>
							</c:otherwise>
						</c:choose>


					</ul>
				</div>
				<!-- //기본메뉴 -->

				<!-- gnb -->
				<div class="gnb">
					<h2 class="blind">OLIVE YOUNG 제휴사이트 주요 공통메뉴</h2>
					<ul>
						<li><a href="/seller/login/loginForm" class="gnb_01"><span
								class="blind">상품입점 및 제휴 문의</span></a></li>
					
					</ul>
				</div>
				<!-- //gnb -->

			</div>
		</div>
		<!-- //header -->

		<!-- container -->
		<div id="container" class="main">

			<!-- content -->
			<div id="content">

				<!-- visual -->
				<div id="" class="visual">
					<h2 class="blind">그린하모니 홍보배너 영역</h2>
					<ul>
						<li><img src="/seller/main/sellemain.png"
							alt="자연의 아름다움은 지구를 사랑하고 지속 가능한 미래를 추구하는 친환경 화장품 브랜드입니다. 우리는 화장품이 환경과 인간에게 미치는 영향에 대해 심각하게 고민하며, 이를 해결하기 위해 최상의 제품을 만들기 위해 노력합니다."></li>
						<!--  <li><img src="/CJOYP/images/prvsusr/visual_02.png" alt="온라인몰 No.1 헬스&lt;뷰티 스토어 그린하모니과 함께할 WIN-WIN 파트너를 찾습니다. 그린하모니에서는 제휴사의 많은 지원을 기다립니다." /></li>-->
					</ul>
				</div>
				<!-- //visual -->

				<!-- banner menu -->
				<div style="height: 217px" class="banner_menu">
					<h2 class="blind">서비스 바로가기 메뉴</h2>
					<ul>
						<li class="banner_menu_01"><a href="/seller/login/loginForm"><span
								class="blind">상품입점 / 제휴 문의</span></a></li>
					


<!-- 
						<li class="banner_menu_03_off"><span class="blind">전자계약</span></li>



						<li class="banner_menu_04"><a href="/CJOYP/nexacro/main.fo"><span
								class="blind">파트너 시스템</span></a></li> -->
					</ul>
				</div>
				<!-- //banner menu -->

				<!-- join process -->
				<!-- <div class="join_process">
					<h2>
						<img src="/seller/main/tj.png" alt="OliveYoung 입점 절차 안내">
					</h2>
					<ul>
						<li><img src="/seller/main/jp1.png"
							alt="1단계 : 임시회원가입 - 미거래 업체는 임시회원 가입/로그인 후 상담신청을 하실 수 있습니다."></li>
						<li><img src="/seller/main/jp2.png"
							alt="2단계 : 온라인 상담 - 그린하모니 입점/제휴를 위해서는 온라인 상담이 선행되어야 합니다. 상담 문의 후 사이트를 통해 결과를 안내해 드립니다."></li>
						<li><img src="/seller/main/jp3.png"
							alt="3단계 : 방문상담 - 온라인 상담이 긍정적일 경우, 담당MD/제휴담당자와 구체적인 상담을 진행하게 됩니다. 편안한 상담을 위해 상담실을 운영하고 있습니다. "></li>
						<li><img src="/seller/main/jp4.png"
							alt="4단계 : 품평회 - 공정한 평가를 위해 상품력, 기획력, 영업력, 판촉력 등의 항목을 기준으로 내부 품평회를 진행합니다."></li>
						<li><img src="/seller/main/jp5.png"
							alt="5단계 : 신용평가- 입점확정 협력사의 경우 신뢰있는 거래를 위해 신용평가를 받고 있습니다."></li>
						<li><img src="/seller/main/jp6.png"
							alt="6단계 : 계약체결- 전자계약서(또는 수기계약서)를 통해 거래계약서와 관련서류를 작성하시면 입점절차가 완료됩니다."></li>
					</ul>
				</div> -->
				<!-- //join process -->

				 <div class="join_process2" style="background: none;">
					<!-- <h2>
						<img src="/seller/main/ji.png" alt="협력사 ID 발급안내">
					</h2>
					<p>
						<img src="/seller/main/join_id.png">
					</p>  -->
				</div>



			</div>
			<!-- //content -->

		</div>
		<!-- //container -->
	</div>
	<!-- //wrap -->

	<!-- footer -->



	<div id="footer">
		<div id="footer_son">

			<!-- 푸터 로고 -->
			<!-- <p class="logo_footer"><a href="/CJOYP/prvsuser/index/index.fo" title="main"><img src="/CJOYP/images/prvsusr/logo_footer.png" alt="OLIVE YOUNG" /></a></p> -->
			<p class="logo_footer">
				<img src="/seller/main/logo2.png" alt="GRREN HARMONY">
			</p>
			<!-- //푸터 로고 -->

			<!-- footer info -->
			<div class="footer_info">
				<p class="cs">
					<a href="http://www.oliveyoung.co.kr/store/company/brandStory.do"
						target="_blank"><font color="#CBCACA">그린하모니 소개</font></a> | <a
						href="http://www.oliveyoung.co.kr/store/company/privacy.do"
						target="_blank"><font color="#91C348"><b>개인정보처리방침</b></font></a>
				</p>
				<br>
				<!-- 고객센터  -->
				<p class="cs">
					그린하모니㈜ | 주소 : (04323) 서울특별시 용산구 한강대로 372, 24층 (동자동, KDB타워) |
					사업자등록번호 : 809-81-01574<br> 대표이사 : 이건호 | 고객센터 : 1577~4887 (평일
					9:00~18:00)
				</p>
				<!-- //고객센터 -->
				<!-- copyright -->
				<p class="cs">Copyright ⓒ 2016 CJ OliveYoung. All rights
					reserved.</p>
				<!-- //copyright -->

				<div>
					<a href="/backoffice/login/loginForm">A D</a>
				</div>


			</div>
			<!-- //footer info -->

		</div>
	</div>
	<!-- //footer -->
</body>
</html>