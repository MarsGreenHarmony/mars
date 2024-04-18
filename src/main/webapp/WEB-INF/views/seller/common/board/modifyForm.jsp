<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<link rel="stylesheet" href="/css/common.css" type="text/css" title="common stylesheet" />


<div class="container">
<form id="frmMain" method="POST" action="/backoffice/common/board/modifyProc">
	<input type="hidden" name="seq_bbs" 		value="${boardDto.seq_bbs}" />
	<input type="hidden" name="cd_bbs_type" 	value="${boardDto.cd_bbs_type}" />
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
						<input type="text" name="title" value="${boardDto.title}" style="width: 80%;" />
						<c:if test="${boardDto.cd_bbs_type == 1}">
							 <input type="checkbox" name="flg_top"<c:if test="${boardDto.flg_top == 'Y'}"> checked</c:if> value="Y" /> 최상위
						</c:if>
					</td>
				</tr>
				<c:if test="${boardDto.cd_bbs_type == 2}">
				<tr>
					<th>분류</th>
					<td>
						<select name="cd_bbs_tab">
							<option value="1"<c:if test="${boardDto.cd_bbs_tab == 1}"> selected</c:if>>상품</option>
							<option value="2"<c:if test="${boardDto.cd_bbs_tab == 2}"> selected</c:if>>구매</option>
							<option value="3"<c:if test="${boardDto.cd_bbs_tab == 3}"> selected</c:if>>결제</option>
						</select>
					</td>
				</tr>
				</c:if>
				<tr>
					<th>내용</th>
					<td>
						<textarea name="contents" id="contents" style="width:650px; height:200px;" maxlength="1000">${boardDto.contents}</textarea>
					</td>
				</tr>
				<tr>
					<th>등록 일시</th>
					<td>
						${boardDto.dt_reg}
					</td>
				</tr>
				<tr>
					<th>수정 일시</th>
					<td>
						${boardDto.dt_upt}
					</td>
				</tr>
			</table>
			<input type="submit" value="수정" />
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