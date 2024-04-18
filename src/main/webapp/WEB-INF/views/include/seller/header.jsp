<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<nav
	class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
	<div
		class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
		<a class="navbar-brand brand-logo" href="/seller/sellers/main">
		<img style="width: 70%; height: 60%; margin-top: 20px"
			src="/seller/main/logo.png" alt="logo" /></a>
		<a  class="navbar-brand brand-logo-mini" href="index.html">
		<img style="width: 70%; height: 60%; margin-top: 20px"
			src="/seller/main/logo.png" alt="logo" /></a>
	</div>
	<div class="navbar-menu-wrapper d-flex align-items-stretch">
		<button class="navbar-toggler navbar-toggler align-self-center"
			type="button" data-toggle="minimize">
			<span class="mdi mdi-menu"></span>
		</button>
	</div>
</nav>
<!-- partial -->

<div class="container-fluid page-body-wrapper">
	<!-- 왼쪽 메뉴바 쪽 -->
	<!-- partial:partials/_sidebar.html -->
	<nav class="sidebar sidebar-offcanvas" id="sidebar">
		<ul class="nav">
			<li class="nav-item nav-category">Main</li>
			<li class="nav-item"><a class="nav-link" data-toggle="collapse"
				href="#ui-product" aria-expanded="false" aria-controls="ui-basic">
					<span class="icon-bg"><i
						class="mdi mdi-cube menu-icon"></i></span> <span class="menu-title">상품/판매</span>
					<i class="menu-arrow"></i>
			</a>
				<div class="collapse" id="ui-product">
					<ul class="nav flex-column sub-menu">
						<li class="nav-item"><a class="nav-link"
							href="/seller/product/list">상품 관리</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/seller/sale/list">판매
								관리</a></li>
					</ul>
				</div></li>
			<li class="nav-item"><a class="nav-link" data-toggle="collapse"
				href="#ui-oder" aria-expanded="false" aria-controls="ui-oder">
					<span class="icon-bg"><i
						class="mdi mdi-jeepney menu-icon"></i></span> <span class="menu-title">주문/배송</span>
					<i class="menu-arrow"></i>
			</a>
				<div class="collapse" id="ui-oder">
					<ul class="nav flex-column sub-menu">
						<li class="nav-item"><a class="nav-link"
							href="/seller/order/orderlist">주문/배송
								관리</a></li>
						
					</ul>
				</div></li>
			<li class="nav-item"><a class="nav-link" data-toggle="collapse"
				href="#ui-a" aria-expanded="false" aria-controls="ui-a">
					<span class="icon-bg"><i
						class="mdi mdi-chart-bar menu-icon"></i></span> <span class="menu-title">매출관리</span>
					<i class="menu-arrow"></i>
			</a>
				<div class="collapse" id="ui-a">
					<ul class="nav flex-column sub-menu">
						<li class="nav-item"><a class="nav-link"
							href="/seller/order/revenue?start=2023&end=2024">매출
								현황</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/seller/order/calList">정산
								상태</a></li>
					</ul>
				</div></li>

			<!-- <li class="nav-item">
              <a class="nav-link" href="pages/forms/basic_elements.html">
                <span class="icon-bg"
                  ><i class="mdi mdi-format-list-bulleted menu-icon"></i
                ></span>
                <span class="menu-title">정산</span>
              </a>
            </li> -->
			<!-- <li class="nav-item"><a class="nav-link"
				href="pages/charts/chartjs.html"> <span class="icon-bg"><i
						class="mdi mdi-chart-bar menu-icon"></i></span> <span class="menu-title">Charts</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="pages/tables/basic-table.html"> <span class="icon-bg"><i
						class="mdi mdi-table-large menu-icon"></i></span> <span
					class="menu-title">Tables</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="collapse"
				href="#auth" aria-expanded="false" aria-controls="auth">
					<span class="icon-bg"><i
						class="mdi mdi-lock menu-icon"></i></span> <span class="menu-title">User
						Pages</span> <i class="menu-arrow"></i>
			</a>
				<div class="collapse" id="auth">
					<ul class="nav flex-column sub-menu">
						<li class="nav-item"><a class="nav-link"
							href="pages/samples/blank-page.html"> Blank Page </a></li>
						<li class="nav-item"><a class="nav-link"
							href="pages/samples/login.html"> Login </a></li>
						<li class="nav-item"><a class="nav-link"
							href="pages/samples/register.html"> Register </a></li>
						<li class="nav-item"><a class="nav-link"
							href="pages/samples/error-404.html"> 404 </a></li>
						<li class="nav-item"><a class="nav-link"
							href="pages/samples/error-500.html"> 500 </a></li>
					</ul>
				</div></li>
			<li class="nav-item documentation-link"><a class="nav-link"
				href="http://www.bootstrapdash.com/demo/connect-plus-free/jquery/documentation/documentation.html"
				target="_blank"> <span class="icon-bg"> <i
						class="mdi mdi-file-document-box menu-icon"></i>
				</span> <span class="menu-title">Documentation</span>
			</a></li> -->
			<br>
			<br>
			<br>
			<br>
			<li class="nav-item sidebar-user-actions">
				<div class="user-details">
					<div class="d-flex justify-content-between align-items-center">
						<div>
							<div class="d-flex align-items-center">
								<!-- <div class="sidebar-profile-img">
									<img src="/seller/sellers/main/assets/images/faces/face28.png"
										alt="image" />
								</div> -->
								<div class="sidebar-profile-text">
									<p class="mb-1">${sessionScope.CORP_NM}님 반갑습니다</p>
								</div>
							</div>
						</div>
						<!-- <div class="badge badge-danger">3</div> -->
					</div>
				</div>
			</li>
			<!-- <li class="nav-item sidebar-user-actions">
				<div class="sidebar-user-menu">
					<a href="#" class="nav-link"><i
						class="mdi mdi-settings menu-icon"></i> <span class="menu-title">Settings</span>
					</a>
				</div>
			</li>
			<li class="nav-item sidebar-user-actions">
				<div class="sidebar-user-menu">
					<a href="#" class="nav-link"><i
						class="mdi mdi-speedometer menu-icon"></i> <span
						class="menu-title">Take Tour</span></a>
				</div>
			</li> -->
			<li class="nav-item sidebar-user-actions">
				<div class="sidebar-user-menu">
					<a href="/seller/login/logout" class="nav-link"><i
						class="mdi mdi-logout menu-icon"></i> <span class="menu-title">로그아웃</span></a>
				</div>
			</li>
		</ul>
	</nav>
	