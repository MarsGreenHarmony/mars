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

<!-- include - header.jsp -->
<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>


<form id="frmMain" method="POST" action="/backoffice/backofficeproduct/modifyProc">
	<input type="hidden" name="seq_sel" value="${listing.seq_sel}"/>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid px-4">
				<h1 class="mt-4">판매 상품상세</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">내용</li>
				</ol>
			</div>
		</main>
		<article>
			<table class="type_02" style="margin-left: auto; margin-right: auto;">
				<tr>
					<th width="10%">상품번호</th>
					<td>${listing.seq_sel}</td>
				</tr>
				<tr>
					<th>상품명</th>
					<td>${listing.sel_nm}</td>
				</tr>
				<tr>
					<th>상품 원가</th>
					<td>${listing.price}</td>
				</tr>
				<tr>
					<th>등록 일시</th>
					<td>${listing.dt_reg}</td>
				</tr>
				<tr>
					<th>판매상태</th>
					<td>
					<select name="sel_state" id="sale_status">
							<option value="0" <c:if test="${saleDto.sel_state == 0}"> selected</c:if>>승인 대기</option>
							<option value="1" <c:if test="${saleDto.sel_state == 1}"> selected</c:if>>승인 완료</option>
							<option value="2" <c:if test="${saleDto.sel_state == 2}"> selected</c:if>>승인 거부</option>
					</select>
					</td>
				</tr>
			</table>
			<input type="submit" value="수정" />
		</article>

		<!--include - footer.jsp  -->
		<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
	</div>
</form>
</body>
</html>
