<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
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
	margin: 10px auto;
	padding: 0px 7px;
	text-decoration: none; /* 추가 */
}

.btnBasic:hover {
	background-color: #444; /* 추가 */
}

.type_01 {
	width: 100%;
	border-collapse: collapse;
}

.type_01 th,
.type_01 td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

.type_01 th {
	background-color: #f2f2f2;
}

.type_01 tr:nth-child(even) {
	background-color: #f2f2f2;
}

.type_01 tr:hover {
	background-color: #ddd;
}
.mt-4{
        border-bottom:solid 1px #ccc;
        margin-bottom:30px;
        }
  table.type_01{
  line-height: 3;
  }
</style>

<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>

<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<h1 class="mt-4">자주찾는질문</h1>
			
		</div>
	</main>
	<table class="type_01">
		<thead>
			<tr>
				<th>NO</th>
				<th>제목</th>
				<th>등록일시</th>
			</tr>
		</thead>
		<tbody style="line-height: 3;">
			<c:forEach items="${faqlist}" var="faqlist">
				<tr>
					<td>${faqlist.seq_bbs}</td>
					<td style="text-align: left"><a href="/common/board/faqview?seq_bbs=${faqlist.seq_bbs}">${faqlist.title}</a></td> 
					<td>${faqlist.dt_reg}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a class="btnBasic" href="/common/board/faqwriteForm">등록</a>
	<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
</div>
</body>
</html>
