<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>

    <meta charset="utf-8">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon" href="https://static.oliveyoung.co.kr/pc-static-root/image/comm/favicon.ico">
    <link rel="stylesheet" type="text/css" href = "/customer/delete.css">
     <link rel="stylesheet" type="text/css" href = "/mypage/mypage.css">
    

    <!--=================O==============================================================================-->
<!-- <link rel="icon" type="image/png" href="/bootstrap/images/icons/favicon.png" /> -->
<!--==================O=============================================================================-->
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/css/vendor.bundle.base.css" />
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
<meta charset="utf-8">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" type="text/css" href = "mypage.css">
    
    <style>
    table {
	width: 100%;
	text-align: center;
	border: 1px solid #fff;
	border-spacing: 1px;
	font-family: "Cairo", sans-serif;
	margin: auto;
}

caption {
	font-weight: bold;
}

table td {
	padding: 10px;
	color: #333;
	background-color: #eee;
}

table th {
	background-color: black;
	color: #fff;
	padding: 10px;
	text-align: center;
}

tr {
	border: 1px solid #ffffff;
}

tr.tr:nth-child(even) td {
	background-color: #e1e4d4;
}

.primg {
	width: 150px;
	height: 150px;
}

.view, .delete {
	border: none;
	padding: 5px 10px;
	color: #fff;
	font-weight: bold;
}

.view {
	opacity: .8;
	background-color: #03a9f4;
}

.delete {
	opacity: .8;
	background-color: #e91e63;
}

.view:hover, .delete:hover {
	opacity: 1;
}


  /* input 태그 스타일 */
    input[type="text"] {
        width: 200px;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        transition: border-color 0.3s ease;
    }

    input[type="text"]:focus {
        outline: none;
        border-color: dodgerblue;
    }

    /* select 태그 스타일 */
    select {
        width: 130px;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        appearance: none; /* remove default arrow in Firefox */
        -webkit-appearance: none; /* remove default arrow in Chrome and Safari */
        background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="12" height="8" viewBox="0 0 12 8"><path fill="%23000" fill-rule="evenodd" d="M6 8L0 0h12z"/></svg>') no-repeat; /* add custom arrow */
        background-position: right 10px center;
        background-size: 8px 5px;
        cursor: pointer;
    }

    select:focus {
        outline: none;
        border-color: dodgerblue;
    }
.mypage_zone_tit h3 {
    display: inline-block;
    font-size: 16px;
    text-align:center;
    }
.mypage_table_type td{
border-top:1px solid #dbdbdb;
}

.btn_claim_ok {
    display: block;
    background-color: #f1f1f1;
    color: #000;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: 200;
    border-radius: 5px;
    cursor: pointer;
    display: block; /* 블록 요소로 설정하여 가로 폭을 최대로 차지하고 가운데 정렬됩니다. */
    margin: 0 auto; /* 좌우 여백을 자동으로 설정하여 가운데 정렬합니다. */
    margin-bottom:50px;
    margin-right:50px;
}
</style>
</head>
<body class="animsition">
<%@ include file="/WEB-INF/views/include/front/header.jsp" %>
    



<div id="Container">
   
   <div id="Contents">
      
      

      <div class="mypage-head rate_05">
         <h1 class="tit"><a href="/front/customer/myPage">마이페이지</a></h1>
         
         
      </div>
      

   
            <div class="mypage-lnb">
               <ul>
                  <li><h2>쇼핑 정보</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/buy/orderList">주문/배송 조회</a></li>
                      
                  <li class="subMenu"><a href="/front/buy/cart">장바구니</a></li>
                  <li class="subMenu"><a href="/front/customer/like" >좋아요</a></li>
                     </ul>
             
                  <li><h2>나의 상품 후기</h2>
                     <ul>
                        <li class="subMenu on"><a href="/front/customer/review" >나의 상품 후기</a></li>
                       
                     </ul>
                  </li>
              <li><h2>고객 센터</h2>
               <ul>
                  <li class="subMenu"><a href="/front/customer/inquiryForm">1:1문의내역</a></li>
                  <li class="subMenu"><a href="/front/customer/inquirylist">나의 문의 내역</a></li>
                    <li class="subMenu"><a href="/common/board/faqlist">자주 찾는 질문</a></li>
               
               </ul>
             </li>
                  <li><h2>회원 정보</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/customer/modifyForm" >회원정보 변경</a></li>
                        <li class="subMenu"><a href="/front/customer/deliveryForm;" >배송지 관리</a></li>
                        <li class="subMenu"><a href="/front/customer/deleteForm" >회원탈퇴</a></li>
                     </ul>
                  </li>
               </ul>
            </div>
            <!-- //마이페이지 SUB 메뉴 -->

<!-- //마이페이지 SUB -->
	<script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.side.js?dumm=20240227003"></script>

         <div class="mypage-conts">
            <script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.header.js?dumm=20240227003"></script>
            <script>
               $(window).ready(function(){
                  mypage.header.init();
               });
            </script>
            <h3>리뷰 목록</h3>
            <br><br><br>
    
    <table>
								<thead>
									<tr>
										<th>이미지</th>
										<th>상품명</th>
										<th>리뷰 내용</th>
										<th>별점</th>
										<th>리뷰 작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${empty list}">
											<tr>
												<td colspan="5">등록된 리뷰가 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="list">
													<tr>
														<td>
														<a href="/front/buy/detail?seq_prd=${list.seq_prd}&seq_sel=${list.seq_sel}"><img src="${list.prd_path}/${list.prd_img}"
															width="150px" height="150px"></a></td> 
														<td><a href="/front/buy/detail?seq_prd=${list.seq_prd}&seq_sel=${list.seq_sel}" style="color: black;">${list.prd_nm}</a></td> 
														<td>${list.desces}</td>
														<td>
														<c:if test="${list.rating == 1}">
														<span class="fs-18 cl11">
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star-outline"></i> 
															<i class="zmdi zmdi-star-outline"></i>
															<i class="zmdi zmdi-star-outline"></i> 
															<i class="zmdi zmdi-star-outline"></i>
														</span>
														</c:if>
														<c:if test="${list.rating == 2}">
														<span class="fs-18 cl11">
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star-outline"></i>
															<i class="zmdi zmdi-star-outline"></i> 
															<i class="zmdi zmdi-star-outline"></i>
														</span>
														</c:if>
														<c:if test="${list.rating == 3}">
														<span class="fs-18 cl11">
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star-outline"></i> 
															<i class="zmdi zmdi-star-outline"></i>
														</span>
														</c:if>
														<c:if test="${list.rating == 4}">
														<span class="fs-18 cl11">
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star-outline"></i>
														</span>
														</c:if>
														<c:if test="${list.rating == 5}">
														<span class="fs-18 cl11">
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star"></i>
															<i class="zmdi zmdi-star"></i> 
															<i class="zmdi zmdi-star"></i>
														</span>
														</c:if></td>
														<td>${list.dt_reg}</td>
													</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							
							<div style="text-align: center; margin-top: 30px">
								<div class="btn-group" role="group" aria-label="Basic example">
									<!-- First, Prev -->
									<c:choose>
										<c:when test="${pageMaker.prev && pageMaker.spageNo>1}">
											<a href="list${pageMaker.searchQuery(pageMaker.spageNo-1)}">&lt;</a>&nbsp;&nbsp;
									</c:when>
									</c:choose>
									<!-- Displag PageNo -->
									<c:forEach var="i" begin="${pageMaker.spageNo}"
										end="${pageMaker.epageNo}">
										<c:if test="${i==pageMaker.cri.currPage}">
											<button type="button" class="btn btn-outline-secondary">${i}</button>
										</c:if>
										<c:if test="${i!=pageMaker.cri.currPage}">
											<button type="button" class="btn btn-outline-secondary"
												onclick="location.href='/front/customer/review${pageMaker.searchQuery(i)}'">${i}</button>
										</c:if>
									</c:forEach>
									<!-- Next, Last -->
									<c:choose>
										<c:when test="${pageMaker.next && pageMaker.epageNo>0}">
											<button type="button" class="btn btn-outline-secondary"
												onclick="location.href='/front/customer/review${pageMaker.searchQuery(pageMaker.epageNo+1)}'">-
												&nbsp;&gt;</button>
										</c:when>
									</c:choose>
								</div>
							</div>
    
   </div>



    <!-- //mypage_unregister -->

</div>
</div>


<%@ include file="/WEB-INF/views/include/front/footer.jsp" %>
</body>
</html>