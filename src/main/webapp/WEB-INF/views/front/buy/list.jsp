<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>상품목록</title>
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
.block2-pic img {
	height: 20vh
}

input::placeholder{
	opacity: .3;
}
h1{
	margin-left: 14%;
}

.thisis{
	background-color: gray;
	color: white;
}

.active{
	background-color: black;
	color: white;
}

</style>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>


</head>
<body class="animsition">

	<%@ include file="/WEB-INF/views/include/front/header.jsp"%>
	<br>
	<br>
	 <c:choose>
		<c:when test="${saleDto.category1 == 1}">
		<h1>헤어케어</h1>
		</c:when>
		<c:when test="${saleDto.category1 == 2}">
		<h1>스킨케어</h1>
		</c:when>
		<c:when test="${saleDto.category1 == 3}">
		<h1>바디케어</h1>
		</c:when>
		<c:when test="${saleDto.category1 == 4}">
		<h1>클렌징</h1>
		</c:when>
		<c:otherwise>
		<h1>그외</h1>
		</c:otherwise>
	</c:choose>
	
	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<div class="container">
			<!-- 무슨 항목 보일지 선택하는 영역 -->
			<div class="flex-w flex-sb-m p-b-52">
			
			<c:choose>
				<c:when test="${saleDto.category1 == 1}">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1"
						data-filter="*">모든제품</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin1">젤</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin2">무스</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin3">샴푸</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin4">컨디셔너</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin5">스프레이</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin6">트리트먼트</button>
				</div>
				</c:when>
				<c:when test="${saleDto.category1 == 2}">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1"
						data-filter="*">모든제품</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin1">스킨/토너</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin2">에센스/세런/앰플</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin3">크림</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin4">로션</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin5">미스트</button>
				</div>
				</c:when>
				<c:when test="${saleDto.category1 == 3}">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1"
						data-filter="*">모든제품</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin1">비누</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin2">바디로션</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin3">데오드란트</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin4">입욕제</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin5">바디워시</button>
				</div>
				</c:when>
				<c:when test="${saleDto.category1 == 4}">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button
						class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1"
						data-filter="*">모든제품</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin1">폼/젤</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin2">오일/밤</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin3">워터/티슈/밀크</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin4">필링/스크럽</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						data-filter=".skin5">립</button>
				</div>
				</c:when>
			</c:choose>



				<div class="flex-w flex-c-m m-tb-10">
					
					<div
						class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
						<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
						<i
							class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						검색
					</div>
				</div>

				<!-- 해당 카테고리 기준 상품검색 기능(넣을지말지 정하기) -->
				<!-- Search product -->
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>
						<select style="visibility: hidden;" class="dropdown" name="searchType" id="searchType">
									<option value="sel_nm" class="dropdown-item"
										${pageMaker.cri.searchType=='sel_nm' ? 'selected' : ''}>제목</option>
								</select> 
						
						<!--name="search-product" 있었음  -->
						<input class="mtext-107 cl2 size-114 plh2 p-r-15" name="keyword" id="keyword" type="text"
							placeholder="해당 카테고리 기준 검색"> <button class="btn btn-warning" id="searchBtn">검색하기</button>
					</div>
				</div>
				
			</div>
			
			<div style="width: 10%; float: right; margin: 10px">
				<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5 sort-btn" data-value="popular">인기순</a>
			    <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5 sort-btn" data-value="new">신상품순</a>
			    <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5 sort-btn" data-value="priceUp">높은가격순</a>
			    <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5 sort-btn" data-value="priceDown">낮은가격순</a>
			</div>

			<!-- 상품 목록들 보이는 곳 -->
			<div class="row isotope-grid">
				<c:choose>
					<c:when test="${empty list}">등록된 상품이 없습니다.</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="list">
								<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item">
									<!-- Block2 -->
									<div class="block2">
										<div class="block2-pic hov-img0">
											<a href="/front/buy/detail?seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}"
													class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"><img style="width: 200px;height: 200px" src="${list.prd_path}/${list.prd_img}" alt="IMG-PRODUCT"></a>

											<!-- <a href="https://www.naver.com/" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
												Quick View </a> -->
										</div>

										<div class="block2-txt flex-w flex-t p-t-14">
											<div class="block2-txt-child1 flex-col-l ">
												<a href="#"
													class="stext-104 cl4 hov-cl1 trans-04 p-b-6">
													${list.corp_nm} </a> 
													<a href="/front/buy/detail?seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}"
													class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
													${list.sel_nm} </a> <span class="stext-105 cl3 comma">
													${list.price} </span>
													<p style="display: none;">${list.category2}</p>
											</div>

											<div class="block2-txt-child2 flex-r p-t-3">
												<a href="#"
												data-seq_sel="${list.seq_sel}" data-seq_prd="${list.seq_prd}" data-lky_path="${list.prd_path}"
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
								<script type="text/javascript">
								$(document).ready(function() {
								    // 각 div 박스에 클래스를 추가하는 함수
								    function addSkinClasses() {
								        $(".isotope-item").each(function() {
								            var category2 = $(this).find("p").text().trim(); // 해당 div 안의 p 태그에서 category2 값을 가져옵니다
								            $(this).addClass("skin" + category2);
								        });
								    }

								    // 페이지 로드 시 클래스 추가
								    addSkinClasses();
								});
								</script>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			
			<div style="text-align: center; margin-top: 30px">
								<div class="btn-group" role="group" aria-label="Basic example">
									<!-- First, Prev -->
									<c:choose>
										<c:when test="${pageMaker.prev && pageMaker.spageNo>1}">
											<a href="list${pageMaker.searchQuery(pageMaker.spageNo-1)}">&lt;</a>&nbsp;&nbsp;
									</c:when>
									</c:choose>
									<!-- Displag PageNo -->
									<c:forEach var="i" begin="${pageMaker.spageNo}"
										end="${pageMaker.epageNo}">
										<c:if test="${i==pageMaker.cri.currPage}">
											<button type="button" class="btn btn-outline-secondary thisis">${i}</button>
										</c:if>
										<c:if test="${i!=pageMaker.cri.currPage}">
											<button type="button" class="btn btn-outline-secondary"
												onclick="location.href='/front/buy/list${pageMaker.searchQuery(i)}&category1=${saleDto.category1}'">${i}</button>
										</c:if>
									</c:forEach>
									<!-- Next, Last -->
									<c:choose>
										<c:when test="${pageMaker.next && pageMaker.epageNo>0}">
											<button type="button" class="btn btn-outline-secondary"
												onclick="location.href='/front/buy/list${pageMaker.searchQuery(pageMaker.epageNo+1)}&category1=${saleDto.category1}'">
												&nbsp;&gt;</button>
										</c:when>
									</c:choose>
								</div>
							</div>
							<!-- ======================================================================================================== -->
			
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

			<!-- 상품 더보기(넣을지 말지 정하기) -->
			<!-- Load more -->
			<!-- <div class="flex-c-m flex-w w-full p-t-45">
				<a href="#"
					class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
					상품 더보기 </a>
			</div> -->
		</div>
	</div>


	<!-- Modal1 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb">
									<div class="item-slick3"
										data-thumb="images/product-detail-01.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-01.jpg" alt="IMG-PRODUCT">

											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-01.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="images/product-detail-02.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">

											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-02.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="images/product-detail-03.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">

											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-03.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



					<!-- 퀵뷰 화면 -->
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
	$(function() {
		// 1) SearchType 이 '전체' 면 keyword 클리어
		$('#searchType').change(function() {
			if ($(this).val() == 'n')
				$('#keyword').val('');
		}); //change

		$('#searchBtn').click(
				function() {
					self.location = "list" + "${pageMaker.makeQuery(1)}"
							+ "&searchType=" + $('#searchType').val()
							+ "&keyword=" + $('#keyword').val()
							+"&category1="+${saleDto.category1}
		}); //click
		
		
		$('.sort-btn').click(function() {
		    // 모든 버튼에서 active 클래스를 제거
		    $('.sort-btn').removeClass('active');

		    // 선택된 값을 가져와서 사용하거나 페이지 이동을 처리합니다.
		    var sortValue = $(this).data('value');
		    var url = "list" + "${pageMaker.makeQuery(1)}" + "&searchRnum=" + sortValue + "&category1=" + ${saleDto.category1};
		    
		    // URL 변경 및 페이지 이동
		    self.location = url;
		    
		    // 클릭된 버튼에 active 클래스 추가
		    
		    $(this).addClass('active');
		});
		
		
		
	}); //ready */
	
	


</script>

	<%@ include file="/WEB-INF/views/include/front/footer.jsp"%>

</body>
</html>