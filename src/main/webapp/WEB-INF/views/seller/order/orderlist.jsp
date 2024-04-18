<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>판매자 화면</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/css/vendor.bundle.base.css" />
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css" />
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="/seller/sellers/main/assets/css/style.css" />
<!-- End layout styles -->
<link rel="shortcut icon"
	href="/seller/sellers/main/assets/images/favicon.png" />

<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<style>
table {
	width: 100%;
	text-align: center;
	border: 1px solid #fff;
	border-spacing: 1px;
	font-family: "Cairo", sans-serif;
	margin: auto;
}

caption {
	font-weight: bold;
}

table td {
	padding: 10px;
	color: #333;
	background-color: #eee;
}

table th {
	background-color: black;
	color: #fff;
	padding: 10px;
}

tr {
	border: 1px solid #ffffff;
}

tr.tr:nth-child(even) td {
	background-color: #e1e4d4;
}

.primg {
	width: 150px;
	height: 150px;
}

.view, .delete {
	border: none;
	padding: 5px 10px;
	color: #fff;
	font-weight: bold;
}

.view {
	opacity: .8;
	background-color: #03a9f4;
}

.delete {
	opacity: .8;
	background-color: #e91e63;
}

.view:hover, .delete:hover {
	opacity: 1;
}

 .button-area {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
    }
    .button-area form {
        margin-top: 10px;
    }

  /* input 태그 스타일 */
    input[type="text"] {
        width: 200px;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        transition: border-color 0.3s ease;
    }

    input[type="text"]:focus {
        outline: none;
        border-color: dodgerblue;
    }

    /* select 태그 스타일 */
    select {
        width: 130px;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        appearance: none; /* remove default arrow in Firefox */
        -webkit-appearance: none; /* remove default arrow in Chrome and Safari */
        background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="12" height="8" viewBox="0 0 12 8"><path fill="%23000" fill-rule="evenodd" d="M6 8L0 0h12z"/></svg>') no-repeat; /* add custom arrow */
        background-position: right 10px center;
        background-size: 8px 5px;
        cursor: pointer;
    }

    select:focus {
        outline: none;
        border-color: dodgerblue;
    }
</style>

<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<%@ include file="/WEB-INF/views/include/seller/header.jsp"%>

		<!-- 화면부분 -->
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="page-header">
					<h3 class="page-title">주문관리</h3>
				</div>
				<div class="col-lg-12 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">주문목록</h4>

							<!-- ================================================================= -->
							<table>
								<thead>
									<tr>
										<th>이미지</th>
										<th>판매명</th>
										<th>판매가격</th>
										<th>수량</th>
										<th>구매자</th>
										<th>총액</th>
										<th>결제상태</th>
										<th>배송상태</th>
										<th>판매 등록일</th>
									</tr>
								</thead>
								<tbody>
								<c:choose>
					    <c:when test="${empty list}">
					        <tr>
					            <td colspan="9">구매된 상품이 없습니다.</td>
					        </tr>
					    </c:when>
					    <c:otherwise>
					        <c:forEach items="${list}" var="order">
					            <tr>
					                <td><img src="${order.detail_img}" width="150px" height="150px"></td>
					                <td >${order.buy_prd_nm}</td>
					                <td class="comma">${order.price}</td>
					                <td class="comma2">${order.count}</td>
					                <td class="asterisk">${order.cst_nm}</td>
					                <td class="comma3">${order.price * order.count}원</td>
					                <td>${order.cd_state_pay}</td>
					                <td>
					                    <div id="buttonArea_${order.seq_dtl}">
					                        ${order.cd_state_delivery}<br>
					                        <button type="button" id="showOption_${order.seq_dtl}">수정</button>
					                    </div>
					                    <form id="updateForm_${order.seq_dtl}" method="post" action="/seller/order/deliveryProc" style="display: none;">
					                        <input type="hidden" name="seq_dtl" value="${order.seq_dtl}">
					                        <select name="deliveryStatus" id="deliveryStatus_${order.seq_dtl}">
					                            <option value="N" <c:if test="${order.cd_state_delivery eq 'N'}">selected</c:if>>배송 전</option>
					                            <option value="C" <c:if test="${order.cd_state_delivery eq 'C'}">selected</c:if>>배송 중</option>
					                            <option value="Y" <c:if test="${order.cd_state_delivery eq 'Y'}">selected</c:if>>배송 완료</option>
					                        </select>
					                        <button type="submit">등록</button>
					                    </form>
					                </td>
					                <td>${order.dt_reg}</td>
					            </tr>
					        </c:forEach>
					    </c:otherwise>
					</c:choose>
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

<script>
    // 수정 버튼 클릭 시 옵션 표시
    <c:forEach items="${list}" var="order">
        document.getElementById('showOption_${order.seq_dtl}').addEventListener('click', function() {
            document.getElementById('showOption_${order.seq_dtl}').style.display = 'none';
            document.getElementById('updateForm_${order.seq_dtl}').style.display = 'block';
        });
    </c:forEach>
</script>


<script>
    // 수정 버튼 클릭 시 옵션 표시
    <c:forEach items="${list}" var="order">
        document.getElementById('showOption_${order.seq_dtl}').addEventListener('click', function() {
            document.getElementById('showOption_${order.seq_dtl}').style.display = 'none';
            document.getElementById('updateForm_${order.seq_dtl}').style.display = 'block';
        });
    </c:forEach>
</script>

								</tbody>
							</table>
							
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
							
							function addCommasToCostElements2() {
							    // 모든 costElement 클래스 요소 가져오기
							    let costElements = document.getElementsByClassName("comma2");

							    // 모든 요소에 대해 반복
							    for (let i = 0; i < costElements.length; i++) {
							        let costElement = costElements[i];
							        
							        // 요소의 내용 가져오기
							        let costString = costElement.innerText;
							        
							        // 표시된 숫자 가져오기
							        let cost = parseFloat(costString.replace(/,/g, '').replace('개', ''));
							        
							        // 쉼표 추가된 숫자로 변환하여 다시 요소에 설정
							        costElement.innerText = numberWithCommas(cost) + "개";
							    }
							}
							function addCommasToCostElements3() {
							    // 모든 costElement 클래스 요소 가져오기
							    let costElements = document.getElementsByClassName("comma3");

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
							addCommasToCostElements2();
							addCommasToCostElements3();
							</script>
						
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->
			<!-- partial:../../partials/_footer.html -->
			<%@ include file="/WEB-INF/views/include/seller/footer.html"%>
			<!-- partial -->
		</div>
		<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script
		src="/seller/sellers/main/assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="/seller/sellers/main/assets/vendors/chart.js/Chart.min.js"></script>
	<script
		src="/seller/sellers/main/assets/vendors/jquery-circle-progress/js/circle-progress.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="/seller/sellers/main/assets/js/off-canvas.js"></script>
	<script src="/seller/sellers/main/assets/js/hoverable-collapse.js"></script>
	<script src="/seller/sellers/main/ssets/js/misc.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="/seller/sellers/main/assets/js/dashboard.js"></script>
	<!-- End custom js for this page -->
</body>
</html>
