<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Product Detail</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/layer/layer.css?ts=1663913816">
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

<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<style>
    /* CSS 스타일링: 이미지에 대한 기본 스타일 */
	img {
	    transition: transform 0.3s ease; /* 변환 효과를 부드럽게 적용 */
	    cursor: pointer; /* 커서를 포인터로 변경하여 클릭 가능하도록 함 */
	}
	
	.slick3-dots li img{
		height: 68.33px;
	}
	
	tr td{
	 border-right: 1px solid #dbdbdb;
	}
	
</style>

</head>
<body class="animsition">

	<%@ include file="/WEB-INF/views/include/front/header.jsp"%>

	<!-- 카테고리 표시영역 -->
	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="/front/main/main" class="stext-109 cl8 hov-cl1 trans-04"> 메인 <i
				class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <a href="/front/buy/list?category1=${list.category1}" class="stext-109 cl8 hov-cl1 trans-04">
			<c:if test="${list.category1 == 1}">헤어케어</c:if>
			<c:if test="${list.category1 == 2}">스킨케어</c:if>
			<c:if test="${list.category1 == 3}">바디케어</c:if>
			<c:if test="${list.category1 == 4}">클렌징</c:if>
				 <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <span class="stext-109 cl4">
			<c:choose>
			<c:when test="${list.category1 == 1}">
				<c:if test="${list.category2 == 1}">젤</c:if>
				<c:if test="${list.category2 == 2}">무스</c:if>
				<c:if test="${list.category2 == 3}">샴푸</c:if>
				<c:if test="${list.category2 == 4}">컨디셔너</c:if>
				<c:if test="${list.category2 == 5}">스프레이</c:if>
				<c:if test="${list.category2 == 6}">트리트먼트</c:if>
			</c:when>
			<c:when test="${list.category1 == 2}">
				<c:if test="${list.category2 == 1}">스킨/토너</c:if>
				<c:if test="${list.category2 == 2}">에센스/세런/앰플</c:if>
				<c:if test="${list.category2 == 3}">크림</c:if>
				<c:if test="${list.category2 == 4}">로션</c:if>
				<c:if test="${list.category2 == 5}">미스트</c:if>
			</c:when>
			<c:when test="${list.category1 == 3}">
				<c:if test="${list.category2 == 1}">비누</c:if>
				<c:if test="${list.category2 == 2}">바디로션</c:if>
				<c:if test="${list.category2 == 3}">데오드란트</c:if>
				<c:if test="${list.category2 == 4}">입욕제</c:if>
				<c:if test="${list.category2 == 5}">바디워시</c:if>
			</c:when>
			<c:when test="${list.category1 == 4}">
				<c:if test="${list.category2 == 1}">폼/젤</c:if>
				<c:if test="${list.category2 == 2}">오일/밤</c:if>
				<c:if test="${list.category2 == 3}">워터/티슈/밀크</c:if>
				<c:if test="${list.category2 == 4}">필링/스크럽</c:if>
				<c:if test="${list.category2 == 5}">립</c:if>
			</c:when>
			</c:choose>
			  
			</span>
		</div>
	</div>

	<!-- 상품 상세 영역 -->
	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			<div class="row">
				<!-- 상품 이미지 표시 부분 -->
				<div class="col-md-6 col-lg-7 p-b-30">
					<!-- 이미지 선택 부분 -->
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>


							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<div class="slick3 gallery-lb">
							
							<c:set var="prd1" value="${prd[0]}" />
							
							<c:forEach items="${prd}" var="prd">
								<div class="item-slick3"
									data-thumb="${prd.prd_path}/${prd.prd_img}">
									<div class="wrap-pic-w pos-relative">
										<img src="${prd.prd_path}/${prd.prd_img}" alt="IMG-PRODUCT">
										<a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="${prd.prd_path}/${prd.prd_img}"> <i
											class="fa fa-expand"></i>
										</a>
									</div>
								</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<!-- 상품 정보가 보이는 곳 -->
				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<span class="mtext-106 cl2"> ${list.corp_nm}</span>
						<h4 class="mtext-105 cl2 js-name-detail p-b-14">${list.sel_nm}</h4>
						<span class="mtext-106 cl2 comma"> ${list.price}</span>
						
						
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
						<script>
    $(document).ready(function() {
        // 리뷰 리스트에서 rating 값들을 가져와서 합산하기
        var totalRating = 0;
        var starRating = $('.star-rating');
        <c:forEach items="${review}" var="item">
            totalRating += ${item.rating};
            
        </c:forEach>
        
        // 리뷰의 수
        var reviewCount = ${review.size()};
        
        // 리뷰 평점의 평균 계산
        var averageRating = totalRating / reviewCount;
        
        // 평균 평점을 콘솔에 출력하거나 HTML 요소에 표시할 수 있음
        console.log('Average Rating:', averageRating);
        // HTML 요소에 평균 평점 표시 예시
        if(isNaN(averageRating.toFixed(1))){
        	$('#averageRating').text('별점없음');
       } else{
    	   $('#averageRating').text(averageRating.toFixed(2)); 
       }
        
        var fullStars = Math.floor(averageRating); // 만점 5점 중 가득 찬 별의 개수
        var remainder = averageRating - fullStars; // 소수 부분

        var starRatingHTML = '';
        // 가득 찬 별 아이콘 추가
        for (var i = 0; i < fullStars; i++) {
            starRatingHTML += '<i class="zmdi zmdi-star"></i>';
        }
        // 부분적으로 채워진 별 아이콘 추가
        if (remainder >= 0.5) {
            starRatingHTML += '<i class="zmdi zmdi-star"></i>';
        } else if (remainder > 0) {
            starRatingHTML += '<i class="zmdi zmdi-star-half"></i>';
        }
        // 비어있는 별 아이콘 추가
        for (var i = 0; i < 5 - Math.ceil(averageRating); i++) {
            starRatingHTML += '<i class="zmdi zmdi-star-outline"></i>';
        }

        // 별점을 표시할 요소에 추가
        $('.star-rating').html(starRatingHTML);
        
        
    });
    
    
</script>
						
						

						<p class="stext-102 cl3 p-t-23">배송비 무료</p>
						<p>별점 : <span class="fs-18 cl11 star-rating">
						</span>
						<span style="color:maroon; font: bold; " id="averageRating"></span> </p>
						
						<div class="p-t-33">

							<div class="flex-w flex-r-m p-b-10"
								style="justify-content: flex-start; width: 40vw">
								<div class="size-204 flex-w flex-m respon6-next">
									<div class="wrap-num-product flex-w m-r-20 m-tb-10">
										<div
											class="btn-num-product-down btn-num-product-down1 cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>

										<input class="mtext-104 cl3 txt-center num-product"
											type="number" id="cnt" name="cnt" value="1">

										<div class="btn-num-product-up btn-num-product-up1 cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>

									<button id="cart"
										class="flex-c-m stext-101 cl0 size-101 bg11 bor1 hov-btn1 p-lr-15 trans-04">
										장바구니 넣기</button>
										
									<script>
										$(document).ready(
									function() {
										$("#cart")
													.click(
															function() {
																
																// 전송할 데이터
																var data = {
																		crt_count : $("#cnt").val() , 
																		seq_sel : ${list.seq_sel} ,
																		seq_prd : ${list.seq_prd} ,
																		crt_sel_nm : "${list.sel_nm}" ,
																		crt_price : ${list.price} ,
																		crt_corp_nm : "${list.corp_nm}",
																		crt_img : "${prd1.prd_img}" ,
																		crt_path : "${prd1.prd_path}"
																};
	
																// AJAX 요청
																$
																		.ajax({
																			url : "/front/cart/insert",
																			type : "POST",
																			contentType : "application/json",
																			data : JSON
																					.stringify(data),
																			success : function(
																					response) {
																				if (response.success) {
																					// alert(response.message); // 성공 메시지 표시
																					var cnt = $("#cnt").val();
																					
																					swal({
																					      title: "등록성공!",
																					      text: "",
																					      icon: "success",
																					      content: {
																					        element: "div",
																					        attributes: {
																					          innerHTML: '<img src="${prd1.prd_path}/${prd1.prd_img}" style="width: 100px;"><br>'
																					          +'<p>${list.sel_nm}&nbsp;'+cnt+'개를 장바구니에 등록했습니다!</p>'
																					        }
																					      }
																					    });
																				} else {
																					alert(response.error); // 실패 메시지 표시
																				}
																			},
																			error : function(
																					xhr,
																					status,
																					error) {
																				console
																						.error(
																								"AJAX 오류:",
																								error);
																			}
																		});
															});
														});
									</script>

									<button id="checkoutButton"
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"
										style="margin-left: 10px">구매하기</button>
								</div>
							</div>
						</div>
						<script type="text/javascript">
						$(document).ready(function() {
						    $('#checkoutButton').click(function() {
						        // 버튼 비활성화
						        $(this).prop('disabled', true);

						        // 선택한 상품 정보 가져오기
						        var selectedItems = [];
						        
						        var crt_price = ${list.price};
						        var total_price = ${list.price} * $("#cnt").val();
						        var seq_sel = ${list.seq_sel};
						        var seq_prd = ${list.seq_prd};
						        var crt_img = "${prd1.prd_img}";
						        var crt_path = "${prd1.prd_path}";
						        var crt_corp_nm = "${list.corp_nm}";
						        var crt_sel_nm = "${list.sel_nm}";
						        var crt_count = $("#cnt").val();

						        selectedItems.push({ crt_price: crt_price, total_price: total_price, crt_corp_nm: crt_corp_nm, crt_sel_nm: crt_sel_nm
						        , crt_img: crt_img, crt_path: crt_path, crt_count: crt_count, seq_sel: seq_sel, seq_prd: seq_prd });

						        // AJAX 요청 보내기
						        $.ajax({
						            type: 'POST',
						            url: '/checkout', // 결제 처리를 담당하는 컨트롤러 엔드포인트
						            contentType: 'application/json',
						            data: JSON.stringify(selectedItems),
						            success: function(response) {
						                console.log("성공");
						                window.location.href = '/front/pay/payForm';
						            },
						            error: function(xhr, status, error) {
						                console.error('AJAX 요청 실패:', status, error);
						            },
						            complete: function() {
						                // AJAX 요청이 완료된 후 버튼 다시 활성화
						                $('#checkoutButton').prop('disabled', false);
						            }
						        });
						    });
						});
						</script>
						
						
						<!-- 좋아요버튼 
						<div class="flex-w flex-m p-l-100 p-t-40 respon7">
							<div class="flex-m p-r-10 m-r-11">
								<a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
									data-tooltip="좋아요"> <i
									class="zmdi zmdi-favorite"></i>
								</a>
							</div>
						</div>  -->
						
						<a style="visibility:hidden;" href="/front/buy/detail?seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}"
														class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
														${list.sel_nm}
													</a>
						<div class="block2-txt-child2 flex-r p-t-3">
							<a href="#" data-seq_sel="${list.seq_sel}" data-seq_prd="${list.seq_prd}" data-lky_path="${prd1.prd_path}"
								data-lky_img="${prd1.prd_img}" data-lky_sel_nm="${list.sel_nm}" data-lky_price="${list.price}"
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

			<div class="bor10 m-t-50 p-t-43 p-b-40">
				<!-- Tab01 -->
				<div class="tab01">
					<!-- Nav tabs -->
					<ul style="width: 50%; margin: auto; justify-content: space-between;" class="nav nav-tabs" role="tablist">
						<li class="nav-item p-b-10"><a class="nav-link active"
							data-toggle="tab" href="#description" role="tab">DETAIL</a></li>

						<li class="nav-item p-b-10"><a class="nav-link"
							data-toggle="tab" href="#information" role="tab">GUIDE</a></li>

						<li class="nav-item p-b-10"><a class="nav-link"
							data-toggle="tab" href="#reviews" role="tab">REVIEW</a></li>
					</ul>

					<div class="tab-content p-t-43">
					<!-- 판매 이미지영역 -->
						<div class="tab-pane fade show active" id="description"
							role="tabpanel">
							<div class="how-pos2 p-lr-15-md">
							<c:forEach var="sel" items="${sel}">
								<img width="1055px" src="${sel.sel_path}/${sel.sel_img}"/>
								</c:forEach>
							</div>
						</div>

						<!-- 2번 선택 -->
						<div class="tab-pane fade" id="information" role="tabpanel">
							<!-- <div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto" style="width: 900px">
						
						
						<div class="detail_info_box">
                    <div class="datail_table">
                       
                    </div>
                </div>
						
						
								</div>
							</div> -->
							<h5 style="margin: auto; width: 30%; text-align: center;">상품정보제공고시</h5>
							<br>
							<br>
							<br>
							<br>
							 <table class="left_table_type" style="width: 80%; margin: auto;">
                            <colgroup>
                                <col>
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th style="width:20%">제품명</th>
                                <td colspan="3" style="width:80%">${desc.name}</td>
                            </tr>
                            <tr>
                                <th style="width:20%">제품 주요 사양</th>
                                <td colspan="3" style="width:80%">${desc.spec}</td>
                            </tr>
                            <tr>
                                <th style="width:20%">사용기한 또는 개봉 후 사용기간</th>
                                <td colspan="3" style="width:80%">${desc.dt_use}</td>
                            </tr>
                            <tr>
                                <th style="width:20%">사용방법</th>
                                <td colspan="3" style="width:80%">${desc.use}</td>
                            </tr>
                            <tr>
                                <th style="width:20%">화장품제조업자</th>
                                <td colspan="3" style="width:80%">${desc.company}</td>
                            </tr>
                            <tr>
                                <th style="width:20%">제조국</th>
                                <td colspan="3" style="width:80%">${desc.country}</td>
                            </tr>
                            <tr>
                                <th style="width:20%">화장품법에 따라 기재 표시하여야 하는 모든 성분</th>
                                <td colspan="3" style="width:80%">${desc.element}</td>
                            </tr>
                            <tr>
                                <th style="width:20%">기능성 화장품의 경우 화장품 법에 따른 식품의약품안전처 심사 필 유무</th>
                                <td colspan="3" style="width:80%">${desc.safety}</td>
                            </tr>
                            <tr>
                                <th style="width:20%">사용할 때의 주의사항</th>
                                <td colspan="3" style="width:80%">${desc.caution}</td>
                            </tr>
                            <tr>
                                <th style="width:20%">품질보증기준</th>
                                <td colspan="3" style="width:80%">${desc.dt_qlt}</td>
                            </tr>
                            <tr>
                                <th style="width:20%">소비자 상담 관련 전화 번호</th>
                                <td colspan="3" style="width:80%">${desc.tel}</td>
                            </tr>
                            </tbody>
                        </table>
						</div>

						<!-- 3번 선택(리뷰) -->
						<div class="tab-pane fade" id="reviews" role="tabpanel">
							<div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
									<div class="p-b-30 m-lr-15-sm">
										<!-- Review -->
										<div class="flex-w flex-t p-b-68">
														<!-- 프사 -->
											<!-- <div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
												<img src="/bootstrap/images/avatar-01.jpg" alt="AVATAR">
											</div>
 -->
											<div class="size-207">
											<c:choose>
												<c:when test="${empty review}">
														<div class="flex-w flex-sb-m p-b-17">등록된 리뷰가 없습니다.</div>
												</c:when>
												<c:otherwise>
													<c:forEach items="${review}" var="review">
														<div class="flex-w flex-sb-m p-b-17">
														<!-- 이름 -->
														<span class="mtext-107 cl2 p-r-20 asterisk"> ${review.name} </span> 
														<script type="text/javascript">
														$(document).ready(function() {
														    // asterisk 클래스를 가진 요소들을 선택합니다.
														    $(".asterisk").each(function() {
														        // 현재 요소의 텍스트를 가져옵니다.
														        var text = $(this).text();
														        
														        // 두 번째 문자를 *로 바꿉니다.
														        var newText = text.substring(0, 2) + '*' + text.substring(3);
														        
														        // 새로운 텍스트로 요소의 텍스트를 설정합니다.
														        $(this).text(newText);
														    });
														});
														</script>
														<!-- 별점 -->
														<c:if test="${review.rating == 1}">
														<span class="fs-18 cl11">
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star-outline"></i> 
															<i class="zmdi zmdi-star-outline"></i>
															<i class="zmdi zmdi-star-outline"></i> 
															<i class="zmdi zmdi-star-outline"></i>
														</span>
														</c:if>
														<c:if test="${review.rating == 2}">
														<span class="fs-18 cl11">
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star-outline"></i>
															<i class="zmdi zmdi-star-outline"></i> 
															<i class="zmdi zmdi-star-outline"></i>
														</span>
														</c:if>
														<c:if test="${review.rating == 3}">
														<span class="fs-18 cl11">
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star-outline"></i> 
															<i class="zmdi zmdi-star-outline"></i>
														</span>
														</c:if>
														<c:if test="${review.rating == 4}">
														<span class="fs-18 cl11">
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star-outline"></i>
														</span>
														</c:if>
														<c:if test="${review.rating == 5}">
														<span class="fs-18 cl11">
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star"></i>
														</span>
														</c:if>
													</div>
													<p style="float: right;">작성일 : ${review.dt_reg}</p>
													<c:choose>
													    <c:when test="${review.rev_img1 != '' && review.rev_img1 != null && review.rev_img2 != null && review.rev_img2 != '' }">
													        <div style="display: flex; justify-content: flex-start;">
													                <img class="toggle-image" src="/front/review/image/${review.rev_img1}" style="width: 32%; height: 200px" alt="AVATAR">
													                <img class="toggle-image" src="/front/review/image/${review.rev_img2}" style="width: 32%; height: 200px" alt="AVATAR">
													        </div>
													    </c:when>
													    <c:when test="${review.rev_img1 != '' && review.rev_img1 != null && review.rev_img2 == null || review.rev_img2 == '' }">
													        <div style="display: flex; justify-content: flex-start;">
													                <img class="toggle-image" src="/front/review/image/${review.rev_img1}" style="width: 32%; height: 200px" alt="AVATAR">
													        </div>
													    </c:when>
													    <c:when test="${review.rev_img1 == '' || review.rev_img1 == null && review.rev_img2 != null && review.rev_img2 != '' }">
													        <div style="display: flex; justify-content: flex-start;">
													                <img class="toggle-image" src="/front/review/image/${review.rev_img2}" style="width: 32%; height: 200px" alt="AVATAR">
													        </div>
													    </c:when>
													    <c:otherwise>
													    	<div></div>
													    </c:otherwise>
													</c:choose>
														<!-- 리뷰내용 -->
													<p class="stext-102 cl6" style="border-bottom: 1px solid grey;">${review.desces}</p>
													<br>
													<br>
													</c:forEach>
												</c:otherwise>
											</c:choose> 
											
											
											

											</div>
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
															<button type="button" class="btn btn-outline-secondary">${i}</button>
														</c:if>
														<c:if test="${i!=pageMaker.cri.currPage}">
															<button type="button" class="btn btn-outline-secondary"
																onclick="location.href='/front/buy/detail${pageMaker.searchQuery(i)}&seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}'">${i}</button>
														</c:if>
													</c:forEach>
													<!-- Next, Last -->
													<c:choose>
														<c:when test="${pageMaker.next && pageMaker.epageNo>0}">
															<button type="button" class="btn btn-outline-secondary"
																onclick="location.href='/front/buy/detail${pageMaker.searchQuery(pageMaker.epageNo+1)}&seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}'">
																&nbsp;&gt;</button>
														</c:when>
													</c:choose>
												</div>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script>
    
			    var images = document.querySelectorAll('.toggle-image');
			
			 // 모든 이미지에 대한 반복문을 사용하여 이벤트 리스너를 추가합니다.
			 images.forEach(function(image) {
			     // 이미지를 클릭했을 때 발생하는 클릭 이벤트에 대한 이벤트 리스너를 추가합니다.
			     image.addEventListener('click', function() {
			         // 모든 이미지에 대해 반복문을 사용하여 스타일을 초기화합니다.
			         images.forEach(function(otherImage) {
			             if (otherImage !== image) {
			                 otherImage.style.transform = 'none';
			             }
			         });
			
			         // 이미지의 현재 스타일을 가져옵니다.
			         var currentTransform = window.getComputedStyle(this).getPropertyValue('transform');
			
			         // 이미지의 크기를 1.5배로 조절하는 스타일을 적용합니다.
			         if (currentTransform === 'none') {
			             this.style.transform = 'scale(1.5)';
			         } else {
			             // 이미지가 이미 확대된 경우 원래 크기로 복구합니다.
			             this.style.transform = 'none';
			         }
			     });
			 });
			    
			    /* ======================================================================================== */
			  
</script>

		<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15"></div>
	</section>


	<!-- 다른 상품들 보여주는 곳 -->
	<!-- Related Products -->
	<section class="sec-relate-product bg0 p-t-45 p-b-105">
		<div class="container">
			<div class="p-b-45">
				<h3 class="ltext-106 cl5 txt-center">연관상품 보기</h3>
			</div>

			<!-- 슬라이드 영역 -->
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
													<a href="#"
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
	</section>



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
												href="images/product-detail-03.jpg"> <i class="fa fa-expand"></i>
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


	<%@ include file="/WEB-INF/views/include/front/footer.jsp"%>

</body>
</html>