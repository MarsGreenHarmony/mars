<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<link rel="stylesheet" href="/css/common.css" type="text/css" title="common stylesheet" />


<body>
<div class="container">
<form method="POST" action="/backoffice/common/board/replyProc">
	<input type="hidden" name="seq_bbs_parent" value="${boardDto.seq_bbs_parent}" />
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
					<th style="width: 15%;">제목</th>
					<td><input type="text" name="title" style="width: 90%;"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="contents" id="contents" style="width: 650px;height:200px;" maxlength="1000"></textarea></td>
				</tr>
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