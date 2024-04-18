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
	width: 900px;
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
.mt-4{
        border-bottom:solid 1px #ccc;
        }
</style>

<script>
	function remove() {
		var frmMain = document.getElementById("frmMain");
		frmMain.action = "/common/board/remove";
		frmMain.submit();
	}
	
	function replyForm() {
		var frmMain = document.getElementById("frmMain");
		frmMain.action = "/common/board/replyForm";
		frmMain.submit();
	}
</script>

<!-- include - header.jsp -->
<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>


<form id="frmMain" method="POST" action="/common/board/modifyForm">
	<input type="hidden" name="cd_bbs_type" value="${boardDto.cd_bbs_type}" />
	<input type="hidden" name="seq_bbs" value="${boardDto.seq_bbs}" />
	<div id="layoutSidenav_content">
		<div>
			<div>
				<main>
					<div class="container-fluid px-4">
						<h1 class="mt-4">고객 문의 상세 내역</h1>
						
					</div>
				</main>
				<article>
					<table class="type_02"
						style="margin-left: auto; margin-right: auto;">
						<tr>
							<th width="10%">제목</th>
							<td>${boardDto.title}</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>${boardDto.contents}</td>
						</tr>
						<%-- <tr>
				<th>등록자</th>
				<td>${boardDto.sel_nm}</td>
			</tr> --%>
						<tr>
							<th>등록 일시</th>
							<td>${boardDto.dt_reg}</td>
						</tr>
						<tr>
							<th>답변</th>
							<td>${boardDto.contents_reply}</td>
										</tr>
					</table>
					 <a class="btnBasic" href="/common/board/inquiryList"> 목록 </a>
                    <c:if test="${empty boardDto.contents_reply}">
					    <a href="javascript:replyForm();" class="btnBasic"> 답글 </a>
					</c:if>
				</article>

				<!--include - footer.jsp  -->
				<%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
			</div>
		</div>
	</div>
</form>
</body>
</html>