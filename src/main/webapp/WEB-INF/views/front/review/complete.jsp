<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
	<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰작성 완료</title>
    
    <script>
    function closeWindow() {
    	window.opener.location.reload();
        window.close();
    }
    </script>
    <style>
    .custom-button {
        display: inline-block;
        padding: 10px 20px;
        background-color:  black;
        color: white;
        border: none;
        border-radius: 5px;
        text-align: center;
        text-decoration: none;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .custom-button:hover {
        background-color: gray;
    }

    .icon {
        margin-right: 5px;
    }
</style>
</head>
<body style="text-align: center;">
<h1>리뷰작성 완료!</h1>
<img style="height: 200px; width: 200px" alt="체크" src="/front/review/check.png"><br>
<button class="custom-button" onclick="closeWindow()">
        <span class="icon"></span>확인
    </button>
</body>
</html>