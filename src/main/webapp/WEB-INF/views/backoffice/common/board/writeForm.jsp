<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
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
<form method="POST" action="/common/board/writeProc" enctype="multipart/form-data">
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">공지사항글쓰기</h1>
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
                        <c:if test="${cd_bbs_type == 1}">
                            <input type="checkbox" name="flg_top" value="Y" /> 최상위
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td>
                        <textarea name="contents" id="contents" style="width: 650px;height:200px;" maxlength="1000"></textarea>
                    </td>
                </tr>
                <tr>
                    <th>파일</th>
                    <td>
                        <input type="file" name="fileName" />
                        <!-- <input type="file" name="fileName" onchange="viewImage(this);" />
                        <img id="preview" src="/image/noImage.jpg" width="200" height="200" /> -->
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
