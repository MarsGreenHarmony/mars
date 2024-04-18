<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet" href="/css/common.css" type="text/css"
	title="common stylesheet" />


<body>
	<div class="container">
		<form id="frmMain" method="POST"
			action="/backoffice/common/board/modifyForm">
			<input type="hidden" name="cd_bbs_type"	value="${boardDto.cd_bbs_type}" /> 
			<input type="hidden" name="seq_bbs" value="${boardDto.seq_bbs}" /> 
			<header>
				<!-- include - header.jsp -->
				<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>
			</header>
			<section class="content">
				<%-- <nav>
			<%@ include file="/include/common/lnb.jsp" %>
		</nav> --%>
				<article>
					<table class="type_02"
						style="margin-left: auto; margin-right: auto;">
						<tr>
							<th width="15%">제목</th>
							<td>${boardDto.title}</td>
						</tr>
						<c:if test="${boardDto.cd_bbs_type == 2}">
							<tr>
								<th>분류</th>
								<td><select name="cd_bbs_tab" disabled>
										<option value="1"
											<c:if test="${boardDto.cd_bbs_tab == 1}"> selected</c:if>>상품</option>
										<option value="2"
											<c:if test="${boardDto.cd_bbs_tab == 2}"> selected</c:if>>구매</option>
										<option value="3"
											<c:if test="${boardDto.cd_bbs_tab == 3}"> selected</c:if>>결제</option>
								</select></td>
							</tr>
						</c:if>
						<tr>
							<th>내용</th>
							<td>${boardDto.contents}</td>
						</tr>
						<c:if
							test="${boardDto.contents_reply != null && boardDto.contents_reply != ''}">
							<tr>
								<th>답변</th>
								<td>${boardDto.contents_reply}</td>
							</tr>
						</c:if>
						<%-- <%
						if (cd_usr_type_lnb == 1) {
						%> --%>
						<tr>
							<th>등록 일시</th>
							<td>${boardDto.dt_reg}</td>
						</tr>
						<%-- <%
						} else {
						%>
						<tr>
							<th>등록일</th>
							<td>${fn:substring(boardDto.dt_reg, 0, 10)}</td>
						</tr>
						<%
						}
						%>
						<%
						if (cd_usr_type_lnb == 1) {
						%> --%>
						<tr>
							<th>수정 일시</th>
							<td>${boardDto.dt_upt}</td>
						</tr>
						<%-- <%
						}
						%> --%>
					</table>
					<%-- <%
					if (cd_usr_type_lnb == 1) {
					%> --%>
					<a href="javascript:remove();" class="btnBasic"> 삭제 </a> <input
						type="submit" value="수정" />
					<c:if
						test="${boardDto.cd_bbs_type == 3 && boardDto.contents_reply eq ''}">
						<a href="javascript:replyForm();" class="btnBasic"> 답글 </a>
					</c:if>
					<%-- 	<%
					}
					%> --%>
					&nbsp;<a
						href="/common/board/list.web?cd_bbs_type=${boardDto.cd_bbs_type}"
						class="btnBasic"> 목록 </a>
				</article>
				<aside></aside>
			</section>
			<footer>
				<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
			</footer>
		</form>
	</div>
	<iframe name="frmBlank" id="frmBlank" width="0" height="0"></iframe>
</body>
</html>