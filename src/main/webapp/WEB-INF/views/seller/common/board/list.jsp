<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<link rel="stylesheet" href="/css/common.css" type="text/css" title="common stylesheet" />

<!-- include - header.jsp -->
<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>

<div class="container">
<form id="frmMain" method="POST" action="/backoffice/common/board/list">
<%-- <input type="hidden" name="cd_bbs_type" value="${paging.cd_bbs_type}" />
<input type="hidden" name="currentPage" value="${paging.currentPage}" /> --%>
	<header>
		
	</header>
	<section class="content">
		<article>
			<div class="brdSearchArea" style="text-align:right !important;">
				<select name="searchKey">
					<option value="title">제목</option>
					<option value="contents">내용</option>
					<option value="title+contents">제목 또는 내용</option>
				</select>
				<input type="text" name="searchWord" value="" /> <input type="submit" value="검색"/>
			</div>
			<div class="brdInfo">페이지]</div>
			<table class="type_01" style="margin-left: auto; margin-right: auto;">
				<thead>
					<tr>
						<th style="width: 5%">NO</th>
						<th>제목</th>
						<c:if test="">
						<th style="width: 10%">작성자</th>
						</c:if>
						<th style="width: 10%">등록일</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${empty list}">
						<tr>
							<td colspan="3">등록된 글이 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
					<c:forEach items="${list}" var="list">
						<c:set var="trColor" value="${list.rnum % 2}"/>
						<tr bgcolor="#<c:if test="${trColor == 1}">FFFFFF</c:if><c:if test="${trColor != 1}">F8F8F8</c:if>">
							<td>
								${list.rnum}
							</td>
							<td style="text-align: left">
								<a href="/common/board/view.web?seq_bbs=${list.seq_bbs}">
								<c:if test="">
									<c:if test="${list.seq_reply > 0}">[답변 완료] </c:if>
									<c:if test="${list.seq_reply == null or list.seq_reply == 0}">[답변 미등록] </c:if>
								</c:if>
									${list.title}
								</a>
							</td>
							<c:if test="">
							<td>
								${list.id}
							</td>
							</c:if>
							<td>
								${list.dt_reg}
							</td>
						</tr>
						</c:forEach>
					</c:otherwise>
					</c:choose>
				</tbody>
			</table>
			<div style="text-align:center !important; margin: 10px">
				<%-- <plutozoneUtilTag:page styleID="admin_image" currentPage="${paging.currentPage}" linePerPage="${paging.linePerPage}" totalLine="${paging.totalLine}" scriptFunction="goPage" /> --%>
				<br />
				<%
				/* 관리자(1) 판매자(2) 구매자(3) */
				/* 공지사항(1) 자주 찾는 질문(2) 질의 응답(3) */ 
				%>
				<%-- <% if (cd_usr_type_lnb == 2) {%>
					<c:if test="${paging.cd_bbs_type != 3}">
						<a href="/common/board/writeForm.web?cd_bbs_type=${paging.cd_bbs_type}" class="btnBasic"> 등록 </a>
					</c:if>
				<%}%>
				<% if (cd_usr_type_lnb == 3) {%>
					<c:if test="${paging.cd_bbs_type == 3}">
						<a href="/common/board/writeForm.web?cd_bbs_type=${paging.cd_bbs_type}" class="btnBasic"> 등록 </a>
					</c:if>
				<%}%> --%>
			</div>
		</article>
		<aside></aside>
	</section>
	<footer>
		<!--include - footer.jsp  -->
	<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
	</footer>
</form>
</div>
</body>


</div>
</body>
</html>