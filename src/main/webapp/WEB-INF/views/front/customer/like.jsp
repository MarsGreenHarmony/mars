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


.mypage-lnb li h2{
 font-weight: bolder;
 }


</style>
</head>
<body class="animsition">
<%@ include file="/WEB-INF/views/include/front/header.jsp" %>
    



<div id="Container">
   
   <div id="Contents">
      
      

      <div class="mypage-head rate_05">
         <h1 class="tit"><a href="/front/buy/orderList">마이페이지</a></h1>
         
         
      </div>
      

   
            <div class="mypage-lnb">
               <ul>
                  <li><h2>쇼핑 정보</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/buy/orderList">주문/배송 조회</a></li>
                 
                  <li class="subMenu"><a href="/front/buy/cart">장바구니</a></li>
                  <li class="subMenu on"><a href="/front/customer/like" >좋아요</a></li>
                     </ul>
             
                  <li><h2>나의 상품 후기</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/customer/review" >나의 상품 후기</a></li>
                       
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
            <h3>좋아요 목록</h3>
    
    <div class="row isotope-grid">
				<c:choose>
					<c:when test="${empty list}">좋아요 한 상품이 없습니다.</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="list">
								<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item">
									<!-- Block2 -->
									<div class="block2">
										<div class="block2-pic hov-img0">
											<a href="/front/buy/detail?seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}"
													class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"><img style="width: 175px;height: 175px" src="${list.lky_path}/${list.lky_img}" alt="IMG-PRODUCT"></a>

											<!-- <a href="https://www.naver.com/" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
												Quick View </a> -->
										</div>

										<div class="block2-txt flex-w flex-t p-t-14">
											<div class="block2-txt-child1 flex-col-l ">
												<a href="#"
													class="stext-104 cl4 hov-cl1 trans-04 p-b-6">
													${list.lky_corp_nm} </a> 
													<a href="/front/buy/detail?seq_sel=${list.seq_sel}&seq_prd=${list.seq_prd}"
													class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
													${list.lky_sel_nm} </a> <span class="stext-105 cl3 comma">
													${list.lky_price} </span>
											</div>

											<div class="block2-txt-child2 flex-r p-t-3">
												<a href="#"
												data-seq_sel="${list.seq_sel}" data-seq_prd="${list.seq_prd}" data-lky_path="${list.lky_path}"
											data-lky_img="${list.lky_img}" data-lky_sel_nm="${list.lky_sel_nm}" data-lky_price="${list.lky_price}"
											data-lky_corp_nm="${list.lky_corp_nm}"
													class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
													<img class="icon-heart1 dis-block trans-04"
													src="/bootstrap/images/icons/icon-heart-01.png" alt="ICON">
													<img class="icon-heart2 dis-block trans-04 ab-t-l"
													src="/bootstrap/images/icons/icon-heart-02.png" alt="ICON">
												</a>
											</div>
										</div>
									</div>
								</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
    
   </div>



    <!-- //mypage_unregister -->

</div>
</div>


<%@ include file="/WEB-INF/views/include/front/footer.jsp" %>
</body>
</html>