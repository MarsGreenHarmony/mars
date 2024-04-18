<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>GreenHarmony</title>
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

<style type="text/css">
#mainX{
	display: none;
}

wrap-slick1-dots ul li img{
	height: 126.66px;
}


</style>

</head>

<body class="animsition">

	<%@ include file="/WEB-INF/views/include/front/header.jsp"%>


	<!-- 화면 최상단 슬라이드 부분 -->
	<!-- Slider -->
	<section class="section-slide">
		<div class="wrap-slick1 rs2-slick1">
			<div class="slick1">
				<!-- 사진 하나마다 해당사진에 커서를 올리거나 해당 사진이 보여질때 뜨는 문구를 data-caption쪽 수정하여 변경 -->
				<!-- div박스마다 글씨가 보여지는 액션이 다르기때문에 사진이나 문구를 더할때 참고 -->
				<div class="item-slick1 bg-overlay1"
					style="background-image: url(/bootstrap/images/mainproduct4.jpg);"
					data-thumb="/bootstrap/images/mainproduct4.jpg"
					data-caption="">
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="fadeInDown" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2"> 친환경 화장품
									오픈마켓 </span>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="fadeInUp" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
									Green Harmony</h2>
							</div>

							<!-- <div class="layer-slick1 animated visible-false"
								data-appear="zoomIn" data-delay="1600">
								<a href="product.html"
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									자세히 보기 </a>
							</div> -->
						</div>
					</div>
				</div>

				<div class="item-slick1 bg-overlay1"
					style="background-image: url(/bootstrap/images/mainproduct3.jpg);"
					data-thumb="/bootstrap/images/mainproduct3.jpg"
					data-caption="Green Harmony">
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="rollIn" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2"> 친환경 화장품
									오픈마켓 </span>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="lightSpeedIn" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
									Green Harmony</h2>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="slideInUp" data-delay="1600">
								<a href="product.html"
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									자세히 보기 </a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1 bg-overlay1"
					style="background-image: url(/bootstrap/images/mainproduct2.jpg);"
					data-thumb="/bootstrap/images/mainproduct2.jpg"
					data-caption="Green Harmony">
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="rotateInDownLeft" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2"> 친환경 화장품
									오픈마켓 </span>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="rotateInUpRight" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
									Green Harmony</h2>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="rotateIn" data-delay="1600">
								<a href="product.html"
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									자세히 보기 </a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 슬라이드 목록 보여주는 박스 -->
			<div class="wrap-slick1-dots p-lr-10"></div>
		</div>
	</section>


	<!-- 사진있는 배너부분(보류) -->
	<!-- Banner -->
	<div class="sec-banner bg0">
		<div class="flex-w flex-c-m">
			<div class="size-202 m-lr-auto respon4">
				<!-- Block1 -->
				<div class="block1 wrap-pic-w">
					<img src="/bootstrap/images/haircare.jpg" alt="IMG-BANNER"> <a
						href="/front/buy/list?category1=1"
						class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
						<div class="block1-txt-child1 flex-col-l">
							<span class="block1-name ltext-102 trans-04 p-b-8"> 헤어케어 </span>
							<span class="block1-info stext-102 trans-04"> hair care </span>
						</div>

						<div class="block1-txt-child2 p-b-4 trans-05">
							<div class="block1-link stext-101 cl0 trans-09">상품 보기</div>
						</div>
					</a>
				</div>
			</div>

			<div class="size-202 m-lr-auto respon4">
				<!-- Block1 -->
				<div class="block1 wrap-pic-w">
					<img src="/bootstrap/images/skincare.jpg" alt="IMG-BANNER"> <a
						href="/front/buy/list?category1=2"
						class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
						<div class="block1-txt-child1 flex-col-l">
							<span class="block1-name ltext-102 trans-04 p-b-8"> 스킨케어 </span>
							<span class="block1-info stext-102 trans-04"> skin care </span>
						</div>

						<div class="block1-txt-child2 p-b-4 trans-05">
							<div class="block1-link stext-101 cl0 trans-09">상품 보기</div>
						</div>
					</a>
				</div>
			</div>

			<div class="size-202 m-lr-auto respon4">
				<!-- Block1 -->
				<div class="block1 wrap-pic-w">
					<img src="/bootstrap/images/bodycare.jpg" alt="IMG-BANNER"> <a
						href="/front/buy/list?category1=3"
						class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
						<div class="block1-txt-child1 flex-col-l">
							<span class="block1-name ltext-102 trans-04 p-b-8"> 바디케어 </span>

							<span class="block1-info stext-102 trans-04"> body care </span>
						</div>

						<div class="block1-txt-child2 p-b-4 trans-05">
							<div class="block1-link stext-101 cl0 trans-09">상품 보기</div>
						</div>
					</a>
				</div>
			</div>

			<div class="size-202 m-lr-auto respon4">
				<!-- Block1 -->
				<div class="block1 wrap-pic-w">
					<img src="/bootstrap/images/cleansing.jpg" alt="IMG-BANNER">

					<a href="/front/buy/list?category1=4"
						class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
						<div class="block1-txt-child1 flex-col-l">
							<span class="block1-name ltext-102 trans-04 p-b-8"> 클렌징 </span> <span
								class="block1-info stext-102 trans-04"> cleansing </span>
						</div>

						<div class="block1-txt-child2 p-b-4 trans-05">
							<div class="block1-link stext-101 cl0 trans-09">상품 보기</div>
						</div>
					</a>
				</div>
			</div>


		</div>
	</div>
	
	
	
	<!-- 상품목록 보여주는 부분 -->
	<!-- Product -->
	<section class="sec-product bg0 p-t-100 p-b-50">
		<div class="container">
			<div class="p-b-32">
				<h3 class="ltext-105 cl5 txt-center respon1">상품 둘러보기</h3>
			</div>

			<!-- Tab01 -->
			<div class="tab01">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item p-b-10"><a class="nav-link active"
						data-toggle="tab" href="#best-seller" role="tab">베스트 상품</a></li>

					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#featured" role="tab">추천 상품</a></li>

					<li class="nav-item p-b-10"><a class="nav-link"
						data-toggle="tab" href="#sale" role="tab">신규 상품</a></li>

				</ul>

				<!-- 상품 둘러보기 쪽 -->
				<!-- Tab panes -->
				<div class="tab-content p-t-50">
					<!-- 베스트 상품쪽 -->
					<div class="tab-pane fade show active" id="best-seller"
						role="tabpanel">
						<!-- Slide2 -->
						<div class="wrap-slick2">
							<div class="slick2">

								<c:forEach items="${list1}" var="list">
									<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
										<!-- Block2 -->
										<div class="block2">
											<div class="block2-pic hov-img0">
											<a href="/front/buy/detail?seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}">
												<img style="width: 270px; height: 270px;" src="${list.prd_path}/${list.prd_img}"
													alt="IMG-PRODUCT"> 
													</a>
											</div>

											<div class="block2-txt flex-w flex-t p-t-14">
												<div class="block2-txt-child1 flex-col-l ">
												${list.corp_nm}
													<a href="/front/buy/detail?seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}"
														class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
														${list.sel_nm}
													</a> <span class="stext-105 cl3 comma"> ${list.price}</span>
												</div>

												<div class="block2-txt-child2 flex-r p-t-3">
													<a href="#" data-seq_sel="${list.seq_sel}" data-seq_prd="${list.seq_prd}" data-lky_path="${list.prd_path}"
											data-lky_img="${list.prd_img}" data-lky_sel_nm="${list.sel_nm}" data-lky_price="${list.price}"
											data-lky_corp_nm="${list.corp_nm}"
														class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
														<img class="icon-heart1 dis-block trans-04"
														src="/bootstrap/images/icons/icon-heart-01.png" alt="ICON">
														<img class="icon-heart2 dis-block trans-04 ab-t-l"
														src="/bootstrap/images/icons/icon-heart-02.png" alt="ICON">
													</a>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>

					<!-- 추천상품 쪽 -->
					<div class="tab-pane fade" id="featured" role="tabpanel">
						<!-- Slide2 -->
						<div class="wrap-slick2">
							<div class="slick2">
							
								<c:forEach items="${list2}" var="list">
									<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
										<!-- Block2 -->
										<div class="block2">
											<div class="block2-pic hov-img0">
											<a href="/front/buy/detail?seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}">
												<img style="width: 270px; height: 270px;" src="${list.prd_path}/${list.prd_img}"
													alt="IMG-PRODUCT"> 
													</a>
											</div>

											<div class="block2-txt flex-w flex-t p-t-14">
												<div class="block2-txt-child1 flex-col-l ">
												${list.corp_nm}
													<a href="/front/buy/detail?seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}"
														class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
														${list.sel_nm}
													</a> <span class="stext-105 cl3 comma"> ${list.price}</span>
												</div>

												<div class="block2-txt-child2 flex-r p-t-3">
													<a href="#" data-seq_sel="${list.seq_sel}" data-seq_prd="${list.seq_prd}" data-lky_path="${list.prd_path}"
											data-lky_img="${list.prd_img}" data-lky_sel_nm="${list.sel_nm}" data-lky_price="${list.price}"
											data-lky_corp_nm="${list.corp_nm}"
														class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
														<img class="icon-heart1 dis-block trans-04"
														src="/bootstrap/images/icons/icon-heart-01.png" alt="ICON">
														<img class="icon-heart2 dis-block trans-04 ab-t-l"
														src="/bootstrap/images/icons/icon-heart-02.png" alt="ICON">
													</a>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>

							</div>
						</div>
					</div>

					<!-- 신규상품 쪽 -->
					<div class="tab-pane fade" id="sale" role="tabpanel">
						<!-- Slide2 -->
						<div class="wrap-slick2">
							<div class="slick2">
								
								<c:forEach items="${list3}" var="list">
									<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
										<!-- Block2 -->
										<div class="block2">
											<div class="block2-pic hov-img0">
											<a href="/front/buy/detail?seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}">
												<img style="width: 270px; height: 270px;" src="${list.prd_path}/${list.prd_img}"
													alt="IMG-PRODUCT"> 
													</a>
											</div>

											<div class="block2-txt flex-w flex-t p-t-14">
												<div class="block2-txt-child1 flex-col-l ">
												${list.corp_nm}
													<a href="/front/buy/detail?seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}"
														class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
														${list.sel_nm}
													</a> <span class="stext-105 cl3 comma"> ${list.price}</span>
												</div>

												<div class="block2-txt-child2 flex-r p-t-3">
													<a href="#" data-seq_sel="${list.seq_sel}" data-seq_prd="${list.seq_prd}" data-lky_path="${list.prd_path}"
											data-lky_img="${list.prd_img}" data-lky_sel_nm="${list.sel_nm}" data-lky_price="${list.price}"
											data-lky_corp_nm="${list.corp_nm}"
														class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
														<img class="icon-heart1 dis-block trans-04"
														src="/bootstrap/images/icons/icon-heart-01.png" alt="ICON">
														<img class="icon-heart2 dis-block trans-04 ab-t-l"
														src="/bootstrap/images/icons/icon-heart-02.png" alt="ICON">
													</a>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								
								
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>


	<!-- 상품 밑부분 사이트소개or이벤트로 하면 괜찮을듯 -->
	<!-- Blog -->
	<section class="sec-blog bg0 p-t-60 p-b-90">
		<div class="container">
			<div class="p-b-66">
				<h3 class="ltext-105 cl5 txt-center respon1">👍베스트 리뷰👍</h3>
			</div>

			<div class="row">
				<div class="col-sm-6 col-md-4 p-b-40">
					<div class="blog-item">
						<div class="hov-img0">
							<img
								src="/front/main/e.jpg" alt="IMG-BLOG">
						</div>

						<div class="p-t-15">
							<!-- 저자와 날짜 적힌곳 (쓸모없어보임) -->
							<div class="stext-107 flex-w p-b-14">
								<span class="m-r-3"> <span class="cl4"> By </span> <span
									class="cl5"> Nancy Ward </span>
								</span> <span> <span class="cl4"> on </span> <span class="cl5">
										July 22, 2017 </span>
								</span>
							</div>

							<!-- 소제목 -->
							<h4 class="p-b-12">
								💚그린하모니 친환경 샴푸💚
							</h4>

							<!-- 설명 -->
							<p class="stext-108 cl6">파워지성 두피로서 하루에 한 번씩 머리를 꼭 감는데요
									두피 신경이 많이 쓰여서 후기 좋은 라보에이치 써봅니당..

									향은 부담 없고 거품도 풍성하니 잘 나고 잘 씻겨요!
									확실히 감고나면 두피가 깔끔해지고 쿨링강까지 전해져서
									사용감과 사용 후 느낌 까아쥐 좋더라구요🌊
									머리에 올라오는 기름기도 좀 덜한 것 같아서 만족해요💚

									다음에도 재구매할 의사 있습니다✌
								----------------------------------------------------------</p>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 p-b-40">
					<div class="blog-item">
						<div class="hov-img0">
							 <img
								src="/front/main/w.jpg" alt="IMG-BLOG">
						</div>

						<div class="p-t-15">
							<div class="stext-107 flex-w p-b-14">
								<span class="m-r-3"> <span class="cl4"> By </span> <span
									class="cl5"> Nancy Ward </span>
								</span> <span> <span class="cl4"> on </span> <span class="cl5">
										July 18, 2017 </span>
								</span>
							</div>

							<h4 class="p-b-12">💚그린하모니 앰플💚
							</h4>

							<p class="stext-108 cl6">한통을 다쓰고 리뷰 남깁니다ㅎ
									할인을 많이 할때 저렴하게 구매를
									해서 듬뿍 발랐는데 흡수도 빠르고
									정말 촉촉하네요
									민감한 피부인 제가 사용하기에 정말
									좋은 제품이네요👍👍
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 p-b-40">
					<div class="blog-item">
						<div class="hov-img0">
							<img
								src="/front/main/q.png" alt="IMG-BLOG">
						</div>

						<div class="p-t-15">
							<div class="stext-107 flex-w p-b-14">
								<span class="m-r-3"> <span class="cl4"> By </span> <span
									class="cl5"> Nancy Ward </span>
								</span> <span> <span class="cl4"> on </span> <span class="cl5">
										July 2, 2017 </span>
								</span>
							</div>

							<h4 class="p-b-12"> 💚그린하모니 클렌징 오일💚
							</h4>

							<p class="stext-108 cl6">⭐️잔여감 안 남고 순한 오일

민감성 피부라서 클렌징 제품을 고를 때
매번 신중하게 고르는 편이에요.

그린하모니 클렌징폼, 마스크팩에 이어서
이번에는 클렌징 오일을 써 봤어요.

🧡장점은 순하다, 잘 지워진다, 양이 넉넉하다

모공 클렌징이 제대로 안 되면 트러블이 나는데
이 제품을 쓰는 동안 트러블이 전혀 안 났어요.
저 같은 민감성 피부에게 조심스레 추천해 봅니다.

섀도, 아이라이너, 마스카라, 틴트 중
틴트 빼고는 깔끔하게 지워졌어요.

마지막 사진처럼 물 같이 가벼운 제형이라
잘 지워질까 싶었는데 세정력이 좋더라고요👍</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="/WEB-INF/views/include/front/footer.jsp"%>

	<!-- 퀵뷰 눌렀을때 뜨는 화면인듯?(아마) -->
	<!-- Modal1 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="/bootstrap/images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>
								<!-- data-thumb에 경로로 미리보기 화면이 나오는 것 -->
								<div class="slick3 gallery-lb">
									<div class="item-slick3"
										data-thumb="/bootstrap/images/product-detail-01.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="/bootstrap/images/product-detail-01.jpg"
												alt="IMG-PRODUCT"> <a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-01.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>


									<div class="item-slick3"
										data-thumb="/bootstrap/images/product-detail-02.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="/bootstrap/images/product-detail-02.jpg"
												alt="IMG-PRODUCT"> <a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-02.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="/bootstrap/images/product-detail-03.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="/bootstrap/images/product-detail-03.jpg"
												alt="IMG-PRODUCT"> <a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="/bootstrap/images/product-detail-03.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">Lightweight
								Jacket</h4>

							<span class="mtext-106 cl2"> $58.79 </span>

							<p class="stext-102 cl3 p-t-23">Nulla eget sem vitae eros
								pharetra viverra. Nam vitae luctus ligula. Mauris consequat
								ornare feugiat.</p>

							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">Size</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Size S</option>
												<option>Size M</option>
												<option>Size L</option>
												<option>Size XL</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">Color</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Red</option>
												<option>Blue</option>
												<option>White</option>
												<option>Grey</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" name="num-product" value="1">

											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

										<button
											class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Add to cart</button>
									</div>
								</div>
							</div>

							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
										data-tooltip="Add to Wishlist"> <i
										class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
								</a> <a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
								</a> <a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		function addCommasToCostElements() {
		    // 모든 costElement 클래스 요소 가져오기
		    let costElements = document.getElementsByClassName("comma");
	
		    // 모든 요소에 대해 반복
		    for (let i = 0; i < costElements.length; i++) {
		        let costElement = costElements[i];
		        
		        // 요소의 내용 가져오기
		        let costString = costElement.innerText;
		        
		        // 표시된 숫자 가져오기
		        let cost = parseFloat(costString.replace(/,/g, '').replace('원', ''));
		        
		        // 쉼표 추가된 숫자로 변환하여 다시 요소에 설정
		        costElement.innerText = numberWithCommas(cost) + "원";
		    }
		}
	
		// 숫자를 3글자마다 쉼표로 변환하는 함수
		function numberWithCommas(number) {
		    let strNumber = number.toString();
		    return strNumber.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
	
		// 화면에 표시된 모든 숫자에 쉼표 추가하기
		addCommasToCostElements();
		</script>
</body>

</html>