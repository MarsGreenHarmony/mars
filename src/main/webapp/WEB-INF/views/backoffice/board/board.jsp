<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
	
	<!-- include - header.jsp -->
<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>

		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">게시판</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">내용</li>
					</ol>
				</div>
			</main>
			<table class="type_01">
					<thead>
						<tr>
							<th>NO</th>
							<th>제목</th>
							<th>등록자</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>스킨 유통기한이 지났어요</td>
							<td>wjdan123</td>
							<td>2024.03.26</td>
						</tr>
						<tr>
						<td>2</td>
						<td>상품이 아직 안왔어요</td>
						<td>wjdan123</td>
						<td>2024.03.27</td>
					</tr>
					<tr>
					<td>3</td>
					<td>상품 상태가 이상해요</td>
					<td>wjdan123</td>
					<td>2024.03.28</td>
				</tr>
				<tr>
				<td>4</td>
				<td>배송이 너무 느려요</td>
				<td>fkrgur123</td>
				<td>2024.03.28</td>
			</tr>
			<tr>
			<td>5</td>
			<td>가나다라</td>
			<td>rjsgh123</td>
			<td>2024.03.28</td>
		</tr>
		<tr>
		<td>6</td>
		<td>환불 금액이 아직 안들어왔어요</td>
		<td>rjsgh123</td>
		<td>2024.03.28</td>
	</tr>
			
						<!-- 다른 행들도 유사하게 데이터를 추가합니다. -->
					</tbody>
				</table>
			<!--include - footer.jsp  -->
			<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
		</div>
	</div>

</body>
</html>