<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<link rel="stylesheet" href="/css/common.css" type="text/css" title="common stylesheet" />


<<head>
    <meta charset="UTF-8">
    <title>공지사항글쓰기</title>
    <style>
        article {
            flex-basis: 100%;
            padding: 10px;
        }

        /* 좌측 헤더 테이블 */
        table.type_02 {
            width: 1024px;
            border-collapse: collapse;
            text-align: left;
            line-height: 1.5;
            border-top: 1px solid #ccc;
            border-left: 3px solid #369;
            margin : 20px 10px;
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
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/backoffice/header.jsp"%>
<form method="POST" action="/common/board/replyProc">
<input type="hidden" name="seq_bbs_parent" value="${boardDto.seq_bbs_parent}" />
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">답변 달기</h1>
                <ol class="breadcrumb mb-4">
                </ol>
            </div>
        </main>
        <article>
            <table class="type_02" style="margin-left: auto; margin-right: auto;">
                <tr>
                    <th style="width: 15%">제목</th>
                    <td>
                        <input type="text" name="title" style="width: 80%;" />
                <tr>
                    <th>내용</th>
                    <td>
                        <textarea name="contents" id="contents" style="width: 650px;height:200px;" maxlength="1000"></textarea>
                    </td>
                </tr>
            </table>
            <input type="submit" value="등록" />
        </article>
        <%--include - footer.jsp  --%>
        <%@ include file="/WEB-INF/views/include/backoffice/footer.jsp"%>
    </div>
</form>
</body>
</html>
