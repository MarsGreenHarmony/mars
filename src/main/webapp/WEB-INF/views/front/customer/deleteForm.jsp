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
<script>
function confirmWithdraw() {
    var checkboxes = document.getElementsByName('reasonCd[]');
    var checked = false;
    
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked) {
            checked = true;
            break;
        }
    }
    
    if (!checked) {
        alert("탈퇴사유를 선택해주세요!");
        return false; // 탈퇴 처리를 하지 않고 함수 종료
    }
    
    if (confirm("정말 탈퇴하시겠습니까?")) {
        location.href = "/front/customer/deletecstProc"; // 탈퇴 처리
        alert("탈퇴되었습니다.");
    } else {
        // 사용자가 취소를 클릭한 경우에는 아무 작업도 하지 않습니다.
    }
}

</script>
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
                  <li class="subMenu"><a href="/front/customer/inquirylist">나의 문의 내역</a></li>
                     <li class="subMenu"><a href="/common/board/faqlist">자주 찾는 질문</a></li>
               
               
               </ul>
             </li>
                  <li><h2>회원 정보</h2>
                     <ul>
                        <li class="subMenu"><a href="/front/customer/modifyForm">회원정보 변경</a></li>
                        <li class="subMenu"><a href="/front/delivery/deliveryForm" >배송지 관리</a></li>
                        <li class="subMenu on"><a href="/front/customer/deleteForm">회원탈퇴</a></li>
                     </ul>
                  </li>
               </ul>
            </div>
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
   
  <div class="hack_out">

    <div class="mypage_zone_tit">
        <h2>회원탈퇴</h2>
    </div>

    <div class="mypage_unregister">
        <div class="mypage_zone_tit">
            <h3>01.회원탈퇴 안내</h3>
        </div>

<br>
회원님께서 회원 탈퇴를 원하신다니 저희 쇼핑몰의 서비스가 많이 부족하고 미흡했나 봅니다.<br>
불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도록 노력하겠습니다.<br>
<br>
■ 아울러 회원 탈퇴시의 아래 사항을 숙지하시기 바랍니다.<br>
1. 회원 탈퇴 시 회원님의 정보는 상품 반품 및 A/S를 위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 <br>
고객정보 보호정책에따라 관리 됩니다.<br>
2. 탈퇴 시 회원님께서 보유하셨던 마일리지는 삭제 됩니다
        </div>
        <!-- //unregister_info -->

        <div class="mypage_zone_tit">
            <h3>02.회원탈퇴 하기</h3>
        </div>

        <div class="mypage_table_type">
            <table class="table_left">
                <colgroup>
                    <col style="width:15%;">
                    <col style="width:85%;">
                </colgroup>
                <tbody>
                <tr>
                    <th scope="row">탈퇴사유</th>
                    <td>
                        <div class="form_element">
                            <ul class="hack_out_list"><li><input type="checkbox" id="reasonCd01003001" name="reasonCd[]" class="checkbox" value="01003001"><label for="reasonCd01003001" class="check-s">고객서비스(상담,포장 등) 불만</label></li><li><input type="checkbox" id="reasonCd01003002" name="reasonCd[]" class="checkbox" value="01003002"><label for="reasonCd01003002" class="check-s">배송불만</label></li><li><input type="checkbox" id="reasonCd01003003" name="reasonCd[]" class="checkbox" value="01003003" data-gtm-form-interact-field-id="0"><label for="reasonCd01003003" class="check-s">교환/환불/반품 불만</label></li><li><input type="checkbox" id="reasonCd01003004" name="reasonCd[]" class="checkbox" value="01003004"><label for="reasonCd01003004" class="check-s">방문 빈도가 낮음</label></li><li><input type="checkbox" id="reasonCd01003005" name="reasonCd[]" class="checkbox" value="01003005"><label for="reasonCd01003005" class="check-s">상품가격 불만</label></li><li><input type="checkbox" id="reasonCd01003006" name="reasonCd[]" class="checkbox" value="01003006"><label for="reasonCd01003006" class="check-s">개인 정보유출 우려</label></li><li><input type="checkbox" id="reasonCd01003007" name="reasonCd[]" class="checkbox" value="01003007"><label for="reasonCd01003007" class="check-s">쇼핑몰의 신뢰도 불만</label></li></ul>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">남기실 말씀</th>
                    <td><textarea cols="30" rows="5" name="reasonDesc"></textarea></td>
                </tr>
                </tbody>
            </table>
            
        </div>
    </div>
    <!-- //mypage_unregister -->

</div>
<div class="btn_center_box">
  
    <button type="submit" class="btn_claim_ok" onclick="confirmWithdraw()"><em>탈퇴</em>
</button>
</div>
        </div>
    </div>

<%@ include file="/WEB-INF/views/include/front/footer.jsp" %>
</body>
</html>