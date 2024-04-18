<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
    
 <style>
 
 .mypage-lnb li h2{
 font-weight: bolder;
 }
 </style>   
   
<body class="animsition">
<%@ include file="/WEB-INF/views/include/front/header.jsp" %>
    <meta charset="utf-8">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon" href="https://static.oliveyoung.co.kr/pc-static-root/image/comm/favicon.ico">
    <link rel="stylesheet" type="text/css" href = "mypagetest.css">

    <meta property="og:type" content="website">
    <meta property="og:title" content="마이페이지">
    <meta property="og:url" content="https://www.oliveyoung.co.kr/store/main/main.do">
    <meta property="og:image" content="">
</head>

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
                        <li class="subMenu on"><a href="/front/buy/orderList" >주문/배송 조회</a></li>
                      
                      <li class="subMenu"><a href="/front/buy/cart">장바구니</a></li>
                  <li class="subMenu"><a href="/front/customer/like" >좋아요</a></li>
                     </ul>
             
                  <li><h2>나의 상품 후기</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/customer/review"" >나의 상품 후기</a></li>
                       
                     </ul>
                  </li>
              <li><h2>고객 센터</h2>
               <ul>
                  <li class="subMenu"><a href="/front/customer/inquiryForm">1:1문의하기</a></li>
                  <li class="subMenu"><a href="/front/customer/inquirylist">나의 문의 내역</a></li>
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
            <!-- //마이페이지 SUB 메뉴 -->

<!-- //마이페이지 SUB -->
<script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.side.js?dumm=20240227003"></script>
<script>
   $(window).ready(function(){
       mypage.side.init();
       
       if(_isLogin) {
          var gdasPossibleTotCnt = sessionStorage.getItem("gdasPossibleTotCnt");
          // if( common.isEmpty(gdasPossibleTotCnt) ) {
             common.Ajax.sendJSONRequest(
                  "POST"
                 , _baseUrl + "mypage/getGdasPossibleTotCnt.do"
                 , null
                 , function(res) {
                    if(res.result != null && res.result > 0) {
                       sessionStorage.setItem("gdasPossibleTotCnt", res.result.numberFormat());
                  } else {
                      sessionStorage.setItem("gdasPossibleTotCnt", "0");                     
                  }
                  $("#_gdasPossibleTotCnt").text( sessionStorage.getItem("gdasPossibleTotCnt") );
                    
              });
          //} else {
          //   $("#_gdasPossibleTotCnt").text( gdasPossibleTotCnt );
          //}
          
          // [3283136] 마이페이지 PC GUI 개편 및 장바구니 버튼 추가 요청의 件(CHY)
          // 신규 리뷰 작성 여부의 따라 N 아이콘 표출
          var lastCheckDtime = localStorage.getItem("lastCheckDtime");
              common.Ajax.sendJSONRequest(
                   "POST"
                  , _baseUrl + "mypage/getNewGdasPossibleCnt.do"
                  , {"lastCheckDtime" : lastCheckDtime}
                  , function(res) {
                   if(res.result > 0) {
                    $("#_newGdasPossible").show();
                   } else {
                      $("#_newGdasPossible").hide();
                   }
               });
       }
       
   });
</script>

         <div class="mypage-conts">
            <script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.header.js?dumm=20240227003"></script>
            <script>
               $(window).ready(function(){
                  mypage.header.init();
               });
            </script>
            
   


<script type="text/javascript" src="https://static.oliveyoung.co.kr/pc-static-root/js/common/searchPeriod.js?dumm=20240227003"></script>
<script>
//[3394070] 올영체험단 리뷰 배너 오류 문의 件 요청으로 올영체험단 리뷰는 시작시 12개월로 선택되게 조건 변경 되어 START_DATE, END_DATE 변경
START_DATE   = '2023-09-06';
END_DATE     = '2024-03-06';
ollyoungYn = '';

$(document).ready(function(){
   var cnslChk = "";
   var startYear = 2012
   var thisYear = new Date().getFullYear();

   if(!common.isEmpty(cnslChk)) startYear = 2014;
   $("#cal-start-year,#cal-end-year").empty();
   while (startYear <= thisYear) {
      $("#cal-start-year,#cal-end-year").append("<option value='"+startYear+"'>"+startYear+"</option>");
      startYear++
   }

   setTimeout(function() {
      SearchPeriod.init();
   },500);
});
</script>
   
   <table class="board-list-2s mgT20">
      <caption>주문일자, 상품, 수량, 주문금액, 상태로 이루어진 주문/배송/내역 목록 표</caption>
      <colgroup>
         <col style="width:17%;">
         <col style="width:%;">
         <col style="width:8%;">
         <col style="width:130px;">
         <col style="width:110px;">
      </colgroup>
      <thead>
         <tr>
            <th scope="col">주문일자</th>
            <th scope="col">상품</th>
            <th scope="col">수량</th>
            <th scope="col">주문금액</th>
            <th scope="col">배송 상태</th>
         </tr>
      </thead>
       <tbody class="history">
         <c:choose>
            <c:when test="${empty orderList}">
                <tr>
                    <td colspan="6">구매한 상품이 없습니다.</td>
                </tr>
            </c:when>
            <c:otherwise>
                <c:forEach items="${orderList}" var="order">
       
         <tr>
            
         <td rowspan="1">
                     <ul class="mypage-flag-apply">
              
                        <li class="order-date">
                           ${order.dt_reg}
                        </li>
                     </ul>
                  </td>
               <td class="subject ">
               <div class="area">
                  
                 <a class="thum" href=";">
                             <img src="${order.detail_img}" alt="상품 이미지" style="width: 50px; height: auto; margin-right: 10px;">
                           </a>
                           <div class="textus">
                              <a class="" href=";">
                                 <span class="tit">${order.buy_prd_nm}</span>
                                 <span class="txt">${order.buy_prd_nm}</span>
                              </a>
                         
                           </div>
                 
               </div>
            </td>
            <td class="">${order.count}</td>
            <td class="colorOrange">
               <!--  오프라인구매용 금액 -->
               
                  <strong>${order.buy_t_price}</strong> 원
             
            </td>
          
            <td><strong>${order.cd_state_delivery}</strong>
                      
         <button type="button" class="BtnDelete mgT5" onclick="window.location.href = 'review.jsp';">리뷰작성</button>
                 
            </td>
         </tr>
         
               </tbody>
            
 
      </c:forEach>
            </c:otherwise>
        </c:choose>
    </tbody>
</table>
   
   </div>

   
<script type="text/javascript" src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/myorder.js?dumm=20240227003"></script>   
<script type="text/javascript" src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/gdas.js?dumm=20240227003"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.12.1/underscore-min.js"></script>
<script>
HDC_PATH = $.parseJSON('{"00":"https://nexs.cjgls.com/web/service02_01.jsp?slipno=","01":"http://www.lotteglogis.com/personalService/tracking/06/tracking_goods_result.jsp?InvNo=","10":"http://www.hanjinexpress.hanjin.net/customer/plsql/hddcw07.result?wbl_num=","20":"http://www.lotteglogis.com/personalService/tracking/06/tracking_goods_result.jsp?InvNo=","30":"http://nexs.cjgls.com/web/detail.jsp?slipno=","50":"http://service.epost.go.kr/trace.RetrieveRegiPrclDeliv.postal?sid1=","70":"http://www.ilogen.com/d2d/delivery/invoice_search_popup.jsp?viewType=type2&invoiceNum=","92":"http://www.kglogis.co.kr/delivery/delivery_result.jsp?item_no=","93":"http://kdexp.com/basicNewDelivery.kd?barcode=","94":null,"95":"http://www.chunil.co.kr/HTrace/HTrace.jsp?transNo=","96":"https://mall.todaypickup.com/front/delivery/list/","97":"http://www.sbgls.co.kr/search.html","81":null,"82":"https://my.amazing.today/track/","200":"http://service.epost.go.kr/trace.RetrieveEmsRigiTraceList.comm?POST_CODE=","210":"http://www.dhl.co.kr/content/kr/ko/express/tracking.shtml?brand=DHL&AWB=","99":null,"02":"http://nexs.cjgls.com/web/service02_01.jsp?slipno=","03":null,"04":null}');

$(document).ready(function(){
    mypage.orderList.init();
});
function surveyInfo(){
   var targetUrl = _baseUrl+ "mypage/popup/surveyInfoPop.do";
   $('#service_survey').load(targetUrl,function (){
      fnLayerSet('service_survey','open','');
      $('#service_survey').css('top','3%');
      $('#service_survey').css('z-index','999');
      $("#service_survey").attr("tabindex", 0).focus();
   });
}
</script>

         </div>
      </div>
      
   </div>
   
</div>
</div>
</div>
</div>
</lang>
   <script>
      $(document).ready(function() {
          common.gnb.initMypageMenu(); 
      });
   </script>   

<%@ include file="/WEB-INF/views/include/front/footer.jsp" %>
</body>
</html>