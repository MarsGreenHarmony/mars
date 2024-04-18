<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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





<script type="text/javascript">
	var CONST = {
		CONTEXT_PATH : "/CJOYP",
		G_LANGUAGE : '',
		USER_ID : "",
		IMG_PATH_LOADER : 'https://oypartner.cj.net/CJOYP/images/ajax-loader.gif'
	}
	// 스크립트에서 message를 사용하기 위한 처리
</script>

<script>
	//개발서버로그인 front/js
	function checkLogin() {
		

			var frmMain = document.getElementById("frmMain");
			frmMain.action = "/seller/login/loginProc";
			frmMain.submit();
			
	}
</script>


<script type="text/javascript"
	src="https://oypartner.cj.net/CJOYP/js/common/json2.js" charset="utf-8"></script>
<script type="text/javascript"
	src="https://oypartner.cj.net/CJOYP/js/jquery/jquery.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="https://oypartner.cj.net/CJOYP/js/prvsusr/jquery-ui.min.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="https://oypartner.cj.net/CJOYP/js/jquery/plugins/jquery.blockUI.js"></script>
<script type="text/javascript"
	src="https://oypartner.cj.net/CJOYP/js/jquery/plugins/jquery.cookie.js"></script>
<script type="text/javascript"
	src="https://oypartner.cj.net/CJOYP/js/jquery/plugins/jquery-ui/jquery-ui-custom.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="https://oypartner.cj.net/CJOYP/js/common/frameone-common.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="https://oypartner.cj.net/CJOYP/js/prvsusr/slider.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="https://oypartner.cj.net/CJOYP/js/prvsusr/common.js"
	charset="utf-8"></script>

</head>
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
				<h1 style="top:0">
					<a href="/seller/main/main" title="메인페이지">
					<img style="width: 250px; height: 100px;" src="/seller/main/logo.png" alt="GREEN HARMONY"></a>
				</h1>
				<!-- //logo area -->

				<!-- 기본메뉴 -->
				<div class="bnb">
					<h2 class="blind">기본메뉴</h2>
					<ul>



						<li><a href="/seller/login/loginForm">로그인 &nbsp;&nbsp;|</a></li>
						<li><a href="/seller/sellers/register">회원가입</a></li>



					</ul>
				</div>
				<!-- //기본메뉴 -->

				<!-- gnb -->
				<div class="gnb">
					<h2 class="blind">OLIVE YOUNG 제휴사이트 주요 공통메뉴</h2>
					<ul>
						<li><a
							href="/CJOYP/prvsuser/advicerequest/partnershipinquiry.fo"
							class="gnb_01"><span class="blind">상품입점 및 제휴 문의</span></a></li>
						<li><a
							href="/CJOYP/prvsuser/advicerequest/advicerequestlist.fo"
							class="gnb_02"><span class="blind">문의 결과 조회</span></a></li>
						<!-- <li><a href="#" onclick="window.open('/CJOYP/prvsuser/elecContLink/elecContLink.fo', '_blank')" class="gnb_04"><span class="blind">전자계약</span></a></li> -->




						<li><span class="gnb_04_off"><span class="blind">전자계약
									시스템</span></span></li>


					</ul>
				</div>
				<!-- //gnb -->

			</div>
		</div>
		<!-- //header -->

		<!-- container -->
		<div id="container">

			<!-- content -->
			<div id="content">

				<!-- present page -->
				<p class="present_page">
					<span class="home"><a href="/CJOYP/prvsuser/index/index.fo">Home</a></span>
					<span>&gt;</span> <span>로그인</span>
				</p>
				<!-- //present page -->

				<!-- content area -->
				<div class="content login">
					<div style="padding-left: 248px;">
						<!-- content title -->
						<h2 class="content_title2">
							<img src="/seller/main/tt_login.png" alt="로그인">
						</h2>
						<!-- //content title -->

						<!-- content body -->
						<div class="content_body">

							<!-- form -->
							<div  class="form_login">
								<form id="frmMain" action="/seller/login/loginProc" id="login" name="login" method="post">
									<table border="0">
										<colgroup>
											<col width="70px">
											<col width="200px">
											<col width="100px">
										</colgroup>
										<tbody>
											<tr>
												<td><label for="login_id">아이디</label></td>
												<td><input type="text" id="id" name="id"
													maxlength="12" tabindex="1" value=""></td>
												<td rowspan="2">
													<p class="btn_login" id="loginButton" tabindex="4">
														<a href="#" onclick="javascript:checkLogin()">로그인</a>
													</p>
												</td>
											</tr>
											<tr>
												<td><label for="login_pw">비밀번호</label></td>
												<td><input type="password" id="passwd"
													name="passwd" maxlength="12" tabindex="2" value="778477" onkeydown="if (event.keyCode==13) checkLogin();"/></td>
											</tr>

											<tr>
												<td></td>
												<td class="id_pw_search">
													<p tabindex="5">
														<a href="/CJOYP/prvsuser/popuppw/popuppw.fo"
															onclick="newWindow(this.href, 'popup', 500, 330, 1, 1, 1, 0, 0, 1, 0); return false;"
															target="_blank">비밀번호찾기</a>
													</p>
													<p tabindex="6">
														<a href="/seller/sellers/register">회원가입</a>
													</p>
												</td>
												<td></td>
											</tr>
										</tbody>
									</table>
								</form>
							</div>
							<!-- //form -->

							<!-- direction -->
							<ul class="direction">
								<li>회원 가입을 통해 로그인하여 입점/제휴 문의를 등록해주세요.</li>
								<li>비밀번호가 생각나지 않을 경우, 비밀번호 찾기를 클릭하세요.</li>
								<li>협력사회원으로 기등록 되어 있는 경우, 그린 하모니 파트너시스템 사이트를 통해 업무시스템을 이용하세요.<br>
								</li>
								<li>홈페이지 회원 : 홈페이지만 이용 가능합니다.(상품입점/제휴문의, 문의결과 조회, 입점 시
									전자계약시스템 이용)<br> 협력사회원 : 파트너시스템, 전자계약시스템을 모두 이용하실 수 있습니다.
								</li>

							</ul>
							<!-- //direction -->

						</div>
						<!-- //content body -->
					</div>
				</div>
				<!-- //content area -->


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
					사업자등록번호 : 809-81-01574<br> 대표이사 : 이선정 | 고객센터 : 1577~4887 (평일
					9:00~18:00)
				</p>
				<!-- //고객센터 -->
				<!-- copyright -->
				<p class="cs">Copyright ⓒ 2016 CJ OliveYoung. All rights
					reserved.</p>
				<!-- //copyright -->

			</div>
			<!-- //footer info -->

		</div>
	</div>
	<!-- //footer -->






</body>
</html>