<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Blog</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<!-- <link rel="icon" type="image/png" href="/bootstrap/images/icons/favicon.png" /> -->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/bootstrap/css/util.css">
<link rel="stylesheet" type="text/css" href="/bootstrap/css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">
	<%@ include file="/WEB-INF/views/include/front/header.jsp"%>


	<!-- Content page -->
	<section class="bg0 p-t-62 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-45 p-r-0-lg">
						<!-- item blog -->
						<div class="p-b-63">
							<a style="width:100%; height: 300px; display: block;" href="/front/main/blogdetail" class="hov-img0 how-pos5-parent">
								<img src="/front/main/blog1.jpg" alt="IMG-BLOG">
							</a>

							<!-- 이벤트 페이지 상품시작  -->
							<div class="p-t-32">
								<h4 class="p-b-15">
									<!-- 기존  -->
									<a href="/front/main/blogdetail" class="ltext-108 cl2 hov-cl1 trans-04">
										"💚그린하모니가 픽한 이달의그린픽💚" </a>
								</h4>

								<p class="stext-117 cl6">"♥온오프라인에서 만나보세요♥"</p>

								<div class="flex-w flex-sb-m p-t-18">
									<span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
										<span> <span class="cl4">이벤트기간</span> 2024-03-14 <span
											class="cl12 m-l-4 m-r-6">~</span>
									</span> <span> 2024-12-14 <span
											class="cl12 m-l-4 m-r-6"></span>
									</span> 
									</span> 
									
									<!-- <a href="blog-detail.html"
										class="stext-101 cl2 hov-cl1 trans-04 m-tb-10"> 계속읽기
										<i class="fa fa-long-arrow-right m-l-9"></i>
									</a> -->
								</div>
							</div>
						</div>

						<!-- item blog -->
						<div class="p-b-63">
							<a href="blog-detail.html" class="hov-img0 how-pos5-parent">
								<img src="/front/main//blog2.jpg" alt="IMG-BLOG">
							</a>

							<div class="p-t-32">
								<h4 class="p-b-15">
									<a href="blog-detail.html"
										class="ltext-108 cl2 hov-cl1 trans-04"> "💚그린하모니 이달의 할인상품💚"</a>
								</h4>

								<p class="stext-117 cl6">"♥온오프라인에서 만나보세요♥"</p>

								<div class="flex-w flex-sb-m p-t-18">
									<span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
										<span> <span class="cl4">이벤트기간</span> 2024-03-14 <span
											class="cl12 m-l-4 m-r-6">~</span>
									</span> <span> 2024-12-14 <span
											class="cl12 m-l-4 m-r-6"></span>
									</span> 
									</span> 
									
									<!-- <a href="blog-detail.html"
										class="stext-101 cl2 hov-cl1 trans-04 m-tb-10"> Continue
										Reading <i class="fa fa-long-arrow-right m-l-9"></i>
									</a> -->
								</div>
							</div>
						</div>

						<!-- item blog -->
						<div class="p-b-63">
							<a href="blog-detail.html" class="hov-img0 how-pos5-parent">
								<img src="/front/main//blog3.jpg" alt="IMG-BLOG">

							</a>

							<div class="p-t-32">
								<h4 class="p-b-15">
									<a href="blog-detail.html"
										class="ltext-108 cl2 hov-cl1 trans-04"> "💚그린하모니 패키지 상품💚"</a>
								</h4>

								<p class="stext-117 cl6">"♥온오프라인에서 만나보세요♥"</p>

								<div class="flex-w flex-sb-m p-t-18">
									<span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
										<span> <span class="cl4">이벤트기간</span> 2024-03-14 <span
											class="cl12 m-l-4 m-r-6">~</span>
									</span> <span> 2024-12-14 <span
											class="cl12 m-l-4 m-r-6"></span>
									</span> 
									</span> 
									<!-- <a href="blog-detail.html"
										class="stext-101 cl2 hov-cl1 trans-04 m-tb-10"> Continue
										Reading <i class="fa fa-long-arrow-right m-l-9"></i>
									</a> -->
								</div>
							</div>
						</div>

						<!-- Pagination -->
						<div class="flex-l-m flex-w w-full p-t-10 m-lr--7">
							<a href="#"
								class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1">
								1 </a> <a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7">
								2 </a>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-lg-3 p-b-80">
					<div class="side-menu">
						<div class="bor17 of-hidden pos-relative">
							<input class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55"
								type="text" name="search" placeholder="Search">

							<button
								class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04">
								<i class="zmdi zmdi-search"></i>
							</button>
						</div>

						<div class="p-t-55">
							<h4 class="mtext-112 cl2 p-b-33">카테고리</h4>

							<ul>
								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										스킨케어 </a></li>

								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										바디케어 </a></li>

								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										헤어케어 </a></li>

								<li class="bor18"><a href="#"
									class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										클렌징 </a></li>

															</ul>
						</div>

						<!-- <div class="p-t-65">
							<h4 class="mtext-112 cl2 p-b-33">추천상품</h4>

							<ul>
								<li class="flex-w flex-t p-b-30"><a href="#"
									class="wrao-pic-w size-214 hov-ovelay1 m-r-20"> <img
										src="images/product-min-01.jpg" alt="PRODUCT">
								</a>

									<div class="size-215 flex-col-t p-t-8">
										<a href="#" class="stext-116 cl8 hov-cl1 trans-04"> White
											Shirt With Pleat Detail Back </a> <span
											class="stext-116 cl6 p-t-20"> $19.00 </span>
									</div></li>

								<li class="flex-w flex-t p-b-30"><a href="#"
									class="wrao-pic-w size-214 hov-ovelay1 m-r-20"> <img
										src="images/product-min-02.jpg" alt="PRODUCT">
								</a>

									<div class="size-215 flex-col-t p-t-8">
										<a href="#" class="stext-116 cl8 hov-cl1 trans-04">
											Converse All Star Hi Black Canvas </a> <span
											class="stext-116 cl6 p-t-20"> $39.00 </span>
									</div></li>

								<li class="flex-w flex-t p-b-30"><a href="#"
									class="wrao-pic-w size-214 hov-ovelay1 m-r-20"> <img
										src="images/product-min-03.jpg" alt="PRODUCT">
								</a>

									<div class="size-215 flex-col-t p-t-8">
										<a href="#" class="stext-116 cl8 hov-cl1 trans-04"> Nixon
											Porter Leather Watch In Tan </a> <span
											class="stext-116 cl6 p-t-20"> $17.00 </span>
									</div></li>
							</ul>
						</div> -->

						<!-- <div class="p-t-55">
							<h4 class="mtext-112 cl2 p-b-20">Archive</h4>

							<ul>
								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> July 2018 </span> <span> (9) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> June 2018 </span> <span> (39) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> May 2018 </span> <span> (29) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> April 2018 </span> <span> (35) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> March 2018 </span> <span> (22) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> February 2018 </span> <span> (32) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> January 2018 </span> <span> (21) </span>
								</a></li>

								<li class="p-b-7"><a href="#"
									class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
										<span> December 2017 </span> <span> (26) </span>
								</a></li>
							</ul>
						</div> -->

						<!-- <div class="p-t-50">
							<h4 class="mtext-112 cl2 p-b-27">Tags</h4>

							<div class="flex-w m-r--5">
								<a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Fashion </a> <a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Lifestyle </a> <a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Denim </a> <a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Streetstyle </a> <a href="#"
									class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Crafts </a>
							</div>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/bootstrap/js/popper.js"></script>
	<script src="/bootstrap/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="/bootstrap/js/main.js"></script>
	<%@ include file="/WEB-INF/views/include/front/footer.jsp"%>
</body>
</html>