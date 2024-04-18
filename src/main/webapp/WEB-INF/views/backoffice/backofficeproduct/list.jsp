<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- include - header.jsp -->
<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>

<style>
/* 버튼 스타일 */
/* .button {
    background-color: gray;  
    border: none;
    color: white;
    padding: 8px 16px; /* 작은 사이즈로 변경 */
	text-align : center;
	text-decoration : none;
	display : inline-block;
	font-size : 14px; /* 폰트 사이즈 조정 */
	margin : 4px 0; /* 위아래 여백만 유지하고 좌우 여백 제거 */
	cursor : pointer;
	border-radius : 4px; /* 둥근 테두리 */
	box-shadow : 0 2px 4px rgba(0, 0, 0, 0 .1); /* 그림자 추가 */
	transition : background-color 0 .3s;
	float : right; /* 오른쪽으로 이동 */
	}
* /
	/* 버튼 호버 효과 */
	/* .button:hover {
    background-color: #45a049;
} */
	/* 테이블 스타일 */  
table.type_01 {
	border-collapse: collapse;
	width: 95%;
	line-height: 1.5;
	border: 1px solid #ddd;
	background-color: white;
}

table.type_01 th, table.type_01 td {
	padding: 8px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

table.type_01 th {
	background-color: #2b2b2b;
	color: #ddd;
}

/* 테이블 행 색상 설정 */
table.type_01 tbody tr:nth-child(even) {
	background-color: #f2f2f2;
}

table.type_01 tbody tr.sel_state_approved {
	background-color: navy;
}

table.type_01 tbody tr.sel_state_denied {
	background-color: blue;
}
</style>

<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<h1 class="mt-4">판매 상품상세</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item active">내용</li>
			</ol>
		</div>
	</main>
	<table class="type_01">
		<thead>
			<tr>
				<th>NO</th>
				<th>회사명</th>
				<th>상품명</th>
				<th>총 금액</th>
				<th>등록일시</th>
				<th>승인여부</th>
				<!-- 새로운 열 추가 -->
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr class="<c:out value="${list.sel_state}" />">
					<td>${list.seq_sel}</td>
					<td>${list.corp_nm}</td>
					<td style="text-align: left">
					<a href="/backoffice/backofficeproduct/view?seq_sel=${list.seq_sel}">${list.sel_nm}</a>
					</td>
					<td class="comma">${list.price}</td>
					<td>${list.dt_reg}</td>
					<td><c:if test="${list.sel_state == 0}"> 승인 대기</c:if> <c:if
							test="${list.sel_state == 1}"> 승인 완료</c:if> <c:if
							test="${list.sel_state == 2}"> 승인 거부</c:if></td>
					<!-- 상품 여부 추가 -->
				</tr>
			</c:forEach>
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

							// 숫자를 3글자마다 쉼표로 변환하는 함수
							function numberWithCommas(number) {
							    let strNumber = number.toString();
							    return strNumber.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
							}

							// 화면에 표시된 모든 숫자에 쉼표 추가하기
							addCommasToCostElements();
							</script>
	<!-- <button class="button" onclick="alert('승인되었습니다.')">확인</button> -->

	<!--include - footer.jsp  -->
	<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
</div>
</body>
</html>
