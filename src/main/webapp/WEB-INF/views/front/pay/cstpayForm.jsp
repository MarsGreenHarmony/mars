<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" type="text/css" href="/pay/pay.css">
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


<link rel="icon" href="/data/common/favicon.ico" type="image/x-icon" />

<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/reset.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/common.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/layer/layer.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/layout/layout.css?ts=1664527143">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/goods/list.css?ts=1666156327">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/button.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/order/order.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/js/jquery/chosen/chosen.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/order/order.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/custom.css?ts=1663913816">


<!-- 동구밭 스타일 -->
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/donggu/donggu.css?ts=1705303957">


<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<script type="text/javascript" src="/js/front.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js">
	
</script>


<script>
	// 이메일 도메인을 선택할 때 호출되는 함수
	function updateEmailTextbox() {
		var emailDomainSelect = document.getElementById("emailDomain");
		var customEmailTextbox = document.getElementsByName("orderEmail")[0];

		// 선택된 도메인 가져오기
		var selectedDomain = emailDomainSelect.value;

		// 직접 입력을 선택한 경우에만 도메인을 추가
		if (selectedDomain !== "self") {
			// @ 뒤에 선택된 도메인 추가
			customEmailTextbox.value = customEmailTextbox.value.split('@')[0]
					+ '@' + selectedDomain;
		} else {
			// 직접 입력을 선택한 경우에는 빈 값으로 설정
			customEmailTextbox.value = "";
		}
	}

	function toggleCheckbox(checkbox) {
		var maillingLabel = document.getElementById('maillingLabel');
		if (checkbox.checked) {
			maillingLabel.classList.add('checked');
		} else {
			maillingLabel.classList.remove('checked');
		}
	}

	// 배송 메시지를 선택할 때 호출되는 함수
	function updateDeliveryMessage() {
		var selectElement = document.getElementById("mbrMemoCont");
		var inputElement = document.querySelector("input[name='mbrMemoCont']");

		// 선택된 옵션의 값 가져오기
		var selectedOption = selectElement.value;

		// 선택된 옵션이 "직접 입력하기"인 경우에만 입력 상자를 표시
		if (selectedOption === "O2O") {
			inputElement.style.display = "block";
		} else {
			// 다른 옵션이 선택된 경우 입력 상자를 숨김
			inputElement.style.display = "none";
		}
	}

	// 페이지 로드 시 실행
	window.onload = function() {
		// 이메일 도메인 선택 상자에 변경 이벤트 리스너 추가
		var emailDomainSelect = document.getElementById("emailDomain");
		emailDomainSelect.addEventListener("change", updateEmailTextbox);

		// 배송 메시지 선택 상자에 변경 이벤트 리스너 추가
		var selectElement = document.getElementById("mbrMemoCont");
		selectElement.addEventListener("change", updateDeliveryMessage);

		// 초기에도 이메일 주소와 배송 메시지 상태를 설정해주어야 함
		updateEmailTextbox();
		updateDeliveryMessage();
	};
</script>



<script>
	$(document).ready(function() {
		$('.js_shipping').click(function(e) {
			e.preventDefault();
			$('.mypage_shipping_cont').toggle();
		});

		$('.btn_close_shipping').click(function() {
			$('.mypage_shipping_cont').hide();
		});
	});
</script>




<script>
	function openModal() {
		document.getElementById('myModal').style.display = 'block';
	}

	// 모달 닫기
	function closeModal() {
		document.getElementById('myModal').style.display = 'none';
	}

	// 모달 외부 클릭 시 닫기
	window.onclick = function(event) {
		var modal = document.getElementById('myModal');
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}

	function toggleCheckbox(checkbox) {
		var deliveryState = document.getElementById('dev_state_checkbox');
		if (checkbox.checked) {
			//   deliveryState.classList.add('checked');
			document.getElementById("test").value = "test";
			alert("기존 배송지로 하시겠습니까?")
		} else {
			//deliveryState.classList.remove('checked');
			document.getElementById("test").value = "";
		}

	}
	function checkField() {
		if (document.addjoin.dev_nm.value == "") {
			alert("배송지 이름을 입력하세요");
			document.addjoin.dev_nm.focus();
			return false; // 폼 제출을 중단하고 함수를 빠져나갑니다.
		} else if (document.addjoin.dev_hm.value == "") {
			alert("받으실 분을 입력하세요");
			document.addjoin.dev_hm.focus();
			return false;
		} else if (document.addjoin.postcode.value == "") {
			alert("우편번호를 입력하세요");
			document.addjoin.postcode.focus();
			return false;
		} else if (document.addjoin.address.value == "") {
			alert("상세 주소를 입력하세요");
			document.addjoin.address.focus();
			return false;
		} else if (document.addjoin.phone_nm.value == "") {
			alert("휴대폰 번호를 입력하세요");
			document.addjoin.phone_nm.focus();
			return false;
		}
		// 모든 필드가 유효하면 true를 반환하여 폼 제출을 허용합니다.
		return true;
	}

	//선택된 배송지 버튼 클릭 시
</script>


<style>
.order_cont .member_email select {
	height: 20px;
}

.mypage_shipping_cont {
	width: 800px;
	height: 500px;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: white;
	border: 1px solid #ccc;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	z-index: 1000;
	display: none;
	overflow: auto;
}

.left_table_type .postcode input {
	background: #979797;
	width: 100px;
	color: #FFF;
	font-weight: bold;
	margin-left: 20px;
	margin-top: 10px;
}

.btn_close_shipping {
	background-color: #fff;
}

#addr1 {
	margin-top: -6px;
}

.left_table_type {
	margin-top: 20px;
	border-top: 1px solid #dbdbdb;
	border-right: 1px solid #dbdbdb;
}
/* 배송지 추가 모달 내용 스타일 */
.modal-content {
	background-color: #fefefe;
	padding: 20px;
	border: 1px solid #888;
	width: 100%;
	height: 100%;
}

.deliverytable .table_left td {
	border-right: 1px solid #dbdbdb;
}

.order_cont .table_left th {
	padding: 10px 10px 10px 10px;
}

.ly_cont .btn_center_box {
	margin: 10px 0 10px 0;
	text-align: center;
	border-right: 1px solid #dbdbdb;
}

.
order_table_type .table_left td {
	padding: 12px 1px 10px 15px;
}

.setbutton {
	border: 1px solid #ccc;
	background-color: #979797;
	padding: 3px 15px;
	font-size: 13px;
	cursor: pointer;
	color: #fff;
}

.btn_close_shipping {
	border: 1px solid #ccc;
	background-color: #979797;
	font-size: 13px;
	cursor: pointer;
	color: #fff;
	padding: 3px 15px;
}

.cancelbutton {
	border: 1px solid #ccc;
	background-color: #979797;
	font-size: 13px;
	cursor: pointer;
	color: #fff;
	padding: 3px 15px;
}

.submitbutton {
	border: 1px solid #ccc;
	background-color: #979797;
	font-size: 13px;
	cursor: pointer;
	color: #fff;
	padding: 3px 15px;
}
</style>
</head>
<body class="body-order body-order pc">
<%@ include file="/WEB-INF/views/include/front/header.jsp"%>
<form id="frmMain" method="POST">
	<div class="sub_content">
		<div class="order_wrap">
				<div class="order_tit">
					<h2>주문서작성/결제</h2>
					<ol>
						<li><span>01</span> 장바구니 <span><img
								src="https://cdn-pro-web-241-113.cdn-nhncommerce.com/donggubat1_godomall_com/data/skin/front/moment_dpx_0923/img/member/icon_join_step_off.png"
								alt="장바구니완료"></span></li>
						<li class="page_on"><span>02</span> 주문서작성/결제<span><img
								src="https://cdn-pro-web-241-113.cdn-nhncommerce.com/donggubat1_godomall_com/data/skin/front/moment_dpx_0923/img/member/icon_join_step_on.png"
								alt="주문서작성/결제진행 중"></span></li>
						<li><span>03</span> 주문완료</li>
					</ol>
				</div>
				<div class="order_cont" style="margin-left: 50px;">

					<div class="pay_main">
						<div class="order_view_info">
							<div class="order_info">
								<div class="order_zone_tit">
									<h4>주문자 정보</h4>
								</div>
								<div class="order_table_type">
									<table class="table_left">
										<colgroup>
											<col style="width: 15%;">
											<col style="width: 85%;">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">&nbsp;&nbsp;<span class="important">주문하시는
														분</span>
												</th>
												<td><input type="text" name="orderName" id="orderName"
													value="${customerDto.cst_nm}" data-pattern="gdEngKor"
													maxlength="20" data-listener-added_ece72da6="true"></td>
											</tr>
											<tr>
												<th scope="row">&nbsp;&nbsp;<span class="important">휴대폰
														번호</span></th>
												<td><input type="text" id="moblieNum"
													name="orderCellPhone" value="${customerDto.phone}"
													maxlength="20"></td>
											</tr>
											<tr>
												<th scope="row">&nbsp;&nbsp;<span class="important">이메일</span></th>
												<td class="member_email"><input type="text"
													name="orderEmail" value="${customerDto.cst_email}">
													<!--이메일쿼리--> <select id="emailDomain" class="chosen-select">
														<option value="self">직접입력</option>
														<option value="naver.com">naver.com</option>
														<option value="daum.net">daum.net</option>
														<option value="gmail.com">gmail.com</option>
														<option value="nate.com">nate.com</option>
														<option value="hanmail.com">hanmail.com</option>
												</select>
													<div
														class="chosen-container chosen-container-single chosen-container-single-nosearch"
														style="width: 120px;" title id="emailDomain_chosen">

														<div>
															<b></b>
														</div>
														<div class="chosen-drop">
															<div class="chosen-search">
																<input type="text" autocomplete="on">
															</div>
															<ul class="chosen-results"></ul>
														</div>
													</div></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>


					<!--배송정보-->
					<div class="delivery_info">
						<div class="order_zone_tit">
							<h4>배송정보</h4>
						</div>

						<div class="order_table_type shipping_info">
							<table class="table_left shipping_info_table">
								<colgroup>
									<col style="width: 15%;">
									<col style="width: 85%;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">배송지 확인</th>
										<td>
											<div class="form_element">
												<input type="text" id="delivery" value="delivery" readonly>
												<button class="btn_gray_list">
													<a href="#"
														class="btn_gray_small btn_open_layer js_shipping"><span>배송지선택</span></a>
												</button>
											</div>


											<div class="mypage_shipping_cont" style="display: none;">
												<div class="mypage_table_type">
													<h5
														style="margin-top: 10px; margin-bottom: 20px; text-align: center;">배송지
														목록</h5>
													<div class="deliverytable">
														<table style="margin-right: 10px;">
															<!-- 배송지 목록 테이블 내용 -->
															<colgroup>
																<col style="width: 12%">
																<col style="width: 12%">
																<col style="width: 30%">
																<!-- 주소 열의 너비 늘림 -->
																<col style="width: 15%">
																<!-- 받으실 분 열의 너비 줄임 -->
																<col style="width: 5%">
															</colgroup>
															<c:choose>
																<c:when test="${empty _deliveryDto}">
																	<tr>
																		<td colspan="8"><p class="no_data">배송지 목록이
																				없습니다.</p></td>
																	</tr>
																</c:when>
																<c:otherwise>
																	<thead>
																		<tr style="border-top: 1px solid #dbdbdb;">
																			<th>선택</th>
																			<th>배송지이름</th>
																			<th>주소</th>
																			<th>받으실 분</th>
																			<th>연락처</th>
																		</tr>
																	</thead>
																	<tbody>
																		<c:forEach items="${_deliveryDto}" var="delivery">
																			<tr>
																				<td>
																					<button type="button"
																						class="setbutton btn_close_shipping"
																						data-delivery-id="${delivery.seq_dev}">선택</button>
																				</td>
																				<td><c:if test="${delivery.dev_state == 'Y'}">
																						<span style="font-weight: bold; color: blue;"><br>(기본배송지)</span>
																					</c:if>${delivery.dev_nm}</td>

																				<td>(${delivery.postcode})<br>${delivery.address}<br>${delivery.address_dtl}</td>
																				<td>${delivery.dev_hm}</td>
																				<td style="border-right: 1px solid #dbdbdb;">${delivery.phone_nm}</td>
																			</tr>
																		</c:forEach>
																	</tbody>
																</c:otherwise>
															</c:choose>
															<!-- 이 부분을 추가 -->
														</table>


													</div>
													<div class="btn_center_box">
														<button class="btn_close_shipping">닫기</button>

														<div class="btn_center_box">
															<button type="button" class="btn_add_shipping" onclick="openModal()">배송지
																추가</button>
														</div>

													</div>
												</div>
											</div> <!-- 배송지 추가 모달 -->
												
					

											
									<tr>
										<th scope="row"><span class="important">받으실분</span></th>
										<td><input type="text" name="receiverName"
											data-pattern="gdEngKor" maxlength="20"
											value="${deliveryDto.dev_hm}">
											<ul>

											</ul></td>

									</tr>

									<tr>
										<th scope="row"><span class="important">받으실 곳</span></th>
										<td class="member_address">
											<div class="address_postcode">

												<input type="text" id="newpostcode" name="newpostcode" size="5"
													placeholder="도로명" value="${deliveryDto.postcode}" /> <label
													for="newaddr1"></label> <input type="text" id="newaddr1"
													name="newaddress" value="${deliveryDto.address}"> <input
													type="hidden" id="roadAddr" name="roadAddr" /> <span
													id="guide" style="color: #999; display: none"></span> <label
													for="newaddr2"></label> <input type="text" id="newaddr2"
													name="newaddress_dtl" placeholder="상세주소"
													value="${deliveryDto.address_dtl}" /> <input type="hidden"
													id="newextraAddress" name="extraAddress" />
												<div class="postcode">
													<input type="button" onclick="execDaumPostcode()"
														value="우편번호 찾기" />
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<th scope="row"><span class="important">휴대폰 번호</span></th>
										<td><input type="text" id="newreceiverCellPhone"
											name="receiverCellPhone" value="${deliveryDto.phone_nm}">
										</td>
									</tr>


									<tr>
										<th scope="row">배송 메시지</th>
										<td><select id="mbrMemoCont" class="selH28"
											title="택배배송 메시지를 선택해주세요." style="width: 350px"
											data-attr="배송요청사항^배송메세지">
												<option value="MH">배송메시지를 선택해주세요.</option>

												<option value="10">부재시 경비실에 맡겨주세요.</option>

												<option value="20">부재시 문앞에 놓아주세요.</option>

												<option value="30">파손의 위험이 있는 상품이오니, 배송 시 주의해주세요.</option>

												<option value="40">배송전에 연락주세요.</option>

												<option value="50">택배함에 넣어주세요.</option>

												<option value="O2O">직접 입력하기</option>

										</select> <input type="text" name="mbrMemoCont" value=""
											class="inpH28 mgT6" title="배송메시지를 입력해주세요."
											style="width: 500px;" data-listener-added_ac5f2c5d="true">
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					
					
					<div class="cart_cont_list">
						<div class="order_cart_tit">
							<h3>주문상세내역</h3>
						</div>
						<!-- //order_cart_tit -->

						<div class="order_table_type">
							<!-- 장바구니 상품리스트 시작 -->
							<table>
								<colgroup>
									<col>
									<!-- 상품명/옵션 -->
									<col style="width: 5%">
									<!-- 수량 -->
									<col style="width: 10%">
									<!-- 상품금액 -->
									<col style="width: 13%">
									<!-- 할인/적립 -->
									<col style="width: 10%">
									<!-- 합계금액 -->
									<col style="width: 10%">
									<!-- 배송비 -->
								</colgroup>
								<thead>
									<tr>
										<th>상품/옵션 정보</th>
										<th>수량</th>
										<th>상품금액</th>
										<th>합계금액</th>
										<th>배송비</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${selectedItems}">
										<tr class="order-goods-layout" data-goodsno="1000000332">

											<td class="td_left">
												<div class="pick_add_cont">
													<span class="pick_add_img"> <a href="#"> <img
															src="${item.crt_path}/${item.crt_img}" width="40"
															alt="img" class="middle">
													</a>
													</span>
													<div class="pick_add_info">
														<p>${item.crt_corp_nm}</p>
														<em><a href="#">${item.crt_sel_nm}</a></em>
													</div>
												</div> <!-- //pick_add_cont --> <!-- //pick_add_list -->
											</td>

											<td class="td_order_amount">
												<div class="order_goods_num">

													<strong>${item.crt_count}개</strong>
												</div>
											</td>

											<td><strong class="order_sum_txt price comma">${item.crt_price}</strong>
											</td>

											<td><strong class="order_sum_txt comma">${item.total_price}</strong></td>

											<td class="td_delivery">3만원 이상 무료배송<br> 0원 <br>
												(택배-선결제)
											</td>
										</tr>
									</c:forEach>


								</tbody>
							</table>
							<!-- 장바구니 상품리스트 끝 -->
						</div>
					</div>
					
					
					<div class="btn_left_box">
						<em>
							<button type="button" class="btn_cart"
								style="border-bottom: 1px solid #999999;"
								onclick="location.href='/front/buy/cart'">->장바구니로 가기</button>
						</em>
					</div>
					
					<div class="price_sum">
						<div class="price_sum_cont">
							<div class="price_sum_list">
								<c:set var="row_sum" value="0"></c:set>
								<c:forEach items="${selectedItems}" var="list">
									<c:set var="row_sum" value="${row_sum + list.total_price }"></c:set>
								</c:forEach>
								<dl>
									<dt>
										총 <strong>${fn:length(selectedItems)}</strong> 개의 상품금액
									</dt>
									<dd>
										<strong class="comma"><c:out value="${row_sum}" /></strong>
									</dd>
								</dl>

					

								<span><img
									src="https://cdn-pro-web-241-113.cdn-nhncommerce.com/donggubat1_godomall_com/data/skin/front/moment_dpx_0923/img/order/order_price_plus.png"
									alt="더하기"></span>
								<dl>
									<dt>배송비</dt>
									<dd>
										<strong>0</strong>원
									</dd>
								</dl>
								<span><img
									src="https://cdn-pro-web-241-113.cdn-nhncommerce.com/donggubat1_godomall_com/data/skin/front/moment_dpx_0923/img/order/order_price_total.png"
									alt="합계"></span>
								<dl class="price_total">
									<dt>합계</dt>
									<dd>
										<strong class="comma"><c:out value="${row_sum}" /></strong>
									</dd>
								</dl>
							</div>

						</div>
						<!-- //price_sum_cont -->
					</div>
					
				</div>
		</div>
	</div>
	
						<c:forEach items="${selectedItems}" var="dto" varStatus="status">
					    <input type="hidden" name="buyDtlDtoList[${status.index}].seq_sel" value="${dto.seq_sel}" />
					    <input type="hidden" name="buyDtlDtoList[${status.index}].seq_prd" value="${dto.seq_prd}" />
					    <input type="hidden" name="buyDtlDtoList[${status.index}].detail_img" value="${dto.crt_path}/${dto.crt_img}" />
					    <input type="hidden" name="buyDtlDtoList[${status.index}].price" value="${dto.crt_price}" />
					    <input type="hidden" name="buyDtlDtoList[${status.index}].buy_prd_nm" value="${dto.crt_sel_nm}" />
					    <input type="hidden" name="buyDtlDtoList[${status.index}].count" value="${dto.crt_count}" />
					</c:forEach>
				
					    <input type="hidden" name="t_price" value="${row_sum}">
	

	 <div class="btn_center_box">
		<button class="btn_order_buy order-buy" id="btnPay" type="button">
			<em>결제하기</em>
		</button>
	</div> 
</form>

<!-- 화면기준 끝 -->

<div style="width: 500px; height: 500px; margin: auto;" id="myModal" class="modal">
<div class="modal-content">
	<form name="addjoin" action="/front/pay/deliveryProc" onsubmit="return checkField()" method="post">
<!-- 배송지 추가 모달 내용 -->
	<input type="hidden" name="mode" value="shipping_regist">
	<input type="hidden" name="sno" value=""> <input
		type="hidden" name="shippingNo" value="">
	<h6>배송지 등록</h6>
	<div class="ly_cont">
		<div class="scroll_box">

			<div class="left_table_type">
				<table>
					<colgroup>
						<col style="width: 20%;">
						<col style="width: 80%;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><span class="important">배송지
									이름</span></th>
							<td><input type="text" id="dev_nm"
								name="dev_nm" value=""></td>
						</tr>
						<tr>
							<th scope="row">&nbsp;&nbsp;&nbsp;&nbsp;<span
								class="important">받으실 분</span></th>
							<td><input type="text" name="dev_hm"
								maxlength="20" value=""></td>
						</tr>
						<tr>
							<th scope="row">&nbsp;&nbsp;&nbsp;&nbsp;<span
								class="important">받으실 곳</span></th>
							<td class="member_address">
								<div class="address_postcode">
									<input type="text" id="postcode" name="postcode"
										size="5" placeholder="도로명" /> <label for="addr1"></label>
									<input type="text" id="addr1" name="address_dtl"
										placeholder="상세주소" /> <input type="hidden"
										id="roadAddr" name="roadAddr" /> <span
										id="guide" style="color: #999; display: none"></span>
									<label for="addr2"></label> <input type="text"
										id="addr2" name="address"> <input
										type="hidden" id="extraAddress"
										name="extraAddress" />
									<div class="postcode">
										<input type="button" onclick="execDaumPostcode()"
											value="우편번호 찾기" />
									</div>
								</div>
							</td>
						</tr>

						<tr>
							<th scope="row">&nbsp;&nbsp;&nbsp;&nbsp;<span
								class="important">휴대폰번호</span></th>
							<td><input type="text" id="shippingMobile"
								name="phone_nm" value=""></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="form_element"></div>
			<input id="test" name="test"> <input
				id="dev_state_checkbox" type="checkbox"
				name="dev_state" value="Y"
				style="width: 15px; visibility: visible; position: relative; float: left;"
				onclick="toggleCheckbox(this);"> 기본 배송지로 설정합니다.

		</div>
	</div>
	<!-- 배송지 추가 내용 입력 폼 -->
	<!-- 이하 생략 -->
	<div class="btn_center_box">
		<button type="button" class="cancelbutton"
			onclick="closeModal()">취소</button>
				<button type="submit" class="submitbutton">저장</button>
			</div>
		</form>
	</div>
</div> <!--결제폼 기본 배송지 select  -->

	<script type="text/javascript">
	
	$(document).ready(function() {
		$("#btnPay").on("click", function() {

			$.ajax({
				url: "/front/payup/orderProcess",
				type: "POST",
				dataType: 'json',
	            data: $("#frmMain").serialize(), // JSON 형태로 데이터 전송
	            success: function(data) {
					$("input[name=ordr_idxx]").val(data.ordr_idxx);
					$("input[name=good_name]").val(data.good_name);
					$("input[name=good_mny]").val(data.good_mny);
					$("input[name=buyr_name]").val(data.buyr_name);
					$("input[name=site_cd]").val(data.site_cd);
					
					jsf__pay();
				},
				error: function(data) {
					console.log("오더프로세스 실패");
				}
				
			});
		});
	});
	</script>
	
	<script type="text/javascript">
		function m_Completepayment(FormOrJson, closeEvent) {
			var frm = document.kcp_order_info;
			GetField(frm, FormOrJson);
			//console.log(frm);
			if (frm.res_cd.value == "0000") {
				frm.action = "/front/payup/payProcess";
				frm.submit();
				closeEvent();
			}
			else {
				alert("[" + frm.res_cd.value + "] " + frm.res_msg.value);
				closeEvent();
			}
		}
		
		function jsf__pay() {
			try {
				var form = document.kcp_order_info;
				KCP_Pay_Execute(form);
			}
			catch (e) {	}
		}
	</script>
	<script type="text/javascript" src="https://testpay.kcp.co.kr/plugin/payplus_web.jsp"></script>
	<form name="kcp_order_info" method="post" accept-charset="utf-8">
		<input type="hidden" name="ordr_idxx" value="">
		<input type="hidden" name="good_name" value="">
		<input type="hidden" name="good_mny" value="">
		<input type="hidden" name="buyr_name" value="">
		<input type="hidden" name="site_cd" value="">
		
		<input type="hidden" name="req_tx" value="pay">
		<input type="hidden" name="pay_method" value="100000000000">
		<input type="hidden" name="site_name" value="payup" />
		<!-- <input type="hidden" name="kakaopay_direct" value="Y"> -->
		
		<input type="hidden" name="res_cd" value="" />
		<input type="hidden" name="res_msg" value="" />
		<input type="hidden" name="enc_info" value="" />
		<input type="hidden" name="enc_data" value="" />
		<input type="hidden" name="ret_pay_method" value="" />
		<input type="hidden" name="tran_cd" value="" />
		<input type="hidden" name="use_pay_method" value="" />
		<input type="hidden" name="buyr_mail" value="">
		<input type="hidden" name="ordr_chk" value="" />
		<input type="hidden" name="good_expr" value="0">
		<input type="hidden" name="module_type" value="01" />
		<input type="hidden" name="currency" value="WON" />
	</form>
	
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
	</script>




	<script>
	 var _deliveryDto = [
	        <c:forEach items="${_deliveryDto}" var="delivery" varStatus="loop">
	            {
	                seq_dev: ${delivery.seq_dev},
	                dev_hm: "${delivery.dev_hm}",
	                postcode: "${delivery.postcode}",
	                address: "${delivery.address}",
	                address_dtl: "${delivery.address_dtl}",
	                phone_nm: "${delivery.phone_nm}"
	            }<c:if test="${!loop.last}">,</c:if>
	        </c:forEach>
	    ];

	    // 선택된 배송지 버튼 클릭 시
	    $(document).on('click', '.setbutton', function(event) {
	        var deliveryId = $(this).data('delivery-id');
	        
	        // _deliveryDto에서 해당 seq_dev 값을 가진 항목 찾기
	        var selectedDelivery = _deliveryDto.find(function(delivery) {
	            return delivery.seq_dev === deliveryId;
	        });
	        
	        // 선택된 배송지의 정보를 입력 태그에 설정
	        $('input[name="receiverName"]').val(selectedDelivery.dev_hm);
	        $('#newpostcode').val(selectedDelivery.postcode);
	        $('#newaddr1').val(selectedDelivery.address);
	        $('#newaddr2').val(selectedDelivery.address_dtl);
	        $('#newreceiverCellPhone').val(selectedDelivery.phone_nm);
	        
	    });
	</script>
	<br>
	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/front/footer.jsp"%></body>
</html>