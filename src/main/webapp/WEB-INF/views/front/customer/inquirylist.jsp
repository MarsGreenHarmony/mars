<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<lang="ko">
<head>

    <meta charset="utf-8">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon" href="https://static.oliveyoung.co.kr/pc-static-root/image/comm/favicon.ico">
    <link rel="stylesheet" type="text/css" href = "/customer/delete.css">
     <link rel="stylesheet" type="text/css" href = "/mypage/mypage.css">
    

    <meta property="og:type" content="website">
    <meta property="og:title" content="마이페이지">
    <meta property="og:url" content="https://www.oliveyoung.co.kr/store/main/main.do">
    <meta property="og:image" content="">
    <!--=================O==============================================================================-->
<!-- <link rel="icon" type="image/png" href="/bootstrap/images/icons/favicon.png" /> -->
<!--==================O=============================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css">
<!--===================O============================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--====================O===========================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/fonts/iconic/css/material-design-iconic-font.min.css">
<!--=====================O==========================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--======================O=========================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/animate/animate.css">
<!--=======================O========================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/css-hamburgers/hamburgers.min.css">
<!--========================O=======================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/animsition/css/animsition.min.css">
<!--=========================O======================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/select2/select2.min.css">
<!--=============================O==================================================================-->
<link rel="stylesheet" type="text/css"
   href="/bootstrap/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/bootstrap/css/util.css">
<link rel="stylesheet" type="text/css" href="/bootstrap/css/main.css">
<!--===============================================================================================-->
    
    
   
<body class="animsition">
<%@ include file="/WEB-INF/views/include/front/header.jsp" %>
    <meta charset="utf-8">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" type="text/css" href = "mypage.css">
	<link rel="stylesheet" type="text/css" href = "delete.css">
    <meta property="og:type" content="website">
    <meta property="og:title" content="마이페이지">
    <meta property="og:url" content="https://www.oliveyoung.co.kr/store/main/main.do">
    <meta property="og:image" content="">
</head>

<style>
.mypage_zone_tit h3 {
    display: inline-block;
    font-size: 16px;
    text-align:center;
    }
.mypage-lnb li h2{
 font-weight: bolder;
 }
</style>

<div id="Container">
   
   <div id="Contents">
      
      

     <div class="mypage-head rate_05">
         <h1 class="tit"><a href="/front/buy/orderList">마이페이지</a></h1>
         
         <div class="grd-box">
            <div class="info_user clrfix">
               
               <div class="thum">
                 
                  
               </div>
               
            </div>

       
            <div class="point-box ">
               <ul class="infor clrfix" id="pointInfo">
               
                  
               </ul>
            </div>
         </div>
      </div>
      

     
      <div class="mypage-ix">
   
            <div class="mypage-lnb">
               <ul>
                  <li><h2>쇼핑 정보</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/buy/orderList" >주문/배송 조회</a></li>
                       
                     <li class="subMenu"><a href="/front/buy/cart">장바구니</a></li>
                  <li class="subMenu"><a href="/front/customer/like" >좋아요</a></li>
                     </ul>
             
                  <li><h2>나의 상품 후기</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/customer/review" >나의 상품 후기</a></li>
                       
                     </ul>
                  </li>
              <li><h2>고객 센터</h2>
               <ul>
                  <li class="subMenu"><a href="/front/customer/inquiryForm">1:1문의하기</a></li>
                  <li class="subMenu on"><a href="/front/customer/inquirylist">나의 문의 내역</a></li>
                     <li class="subMenu"><a href="/common/board/faqlist">자주 찾는 질문</a></li>
               
               
               </ul>
             </li>
                  <li><h2>회원 정보</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/customer/modifyForm">회원정보 변경</a></li>
                        <li class="subMenu"><a href="/front/delivery/deliveryForm" >배송지 관리</a></li>
                        <li class="subMenu"><a href="/front/customer/deleteForm">회원탈퇴</a></li>
                     </ul>
                  </li>
               </ul>
            </div>

<!-- //마이페이지 SUB -->
<script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.side.js?dumm=20240227003"></script>
<script>
  
   });
</script>

         <div class="mypage-conts">
            <script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.header.js?dumm=20240227003"></script>
            <script>
               $(window).ready(function(){
                  mypage.header.init();
               });
            </script>
            
   
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
	margin-top:50px
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
        
   table.type_02{
        border-left:1px solid #ccc;
        }
</style>
<div id="layoutSidenav_content">
	<main>
		<div class="container-fluid px-4">
			<h1 class="mt-4">나의 문의 내역</h1>
			
		</div>
	</main>
	<table class="type_01">
		<thead>
    <tr>

        <th>제목</th>
        <th>내용</th>
        <!-- <th>등록자</th> -->
        <th>등록일시</th>
        <th>답변 여부</th>
    </tr>
</thead>
<tbody>
    <c:choose>
    <c:when test="${empty list}">
        <tr>
            <td colspan="3">등록한 문의 사항이 없습니다.</td>
        </tr>
    </c:when>
    <c:otherwise>
        <c:forEach items="${list}" var="item">
            <tr>
                <td style="text-align: left">
                    <a href="/front/customer/myinquiryView?seq_bbs=${item.seq_bbs}">
                    ${item.title} </a></td>
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
                    <c:choose>
                        <c:when test="${item.seq_reply > 0}">
                            [답변 완료]
                        </c:when>
                        <c:otherwise>
                            [답변 미등록]
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
    </c:otherwise>
</c:choose>
</tbody>
</table>
	</div>
	</div>
	</div>
	</div>
	</div>

<%@ include file="/WEB-INF/views/include/front/footer.jsp" %>
</body>
</html>