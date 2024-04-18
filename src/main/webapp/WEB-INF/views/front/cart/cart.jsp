<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoping Cart</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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

<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>


<style type="text/css">
tr td, tr th {
	text-align: center;
}

/* tr td:not(:last-of-type){
		border-right: 1px solid red;
	} */
.test {
	margin: auto;
}

.item-checkbox, #checkAll {
    margin: auto; /* 가운데 정렬 */
    display: block; /* 가운데 정렬을 위해 블록 요소로 변경 */
}


</style>

</head>
<body class="animsition">


	<%@ include file="/WEB-INF/views/include/front/header.jsp"%>


	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="/front/main/main" class="stext-109 cl8 hov-cl1 trans-04"> 메인화면
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> <span class="stext-109 cl4"> 장바구니 </span>
		</div>
	</div>


	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
								<th><input type="checkbox" id="checkAll"></th>
									<th class="">상품</th>
									<th class="">상품명</th>
									<th class="">가격</th>
									<th class="">수량</th>
									<th class="">구매가</th>
									<th class="">선택</th>
								</tr>
								<c:choose>
									<c:when test="${empty list}">
										<tr>
											<td colspan="7">등록된 상품이 없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${list}" var="list">
											<tr class="table_row">
											<td><input type="checkbox" name="selectedItems" class="item-checkbox" data-price="${list.crt_price}" data-total-price="${list.total_price}"
											data-img="${list.crt_img}" data-path="${list.crt_path}" data-corp_nm="${list.crt_corp_nm}" data-sel_nm="${list.crt_sel_nm}"
											data-count="${list.crt_count}" data-seq_sel="${list.seq_sel}" data-seq_prd="${list.seq_prd}" data-seq_crt_dtl="${list.seq_crt_dtl}" ></td>
												<td style="width: 15%">
													<div class="how-itemcart1 test">
														<img  src="${list.crt_path}/${list.crt_img}" alt="IMG">
													</div>
												</td>
												<td style="width: 25%;text-align: left;"><p style="font: bold; font-size: 1.1em;">${list.crt_corp_nm}</p>${list.crt_sel_nm}</td>
												<td style="width: 10%" class="comma">${list.crt_price}</td>
												<td style="width: 20%">
													<div class="wrap-num-product flex-w m-l-auto m-r-0 test">
														<div
															class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m"
															id="btn-product-down-${list.seq_crt_dtl}">
															<i class="fs-16 zmdi zmdi-minus"></i>
														</div>
														<input class="mtext-104 cl3 txt-center num-product"
															type="number" name="num-product${list.seq_crt_dtl}"
															value="${list.crt_count}"
															data-seq-crt-dtl="${list.seq_crt_dtl}">
														<div
															class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m"
															id="btn-product-up-${list.seq_crt_dtl}">
															<i class="fs-16 zmdi zmdi-plus"></i>
														</div>
													</div> 
											
												</td>
												<td style="width: 10%" class="total-price comma">${list.total_price}</td>
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
													
													window.onload = function(){

													// 화면에 표시된 모든 숫자에 쉼표 추가하기
													addCommasToCostElements();
													}
													
													
													 $(document).ready(function() {
														 $(".item-checkbox").prop('checked', true);
														 $("#checkAll").prop('checked', true);
														 
													        // TH 셀에 있는 체크박스를 클릭하면 모든 상품의 체크박스가 선택되도록 함
													        $("#checkAll").change(function() {
													            $(".item-checkbox").prop('checked', $(this).prop('checked'));
													            updateTotalPrice();
													        });

													        // 각 체크박스가 변경될 때 호출되는 함수
													        $(".item-checkbox").change(function() {
													            updateTotalPrice(); // 총액 업데이트

													            // 아래에 다른 로직 추가 가능
													        });

													        
													    });
													 
													// 총액을 업데이트하는 함수
												        function updateTotalPrice() {
												            var totalPrice = 0;
												            // 체크된 각 항목에 대해 가격과 수량을 고려하여 총액을 계산
												            $(".item-checkbox:checked").each(function() {
												                var price = parseFloat($(this).data('price')); // 가격 가져오기
												                var quantity = parseInt($(this).closest('.table_row').find('.num-product').val()); // 수량 가져오기
												                totalPrice += price * quantity; // 가격과 수량을 곱해서 총액에 추가
												            });
												            // 업데이트된 총액을 화면에 표시
												            $('#total').html(numberWithCommas(totalPrice) + "원").addClass('comma');
												        }
													
													
													
													
			                                            $(document).ready(function() {
			                                                $('#btn-product-down-${list.seq_crt_dtl}').on('click', function() {
			                                                    var inputElement = $(this).siblings('.num-product');
			                                                    var newValue = parseInt(inputElement.val()) - 1;
			                                                    newValue = newValue < 1 ? 1 : newValue;
			                                                    inputElement.val(newValue);
			                                                    updateCart(inputElement);
			                                                    
			                                                    var checkbox = $(this).closest('tr').find('.item-checkbox');
			                                                    checkbox.data('count', newValue);
			                                                    checkbox.data('total-price', newValue * parseFloat(checkbox.data('price')));
			                                                });
			
			                                                $('#btn-product-up-${list.seq_crt_dtl}').on('click', function() {
			                                                    var inputElement = $(this).siblings('.num-product');
			                                                    var newValue = parseInt(inputElement.val()) + 1;
			                                                    inputElement.val(newValue);
			                                                    updateCart(inputElement);
			                                                    
			                                                    var checkbox = $(this).closest('tr').find('.item-checkbox');
			                                                    checkbox.data('count', newValue);
			                                                    checkbox.data('total-price', newValue * parseFloat(checkbox.data('price')));
			                                                });
			
			                                                function updateCart(inputElement) {
			                                                    var newValue = inputElement.val();
			                                                    var seqCrtDtl = inputElement.data('seq-crt-dtl');
			
			                                                    $.ajax({
			                                                        type: 'POST',
			                                                        url: '/front/cart/update',
			                                                        contentType: 'application/json',
			                                                        data: JSON.stringify({
			                                                            crt_count: newValue,
			                                                            seq_crt_dtl: seqCrtDtl
			                                                        }),
			                                                        success: function(response) {
			                                                            if (response.success) {
			                                                                console.log('장바구니 업데이트 성공');
			                                                                var updatedTotalPrice = response.total_price;
			                                                                console.log(updatedTotalPrice);
			                                                                var totalPriceElement = inputElement.closest('.table_row').find('td.total-price');
			                                                                totalPriceElement.html(numberWithCommas(updatedTotalPrice)+'원');
			                                                                
			
			                                                                updateTotalPrice(); // 수정된 부분: 수량이 변경되었을 때 총액 업데이트
			
			                                                            } else {
			                                                                console.log('장바구니 업데이트 실패');
			                                                            }
			                                                        },
			                                                        error: function(xhr, status, error) {
			                                                            console.error('장바구니 업데이트 중 에러 발생:', error);
			                                                        }
			                                                    });
			                                                }
			                                            });
                                       			 </script>
												<td style="width: 15%">
													<a href="/front/cart/deleteProc?seq_crt_dtl=${list.seq_crt_dtl}"
													class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">삭제</a>
												</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
								
								
							</table>
						</div>
						
								
						
						
						<div
							class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-w flex-m m-r-20 m-tb-5">
								<!-- <input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Coupon Code"> -->
								<a href="#" id="deleteSelectedItems"
								class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
								선택 상품 삭제 </a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="/front/buy/list?category1=1"
									class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
									추가상품 더보기 </a>
							</div>
							<!-- <div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
								수정
							</div> -->
						</div>
						<script type="text/javascript">
						$(document).ready(function() {
						    // 선택 상품 삭제 버튼을 클릭했을 때
						    $("#deleteSelectedItems").click(function() {
						    	var selectedItems = []; // 선택된 상품의 ID를 저장할 배열

						        // 선택된 상품의 체크박스를 찾아서 반복
						        $(".item-checkbox:checked").each(function() {
						            var seqCrtDtl = $(this).data('seq_crt_dtl'); // 선택된 상품의 ID 가져오기
						            selectedItems.push(seqCrtDtl); // 선택된 상품의 ID를 배열에 추가
						        });

						        // 선택된 상품이 없는 경우
						        if (selectedItems.length === 0) {
						            alert("선택된 상품이 없습니다.");
						            return;
						        }

						        // AJAX를 사용하여 선택된 상품 삭제 요청 보내기
						        $.ajax({
						            type: 'POST',
						            url: '/front/cart/deleteSelectedItems', // 선택된 상품들을 삭제하는 URL로 변경해야 합니다.
						            contentType: 'application/json',
						            data: JSON.stringify(selectedItems), // 선택된 상품들의 ID를 서버로 전송
						            success: function(response) {
						                if (response.success) {
						                    console.log('선택된 상품 삭제 성공');
						                    // 삭제에 성공하면 화면을 새로고침하여 변경된 상태를 반영합니다.
						                    location.reload();
						                } else {
						                    console.log('선택된 상품 삭제 실패');
						                }
						            },
						            error: function(xhr, status, error) {
						                console.error('선택된 상품 삭제 중 에러 발생:', error);
						            }
						        });
						    });
						});
						</script>
						
						
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div
						class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							장바구니
							<!-- Cart Totals -->
						</h4>
						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2"> 배송비: </span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2"> 0원 </span>
							</div>
						</div>



						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2"> 총금액: </span>
							</div>
							<div class="size-209 p-t-1">
								<c:set var="row_sum" value="0"></c:set>
								<c:forEach items="${list}" var="list">
									<c:set var="row_sum" value="${row_sum + list.total_price }"></c:set>
								</c:forEach>
								<span id="total" class="mtext-110 cl2 comma"><c:out
										value="${row_sum}" /></span>
							</div>
						</div>

						<button id="checkoutButton" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">주문완료/결제하기</button>
							
							
					<script>
					$(document).ready(function() {
					    $('#checkoutButton').click(function() {
					        // 버튼 비활성화
					        $(this).prop('disabled', true);

					        // 선택한 상품 정보 가져오기
					        var selectedItems = [];
					        $('.item-checkbox:checked').each(function() {
					            var crt_price = $(this).data('price');
					            var total_price = $(this).data('total-price');
					            var seq_sel = $(this).data('seq_sel');
					            var seq_prd = $(this).data('seq_prd');
					            var crt_img = $(this).data('img');
					            var crt_path = $(this).data('path');
					            var crt_corp_nm = $(this).data('corp_nm');
					            var crt_sel_nm = $(this).data('sel_nm');
					            var crt_count = $(this).data('count');

					            selectedItems.push({ crt_price: crt_price, total_price: total_price, crt_corp_nm: crt_corp_nm, crt_sel_nm: crt_sel_nm
					                , crt_img: crt_img, crt_path: crt_path, crt_count: crt_count, seq_sel: seq_sel, seq_prd: seq_prd });
					        });

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
					
					</div>
				</div>
			</div>
		</div>
	</form>
	

	<%@ include file="/WEB-INF/views/include/front/footer.jsp"%>

</body>
</html>