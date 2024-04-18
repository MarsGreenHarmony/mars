<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
article {
	flex-basis: 100%;
	padding: 50px
}

/* 상단 헤더 테이블 */
table.type_01 {
	border-collapse: collapse;
	width: 95%;
	line-height: 1.5;
	/* margin: 1rem auto; */
	border: 1px solid #ddd;
	background-color: white;
}

table.type_01 th, table.type_01 td {
	padding: 3px;
	text-align: left;
	border-bottom: 1px solid #ddd;
	text-align: center;
}

table.type_01 th {
	background-color: #2b2b2b;
	color: #ddd;
}

table.type_01 tbody table.type_01 tr:hover {
	background-color: #f8f8f8;
	opacity: 0.9;
	/* cursor: pointer; */
}

/* 좌측 헤더 테이블 */
table.type_02 {
	width: 1024px;
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-left: 3px solid #369;
	margin: 20px 10px;
}

table.type_02 th {
	padding: 5px;
	font-weight: bold;
	vertical-align: top;
	color: #153d73;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

table.type_02 td {
	padding: 5px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.btnWrapper {
	text-align: center; /* 수평 중앙 정렬 */
	margin-top: 10px; /* 원하는 만큼의 상단 여백 지정 */
}

.btnBasic {
	border-radius: 5px;
	display: inline-block;
	min-width: 50px;
	height: 26px;
	line-height: 26px;
	text-align: center;
	background-color: #606060;
	color: #ffffff;
	vertical-align: middle;
	margin: 10px auto 10px;
	padding: 0px 7px
}
</style>
<script type="text/javascript">
    // 가격에 쉼표 추가하는 함수
    function addCommasToPrice() {
        // 가격 요소 가져오기
        let priceElement = document.getElementById("price");

        // 가격 문자열 가져오기
        let priceString = priceElement.innerText;

        // 가격 숫자로 변환
        let price = parseFloat(priceString);

        // 쉼표 추가된 숫자로 변환하여 다시 요소에 설정
        priceElement.innerText = numberWithCommas(price);
    }

    // 숫자를 3글자마다 쉼표로 변환하는 함수
    function numberWithCommas(number) {
        let strNumber = number.toString();
        return strNumber.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }

    // 페이지 로드 시 가격에 쉼표 추가
    window.onload = addCommasToPrice;
</script>
<!-- include - header.jsp -->
<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>


<form id="frmMain" method="POST" action="/backoffice/calculate/modifyProc">
	<input type="hidden" name="seq_dtl" value="${listing.seq_dtl}"/>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid px-4">
				<h1 class="mt-4">정산상세</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">내용</li>
				</ol>
			</div>
		</main>
		<article>
			<table class="type_02" style="margin-left: auto; margin-right: auto;">
				<tr>
					<th width="10%">디테일</th>
					<td>${listing.seq_dtl}</td>
				</tr>
				
				<tr>
					<th>상품번호</th>
					<td>${listing.seq_prd}</td>
				</tr>
				<tr>
					<th>판매번호</th>
					<td>${listing.seq_sel}</td>
				</tr>
				<tr>
					<th>구매상품</th>
					<td>${listing.buy_prd_nm}</td>
				</tr>
				<tr>
					<th>가격</th>
					<td id="price">${listing.price}</td>
				</tr>
				<tr>
					<th>수량</th>
					<td>${listing.count}</td>
				</tr>
				<tr>
					<th>등록자</th>
					<td>${listing.register}</td>
				</tr>
				<tr>
					<th>판매상태</th>
					<td>
					 <form id="updateForm_ ${listing.seq_dtl}" method="post" action="/backoffice/calculate/cclProc" style="display: none;">
					                        <input type="hidden" name="seq_dtl" value="${listing.seq_dtl}">
					<select name="cd_state_ccl" id="cd_state_ccl"> <!-- 정산 상태 코드(정산 전:N, 정산 완료: Y, 정산 취소:C) -->
							<option value="2" <c:if test="${listing.cd_state_ccl == '2'}"> selected</c:if>>정산 전</option>
							<option value="1" <c:if test="${listing.cd_state_ccl == '1'}"> selected</c:if>>정산 완료</option>
							<option value="3" <c:if test="${listing.cd_state_ccl == '3'}"> selected</c:if>>정산 거부</option>
					</select>
				
				</tr>
			</table>
			<input type="submit" value="수정" />
			</form>
			</td>
		</article>

		<!--include - footer.jsp  -->
		<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
	</div>
</form>
</body>
</html>
