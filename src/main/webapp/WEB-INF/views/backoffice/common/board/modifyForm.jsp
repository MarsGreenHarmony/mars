<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>


<html lang="ko">
<head>
    <meta charset="UTF-8">
    
    <link rel="stylesheet" href="/common/common.css" type="text/css" title="common stylesheet" />
    
    <title>공지사항글쓰기</title>
    <style>
      
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>
<form method="POST" action="/common/board/modifyProc">
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">공지사항</h1>
                <ol class="breadcrumb mb-4">
                </ol>
            </div>
        </main>
        <article>
        <input type="hidden" name="seq_bbs" value="${boardDto.seq_bbs}" />
			<table class="type_02" style="margin-left: auto; margin-right: auto;">
				<tr>
					<th style="width: 15%">제목</th>
					<td>
						<input type="text" name="title" value="${boardDto.title}" style="width: 80%;" />
						<%-- <c:if test="${boardDto.cd_bbs_type == 1}">
							 <input type="checkbox" name="flg_top"<c:if test="${boardDto.flg_top == 'Y'}"> checked</c:if> value="Y" /> 최상위
						</c:if> --%>
					</td>
				</tr>
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
				
			</table>
			<input type="submit" value="수정" />
		</article>
        <%--include - footer.jsp  --%>
        <%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
    </div>
</form>
</body>
</html>
