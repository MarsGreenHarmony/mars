<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
        }
</style>

<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>

<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<h1 class="mt-4">고객 문의 내역</h1>
			<ol class="breadcrumb mb-4">
				
			</ol>
		</div>
	</main>
	<table class="type_01">
		<thead>
			<tr>
				<th>NO</th>
				<th>제목</th>
				<th>내용</th>
				<th>등록일시</th>
				<th>답변여부</th>
			
			</tr>
		</thead>
		<tbody style="line-height: 3;">
			<c:forEach items="${inquiryList}" var="item">
            <tr>
                <td>${item.seq_bbs}</td>
                <td style="text-align: left">
                        <a href="/common/board/myinquiryView?seq_bbs=${item.seq_bbs}">
                        ${item.title}</a></td>
                        <td>
                            <c:choose>
                                <c:when test="${fn:length(item.contents) > 10}">
                                    ${fn:substring(item.contents, 0, 10)} <!-- 내용의 처음 10자만 표시 -->
                                </c:when>
                                <c:otherwise>
                                    ${item.contents} <!-- 내용의 길이가 10자 이하인 경우 전체 내용 표시 -->
                                </c:otherwise>
                            </c:choose>
                     </td>
                <td>${item.dt_reg}</td>
                 <td>
                 <c:if test="${item.seq_reply > 0}">[답변 완료] </c:if>
				<c:if test="${item.seq_reply == null or item.seq_reply == 0}">[답변 미등록] </c:if>
                </td>
            </tr>
        </c:forEach>
		</tbody>
	</table>
	
	<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
</div>
</body>
</html>
