<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
	
	<!-- include - header.jsp -->
<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>

<style>
.btnBasic {border-radius:5px;display:inline-block;min-width:50px;height:26px;line-height:26px;text-align:center;background-color:#606060;color:#ffffff;vertical-align:middle;margin:10px auto 10px;padding:0px 7px}
</style>
    

		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">QnA</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">내용</li>
					</ol>
				</div>
			</main>
			<table class="type_01">
					<thead>
						<tr>
							 <th>제목</th>
               				 <th>내용</th>
               				 <th>등록자</th>
               				 <th>등록일시</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>[자주찾는질문] 배송비는 얼마인가요?</td>
							<td>배송비는 얼마인가요?</td>
							<td>관리자</td>
							<td>2024.03.26</td>
						</tr>
						<!-- 다른 행들도 유사하게 데이터를 추가합니다. -->
					</tbody>
				</table>
				  <a class="btnBasic" href="/backoffice/board/qnaForm">글쓰기</a>
			<!--include - footer.jsp  -->
			<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
		</div>
	</div>

</body>
</html>
