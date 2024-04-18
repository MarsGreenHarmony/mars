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
<title>Connect Plus</title>
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
	background-color: purple;
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
    
    .cal[data-value="정산완료"] {
    	color: green;
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
					<h3 class="page-title">매출관리</h3>
				</div>
				<div class="col-lg-12 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">정산목록</h4>

							<!-- ================================================================= -->
							<table class="type_01">
		<thead>
			<tr>
				<th>이미지</th>
				<th>판매명</th>
				<th>판매가격</th>
				<th>수수료(30%)</th>
				<th>개당정산금액</th>
				<th>판매수량</th>
				<th>총수수료(30%)</th>
				<th>총정산금액</th>
				<th>결제일</th>
				<th>정산상태</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr class="<c:out value="${list.cd_state_ccl}" />">
					<td><img alt="" src="${list.detail_img}" style="width: 100px;height: 100px"> </td>
					<td>
					${list.buy_prd_nm}</td>
					<td  class="comma">${list.price}</td>
					<td class="comma"><fmt:formatNumber type="number" maxFractionDigits="0"  value="${(list.price/10)*3}" /></td>
					<td class="comma"><fmt:formatNumber type="number" maxFractionDigits="0"  value="${list.price - (list.price/10)*3}" /></td>
					<td >${list.count} 개</td>
					<td class="comma"><fmt:formatNumber type="number" maxFractionDigits="0"  value="${((list.price/10)*3) * list.count}" /></td>
					<td class="comma"><fmt:formatNumber type="number" maxFractionDigits="0"  value="${(list.price - (list.price/10)*3) * list.count}" /></td>
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
					<td>${list.dt_reg}</td>
					<td class="cal" data-value="${list.cd_state_ccl}">${list.cd_state_ccl}</td>
				</tr>
			</c:forEach>
		</tbody> 
	</table>
	
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
												onclick="location.href='/seller/order/calList${pageMaker.searchQuery(i)}'">${i}</button>
										</c:if>
									</c:forEach>
									<!-- Next, Last -->
									<c:choose>
										<c:when test="${pageMaker.next && pageMaker.epageNo>0}">
											<button type="button" class="btn btn-outline-secondary"
												onclick="location.href='/seller/order/calList${pageMaker.searchQuery(pageMaker.epageNo+1)}'">-
												&nbsp;&gt;</button>
										</c:when>
									</c:choose>
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
