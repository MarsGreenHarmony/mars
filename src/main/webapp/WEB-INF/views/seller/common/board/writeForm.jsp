<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<link rel="stylesheet" href="/css/common.css" type="text/css" title="common stylesheet" />


<body>
<div class="container">
<form method="POST" action="/backoffice/common/board/writeProc" enctype="multipart/form-data">
	<input type="hidden" name="cd_bbs_type" value="${cd_bbs_type}" />
	<header>
		<!-- include - header.jsp -->
<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>
	</header>
	<section class="content">
		<%-- <nav>
			<%@ include file="/include/common/lnb.jsp" %>
		</nav> --%>
		<article>
			<table class="type_02" style="margin-left: auto; margin-right: auto;">
				<tr>
					<th style="width: 15%">제목</th>
					<td>
						<input type="text" name="title" style="width: 80%;" />
						<c:if test="${cd_bbs_type == 1}">
							 <input type="checkbox" name="flg_top" value="Y" /> 최상위
						</c:if>
					</td>
				</tr>
				<c:if test="${cd_bbs_type == 2}">
				<tr>
					<th>분류</th>
					<td>
						<select name="cd_bbs_tab">
							<option value="1">상품</option>
							<option value="2">구매</option>
							<option value="3">결제</option>
						</select>
					</td>
				</tr>
				</c:if>
				<tr>
					<th>내용</th>
					<td>
						<textarea name="contents" id="contents" style="width: 650px;height:200px;" maxlength="1000"></textarea>
					</td>
				</tr>
				<%-- <% if (cd_usr_type_lnb == 1) {%> --%>
				<tr>
					<th>파일</th>
					<td>
						<input type="file" name="fileName" />
						<!--
						<input type="file" name="fileName" onchange="viewImage(this);" />
						<img id="preview" src="/image/noImage.jpg" width="200" height="200" />
						-->
					</td>
				</tr>
				<%-- <%}%> --%>
			</table>
			<input type="submit" value="등록" />
		</article>
		<aside></aside>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
	</footer>
</form>
</div>
</body>
</html>