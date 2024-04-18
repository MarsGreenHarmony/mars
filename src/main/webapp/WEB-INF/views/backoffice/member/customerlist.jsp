<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
			<h1 class="mt-4">구매자 회원</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item active"><h5 style="color: red;">* 구매회원은 마이페이지에서 탈퇴가능합니다.</h5></li>
			</ol>
		</div>
	</main>
	<table class="type_01">
		<thead>
			<tr>
				<th>구매자번호</th>
				<th>ID</th>
				<th>구매자이름</th>
				<th>회원상태</th>
				<th>가입일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.seq_cst}</td>
					<td>${list.id}</td>
					<td>${list.cst_nm}</td>
					 <td>
            <c:choose>
                <c:when test="${list.seq_state eq 'Y'}">탈퇴회원</c:when>
                <c:when test="${list.seq_state eq 'N'}">회원</c:when>
            </c:choose>
        </td>
					<td>${list.dt_reg}</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!--include - footer.jsp  -->
	<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
</div>
</div>

</body>
</html>
