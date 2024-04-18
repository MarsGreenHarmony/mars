<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>관리자모드- Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link href="/bootstrap/css/styles.css" type="text/css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!--푸터 스크립트 옮김  -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="/js/backoffice/chart-pie-demo.js"></script>
<script src="/js/backoffice/datatables-demo.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
	crossorigin="anonymous"></script>
<script src="/js/backoffice/chart-area-demo.js"></script>
<script src="/js/backoffice/chart-bar-demo.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
	crossorigin="anonymous"></script>
<script src="/js/backoffice/datatables-simple-demo.js"></script>
<script src="/js/backoffice/scripts.js"></script>
<style type="text/css">
.brdInfo {
	font-size: 12px;
	margin: 0px 0px 3px 65px;
	text-align: left;
	color: #999;
}

/* 상단 헤더 테이블 */
table.type_01 {
	border-collapse: collapse;
	width: 80%;
	line-height: 1.5;
	margin: 0 auto;
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
</style>
<!-- 게시판(임시) 클릭 시 하위 요소 토글링 -->
<script>
	// 게시판(임시) 요소를 찾습니다.
	var boardHeading = document.querySelector('.sb-sidenav-menu-heading');

	// 게시판(임시) 요소를 클릭할 때마다 이벤트를 처리합니다.
	boardHeading.addEventListener('click', function() {
		// 하위 요소들의 목록을 가져옵니다.
		var boardLinks = document.querySelectorAll('.nav-link');

		// 각 하위 요소들을 순회하면서 숨김/표시를 토글합니다.
		boardLinks.forEach(function(link) {
			// 현재 요소의 display 속성 값을 확인하여 표시되었는지 확인합니다.
			var isDisplayed = getComputedStyle(link).display !== 'none';

			// 표시 여부를 변경합니다.
			if (isDisplayed) {
				link.style.display = 'none'; // 표시되어 있으면 숨깁니다.
			} else {
				link.style.display = 'block'; // 숨겨져 있으면 표시합니다.
			}
		});
	});
</script>

</head>

<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="/backoffice/main/main">GreenHarmony 관리자화면</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<!-- <form
        class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Search for..."
                aria-label="Search for..." aria-describedby="btnNavbarSearch" />
            <button class="btn btn-primary" id="btnNavbarSearch" type="button">
                <i class="fas fa-search"></i>
            </button>
        </div>
    </form> -->
		<!-- Navbar-->
		<div class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<c:choose>
					<c:when test="${empty sessionScope.ID}">
						<li class="nav-item"><a class="nav-link"
							href="/backoffice/login/loginForm"> <span
								class="stext-102 cl2 hov-cl1 trans-04">로그인</span>
						</a></li>
					</c:when>
					<c:otherwise>
					<li class="nav-item"><span class="nav-link">
								${sessionScope.ID}님</span></li>
						<li class="nav-item"><a class="nav-link"
							href="/backoffice/login/logout">로그아웃</a></li>
						
					</c:otherwise>
				</c:choose>

			</ul>
		</div>
	</nav>

	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">상품관리</div>
						<a class="nav-link" href="/backoffice/backofficeproduct/list">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 판매상품검수
						</a>
						<div class="sb-sidenav-menu-heading">회원관리</div>
						<a class="nav-link collapsed" href="/backoffice/member/sellerlist">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 판매자관리
						</a> <a class="nav-link collapsed"
							href="/backoffice/member/customerlist">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 구매자관리
						</a>
						<!-- 회원관리 레이아웃 -->
						<!-- <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                                </nav>
                            </div> -->
						<!-- 구매자관리 하위댑스 -->
						<!-- <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div> -->
						<div class="sb-sidenav-menu-heading">정산관리</div>
						<a class="nav-link" href="/backoffice/calculate/list">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 판매자정산
						</a> <a class="nav-link" href="/backoffice/calculate/calculate"> </a>
						<!-- <div class="sb-sidenav-menu-heading">게시판(임시)</div>
						<a class="nav-link" href="/backoffice/board/board">게시판</a>
						<a class="nav-link" href="/backoffice/board/qna">QnA</a>
						<a class="nav-link" href="/backoffice/board/event">이벤트</a>
						<a class="nav-link" href="/backoffice/board/notice">공지사항</a>
						</div> -->

						<div class="sb-sidenav-menu-heading">문게시</div>
						<a class="nav-link" href="/common/board/list">공지사항</a> <a
							class="nav-link" href="/common/board/faqlist">자주찾는질문</a> <a
							class="nav-link" href="/common/board/inquiryList">QnA</a>
					</div>

				</div>
			</nav>
		</div>