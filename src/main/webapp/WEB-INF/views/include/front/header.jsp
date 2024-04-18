<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="header-v3">
	<!-- Header desktop -->
	<div class="container-menu-desktop trans-03">
		<div class="wrap-menu-desktop">
			<!-- 상단 고정바 -->
			<nav class="limiter-menu-desktop p-l-45">
			<script>
		        // 현재 페이지의 URL을 가져오는 함수
		        function getCurrentUrl() {
		            return window.location.href;
		        }
		
		        // 특정 페이지에 따라 스타일을 설정하는 함수
		        function setPageSpecificStyles() {
		            var navElement = document.querySelector('.limiter-menu-desktop');
		            if (getCurrentUrl() === 'http://localhost:8082/front/main/main' || getCurrentUrl() === 'http://210.91.85.54:8082/front/main/main'
		            		|| getCurrentUrl() === 'http://mars.sn.himedia.co.kr:8082/front/main/main' || getCurrentUrl() === 'http://mars.sn.himedia.co.kr:8082/front/main/main') {
		                navElement.style.backgroundColor = 'transparent'; // 메인화면의 경우 투명색으로 설정
		            } else {
		                navElement.style.backgroundColor = 'black'; // 나머지 화면의 경우 검은색으로 설정
		            }
		        }
		
		        // 페이지 로드 시 호출하여 초기 스타일을 설정합니다.
		        setPageSpecificStyles();
		    </script>


				<!-- 로고 -->
				<!-- Logo desktop -->
				<a href="/front/main/main" class="logo" style="height: 80px;width: 180;"> <img
					src="/seller/main/logo.png" alt="IMG-LOGO">
				</a>

				<!-- 메뉴바들 -->
				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">
						<li><a href="#">쇼핑하기</a>
							<ul class="sub-menu">
								<li><a href="/front/buy/list?category1=1">헤어케어</a></li>
								<li><a href="/front/buy/list?category1=2">스킨케어</a></li>
								<li><a href="/front/buy/list?category1=3">바디케어</a></li>
								<li><a href="/front/buy/list?category1=4">클렌징</a></li>
							</ul></li> 

						<li class="label1" data-label1="hot"><a
							href="/front/main/blog">이벤트</a></li>

						<li><a href="/front/main/about">사이트 소개</a></li>

					</ul>
				</div>

				<!-- 오른쪽 아이콘 메뉴들 -->
				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m h-full">
					<!-- 검색버튼 -->
					<!-- <div class="flex-c-m h-full p-lr-19">
						<div
							class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>
					</div> -->

					<div class="flex-c-m h-full p-lr-19">
					
						<a href="/front/login/loginForm"
							class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11"> <svg
								xmlns="http://www.w3.org/2000/svg" width="1em" height="1em"
								viewBox="0 0 32 32">
								<path fill="currentColor"
									d="M6 30h20v-5a7.008 7.008 0 0 0-7-7h-6a7.008 7.008 0 0 0-7 7zM9 9a7 7 0 1 0 7-7a7 7 0 0 0-7 7" /></svg>
						</a>
					</div>

					<!-- 장바구니 버튼 -->
					<c:if test="${not empty sessionScope.ID}">
					<div class="flex-c-m h-full p-lr-19">
						<div
							class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
							data-notify="0">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>
					</div>
					</c:if>
					<!-- 테스트 -->
					<!-- =================================================================== -->


					<!-- =============================== ======-->

					<!-- 메뉴 아이콘 -->
					<div class="flex-c-m h-full p-lr-19">
						<div
							class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-sidebar">
							<i class="zmdi zmdi-menu"></i>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<!-- 모바일 헤더 -->
	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="/front/main/main"><img
				src="/seller/main/logo.png" alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
			<div class="flex-c-m h-full p-r-5">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart"
					data-notify="0">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>
			</div>
			
			<div class="flex-c-m h-full p-lr-19">
					
			<a href="/front/login/loginForm"
				class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11"> <svg
					xmlns="http://www.w3.org/2000/svg" width="1em" height="1em"
					viewBox="0 0 32 32">
					<path fill="currentColor"
						d="M6 30h20v-5a7.008 7.008 0 0 0-7-7h-6a7.008 7.008 0 0 0-7 7zM9 9a7 7 0 1 0 7-7a7 7 0 0 0-7 7" /></svg>
			</a>
			<!-- 세션적용(세션이있으면)  -->
			<c:if test="${not empty sessionScope.ID}">
				
				<!-- 마이페이지로 이동하는 링크를 추가합니다. -->
				<a style=" color: black;" href="/front/login/logout">로그아웃</a>
	
			</c:if>
		</div>
		</div>
		
		

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box"> <span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


	<!-- 모바일용 메뉴 -->
	<!-- Menu Mobile -->
	
	<div class="menu-mobile">
		<ul class="main-menu-m">
			<li><a href="#">쇼핑하기</a>
				<ul class="sub-menu-m">
					<li><a href="/front/buy/list?category1=1">헤어케어</a></li>
					<li><a href="/front/buy/list?category1=2">스킨케어</a></li>
					<li><a href="/front/buy/list?category1=3">바디케어</a></li>
					<li><a href="/front/buy/list?category1=4">클렌징</a></li>
				</ul>
				<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li> 

			<li><a  class="label1 rs1" data-label1="hot"
				href="/front/main/blog">이벤트</a></li>
			<li><a href="/front/main/about">사이트 소개</a></li>
		</ul>
	</div>

	<!-- 뭔지 모르겠음 -->
	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<button class="flex-c-m btn-hide-modal-search trans-04">
			<i class="zmdi zmdi-close"></i>
		</button>

		<!-- <form class="container-search-header">
			<div class="wrap-search-header">
				<input class="plh0" type="text" name="search"
					placeholder="Search...">

				<button class="flex-c-m trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
			</div>
		</form> -->
	</div>
</header>

<!-- 사이드 메뉴바(보류) -->
<!-- Sidebar -->
<aside class="wrap-sidebar js-sidebar">
	<div class="s-full js-hide-sidebar"></div>

	<div class="sidebar flex-col-l p-t-22 p-b-25">
		<div class="flex-r w-full p-b-30 p-r-27">
			<div
				class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-sidebar">
				<i class="zmdi zmdi-close"></i>
			</div>
		</div>

		<div class="sidebar-content flex-w w-full p-lr-65 js-pscroll">
			<ul class="sidebar-link w-full">
				<li class="p-b-13"><a href="/front/main/main"
					class="stext-102 cl2 hov-cl1 trans-04"> Home </a></li>

				<li class="p-b-13"><a href="/front/buy/list?category1=1"
					class="stext-102 cl2 hov-cl1 trans-04"> 헤어케어 </a></li>
					<li class="p-b-13"><a href="/front/buy/list?category1=2"
					class="stext-102 cl2 hov-cl1 trans-04"> 스킨케어 </a></li>
					<li class="p-b-13"><a href="/front/buy/list?category1=3"
					class="stext-102 cl2 hov-cl1 trans-04"> 바디케어 </a></li>
					<li class="p-b-13"><a href="/front/buy/list?category1=4"
					class="stext-102 cl2 hov-cl1 trans-04"> 클렌징 </a></li>
					<c:if test="${not empty sessionScope.ID}"> 
				<li class="p-b-13"><a href="/common/board/list"
					class="stext-102 cl2 hov-cl1 trans-04"> 고객센터 </a></li>
					</c:if>
				<!-- <li class="p-b-13"><a href="/front/login/loginForm"
						class="stext-102 cl2 hov-cl1 trans-04"> 로그인/로그아웃 </a></li> -->
				<c:choose>
					<c:when test="${empty sessionScope.ID}">
						<li class="p-b-13"><a href="/front/login/loginForm"
							class="stext-102 cl2 hov-cl1 trans-04">로그인</a></li>
					</c:when>
					<c:otherwise>
						<li class="p-b-13"><a href="/front/login/logout"
							class="stext-102 cl2 hov-cl1 trans-04">로그아웃</a></li>
					</c:otherwise>
				</c:choose>
			</ul>

			<div class="sidebar-gallery w-full p-tb-30">
				<span class="mtext-101 cl5"> 소개 </span>

				<div class="flex-w flex-sb p-t-36 gallery-lb">
					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="images/mainproduct2.jpgg"
							data-lightbox="gallery"
							style="background-image: url('/bootstrap/images/mainproduct2.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="images/mainproduct4.jpg"
							data-lightbox="gallery"
							style="background-image: url('/bootstrap/images/mainproduct4.jpg');"></a>
					</div>

					<!-- item gallery sidebar -->
					<div class="wrap-item-gallery m-b-10">
						<a class="item-gallery bg-img1" href="images/mainproduct3.jpg"
							data-lightbox="gallery"
							style="background-image: url('/bootstrap/images/mainproduct3.jpg');"></a>
					</div>

				</div>
			</div>

			<div class="sidebar-gallery w-full">
				<span class="mtext-101 cl5"> GREEN HARMONY </span>
				<p class="stext-108 cl6 p-t-27">"환경을 사랑하는 사람들을 위해 친환경 화장품을
					제공합니다. 자연 속에서 영감을 받은 우리 제품은 화학물질을 최소화하여 피부에 자연적인 아름다움을 선사합니다. 지속
					가능한 재료와 친환경적인 생산 과정으로, 당신의 아름다움은 지구를 더욱 아름답게 만들어줍니다."</p>
			</div>
		</div>
	</div>
</aside>


<!-- 사이드쪽 장바구니(보류) -->
<!-- Cart -->
<div class="wrap-header-cart js-panel-cart">
	<div class="s-full js-hide-cart"></div>

	<div class="header-cart flex-col-l p-l-65 p-r-25">
		<div class="header-cart-title flex-w flex-sb-m p-b-8">
			<span class="mtext-103 cl2"> 장바구니 </span>

			<div
				class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
				<i class="zmdi zmdi-close"></i>
			</div>
		</div>

		<div class="header-cart-content flex-w js-pscroll">
			<ul id="headerList" class="header-cart-wrapitem w-full">
			
			</ul>
			
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    $(document).ready(function() {
        // 페이지 로드시 헤더 데이터 요청
        $.ajax({
            url: '/headerData', // 데이터를 받아올 컨트롤러 엔드포인트
            method: 'GET',
            success: function(data) {
                // 성공적으로 데이터를 받았을 때 처리
                var headerContent = '';
                var totalPrice = 0;
                var totalCount = data.length;
                $.each(data, function(index, item) {
                    headerContent += '<li class="header-cart-item flex-w flex-t m-b-12">';
                    headerContent += '<div class="header-cart-item-img">';
                    headerContent += '<a href="/front/buy/detail?seq_sel='+item.seq_sel+"&seq_prd="+item.seq_prd+'" class="header-cart-item-name m-b-18 hov-cl1 trans-04"><img src="' + item.crt_path + '/' + item.crt_img + '" alt="IMG"></a>';
                    headerContent += '</div>';
                    headerContent += '<div class="header-cart-item-txt p-t-8">';
                    headerContent += '<a href="/front/buy/detail?seq_sel='+item.seq_sel+"&seq_prd="+item.seq_prd+'" class="header-cart-item-name m-b-18 hov-cl1 trans-04">';
                    headerContent += item.crt_sel_nm + '</a>';
                    headerContent += '<span class="header-cart-item-info">' + item.crt_corp_nm + '</span>';
                    headerContent += '<span class="header-cart-item-info">' + item.crt_count + ' x ' + numberWithCommas(item.crt_price) + '원</span>';
                    headerContent += '</div>';
                    headerContent += '</li>';
                    totalPrice += item.crt_price * item.crt_count;
                    
                    
                });
                $('#headerList').html(headerContent);
                $('#totalPrice').text(numberWithCommas(totalPrice)+'원');
                $('.icon-header-noti').attr('data-notify', totalCount);
            },
            error: function() {
                console.log("비로그인 상태");
            }
        });
    });
    
    function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
    

    </script>

			<div class="w-full">
				<div class="header-cart-total w-full p-tb-40">Total: <span id="totalPrice"> </span></div>

				<div class="header-cart-buttons flex-w w-full">
					<a href="/front/buy/cart"
						class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
						장바구니로 이동 </a>
				</div>
			</div>
		</div>
	</div>
</div>


<div id="mainX" style="height: 83px"></div>