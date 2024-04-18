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
<link rel="shortcut icon"
   href="https://static.oliveyoung.co.kr/pc-static-root/image/comm/favicon.ico">
<link rel="stylesheet" type="text/css" href="/mypage/mypage.css">

<meta property="og:type" content="website">
<meta property="og:title" content="마이페이지">
<meta property="og:url"
   content="https://www.oliveyoung.co.kr/store/main/main.do">
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

<link type="text/css" rel="stylesheet" href="/donggubat/donggubat1.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat2.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat3.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat4.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat5.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat6.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat8.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat9.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat12.css">


<!-- <link type="text/css" rel="stylesheet"
 1  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/reset.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 2  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/common.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 3  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/layer/layer.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 4  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/layout/layout.css?ts=1664527143">
<link type="text/css" rel="stylesheet"
 5  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/goods/list.css?ts=1666156327">
<link type="text/css" rel="stylesheet"
 6  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/button.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 8  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/js/jquery/chosen/chosen.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 9  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/custom.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 12  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/donggu/donggu.css?ts=1705303957"> -->
   
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<body class="animsition">
   <%@ include file="/WEB-INF/views/include/front/header.jsp"%>
   <meta charset="utf-8">
   <meta http-equiv="Content-Script-Type" content="text/javascript">
   <meta http-equiv="Content-Style-Type" content="text/css">
   <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
   <meta name="format-detection" content="telephone=no">
   <link rel="shortcut icon"
      href="https://static.oliveyoung.co.kr/pc-static-root/image/comm/favicon.ico">
   <link rel="stylesheet" type="text/css" href="mypagetest.css">

   <meta property="og:type" content="website">
   <meta property="og:title" content="마이페이지">
   <meta property="og:url"
      content="https://www.oliveyoung.co.kr/store/main/main.do">
   <meta property="og:image" content="">


   <script src="https://code.jquery.com/jquery-3.7.1.js"
      integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
      crossorigin="anonymous"></script>
   <script type="text/javascript" src="/js/front.js"></script>
   <script src="/js/jquery-3.7.1.min.js"></script>
   <script
      src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js">
      
   </script>


   <script>
   $(document).ready(function() {
       // 새 배송지 추가 버튼에 대한 클릭 이벤트 처리
       $('.btn_add_shipping').click(function(e) {
          e.preventDefault(); // 기본 이벤트 동작 방지
          $('.layer_wrap_cont').show(); // 팝업 레이어를 보여줍니다.
       });

       // 취소 버튼에 대한 클릭 이벤트 처리
       $('.btn_ly_cancel').click(function() {
          $('.layer_wrap_cont').hide(); // 팝업 레이어를 숨깁니다.
       });
    });

      function toggleCheckbox(checkbox) {
         var deliveryState = document.getElementById('dev_state_checkbox');
         if (checkbox.checked) {
        //   deliveryState.classList.add('checked');
        document.getElementById("test").value="test";
        alert("기존 배송지로 하시겠습니까?")
         } else {
            //deliveryState.classList.remove('checked');
        	 document.getElementById("test").value="";
         }

      }

      $(document).ready(
            function() {
               // 삭제 버튼에 대한 클릭 이벤트 처리
               $('.delete_Btn').click(
                     function(e) {
                        e.preventDefault(); // 기본 동작 방지

                        var con = confirm("정말로 삭제하시겠습니까?");
                        if (con) {
                           // 삭제할 배송지의 정보를 form에 설정
                           var form = $(this).closest('form');
                           var seqDev = form.find(
                                 'input[name="seq_dev"]').data(
                                 'seq-dev');
                           form.find('input[name="seq_dev"]').val(
                                 seqDev); // 배송지 번호를 입력란에 설정
                           form.attr("action",
                                 "/front/delivery/deleteProc");
                           form.submit();
                        }
                     });
            });

      function checkField() {
         if (document.addjoin.dev_nm.value == "") {
            alert("배송지 이름을 입력하세요");
            document.addjoin.dev_nm.focus();
            return false; // 폼 제출을 중단하고 함수를 빠져나갑니다.
         } else if (document.addjoin.dev_hm.value == "") {
            alert("받으실 분을 입력하세요");
            document.addjoin.dev_hm.focus();
            return false;
         } else if (document.addjoin.postcode.value == "") {
            alert("우편번호를 입력하세요");
            document.addjoin.postcode.focus();
            return false;
         } else if (document.addjoin.address.value == "") {
            alert("상세 주소를 입력하세요");
            document.addjoin.address.focus();
            return false;
         } else if (document.addjoin.phone_nm.value == "") {
            alert("휴대폰 번호를 입력하세요");
            document.addjoin.phone_nm.focus();
            return false;
         }
         // 모든 필드가 유효하면 true를 반환하여 폼 제출을 허용합니다.
         return true;
      }
   </script>

   <style>
.layer_wrap_cont {
   display: none; /* 초기에는 숨깁니다. */
   position: absolute;
   margin: 0;
   top: 50%; /* 화면 세로 중앙에 배치 */
   left: 50%; /* 화면 가로 중앙에 배치 */
   transform: translate(-50%, -50%);
   background-color: #fff;
   border: 1px solid #ccc;
   padding: 20px;
   z-index: 9999; /* 다른 요소 위에 표시 */
}

.delivery_add_layer .layer_wrap_cont {
   width: 690px;
}

.layer_wrap .layer_wrap_cont {
   position: relative;
   border: 2px solid #555555;
   background: #ffffff;
}

.layer_wrap_cont {
   width: 690px;
   height: 450px;
}

.left_table_type td {
   padding: 10px 10px 10px 15px;
}

.left_table_type .postcode input {
   background: #979797;
   width: 100px;
   color: #FFF;
   font-weight: bold;
   margin-left: 20px;
}

#addr2 {
   width: 250px; /* 너비를 원하는 값으로 조정 */
}

#addr1 {
   margin-top: -6px;
}

.mypage_table_type td {
   height: 150px;
   border-top: 1px solid #dbdbdb;
}

.mypage_table_type th {
   text-align: center;
}

button {
   border: 1px solid #ccc;
   background-color: #fff;
   padding: 10px 20px; /* 원하는 패딩 값으로 조절하세요 */
   font-size: 10px; /* 원하는 글꼴 크기로 조절하세요 */
   cursor: pointer;
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
                        <li class="subMenu"><a href="javascript:;" >나의 상품 후기</a></li>
                       
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
                        <li class="subMenu on"><a href="/front/delivery/deliveryForm" >배송지 관리</a></li>
                        <li class="subMenu"><a href="/front/customer/deleteForm">회원탈퇴</a></li>
                     </ul>
                  </li>
               </ul>
            </div>

            <div class="mypage-conts">
               <script
                  src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.header.js?dumm=20240227003"></script>
               <script>
                  $(window).ready(function() {
                     mypage.header.init();
                  });
               </script>



               <div class="mypage_shipping js_delivery_layer">
                  <div class="mypage_zone_tit">
                     <h3>배송지 관리</h3>

                  </div>

                  <div class="mypage_shipping_cont">
                     <div class="mypage_table_type">

                        <table>
                           <colgroup>
                              <col style="width: 12%">
                              <!-- 배송지이름 -->
                              <col style="width: 12%">
                              <!-- 받으실 분 -->
                              <col>
                              <!-- 주소 -->
                              <col style="width: 20%">
                              <!-- 연락처 -->
                              <col style="width: 12%">
                              <!-- 수정/삭제 -->
                           </colgroup>
                           <thead>
                              <c:choose>
                                 <c:when test="${empty deliveryDto}">
                                    <tr>
                                       <td colspan="8"><p class="no_data">배송지 목록이 없습니다.</p></td>
                                    </tr>
                                 </c:when>
                                 <c:otherwise>
                                    <tr>
                                       <th>배송지이름</th>
                                       <th>받으실 분</th>
                                       <th>주소</th>
                                       <th>연락처</th>
                                       <th>수정/삭제</th>
                                    </tr>
                                    <c:forEach items="${deliveryDto}" var="delivery">
                                       <tr>
                                       
                                          <td>
                                          <c:if test="${delivery.dev_state == 'Y'}"><span style="font-weight: bold; color: blue;"><br>(기본 배송지)</span>
                                          </c:if>${delivery.dev_nm}
                                           </td>
                                          <td>${delivery.dev_hm}</td>
                                          <td>(${delivery.postcode})<br>${delivery.address}<br>${delivery.address_dtl}</td>
                                          <td>${delivery.phone_nm}</td>

                                          <td>
                                             <form class="deleteForm" action="/front/delivery/deleteProc" method="post">
                                                <!-- 배송지 번호를 data-seq-dev 속성으로 추가 -->
                                                <input type="hidden" id="seq_dev" name="seq_dev" value="${delivery.seq_dev}"
                                                   data-seq-dev="${delivery.seq_dev}">

                                                <!-- 삭제 버튼 -->
                                                <button type="submit" class="delete_Btn">삭제</button>
                                                <br>

                                             </form>

											
                                             <button type="button" class="openPopupBtn" data-seq="${delivery.seq_dev}">수정</button> 
                                    		<script type="text/javascript">
                                       var popupWindow;

                                        $(document).ready(function(){
                                            // 클릭 이벤트 핸들러 등록
                                            $(".openPopupBtn").click(function(){
                                                var seq = $(this).data("seq");
                                                openPopup(seq);
                                            });
			                   // 팝업 열기 함수
                                            function openPopup(seq) {
                                                popupWindow = window.open("/front/delivery/modifyForm?seq_dev=" + seq, "배송지 수정", "width=600,height=500");
                                            }
                                        });
                                        
                                        window.addEventListener('message', function(event) {
                                            // 수신된 메시지에서 action과 url 정보 추출
                                            var data = event.data;
                                            var action = data.action;
                                            var url = data.url;

                                            // action이 'redirect'인 경우 부모 창 리다이렉트 수행
                                            if (action === 'redirect' && url) {
                                                window.location.href = url;
                                            }
                                        });
                                       </script>

                                          </td>
                                    </c:forEach>
                                 </c:otherwise>
                              </c:choose>
                           </tbody>
                        </table>

                     </div>

                     <button type="button" href="#lyDeliveryAdd"
                        class="btn_add_shipping btn_open_layer">
                        + 새 배송지 추가</a>
                  </div>
                  <!-- //mypage_shipping_cont  -->
                  <div class="pagination">
                     <ul></ul>
                  </div>
               </div>

               <form name="addjoin" action="/front/delivery/deliveryProc" onsubmit="return checkField()" method="post">
                  <div class="layer_wrap_cont" style="position: absolute; margin: 0px; top: 255.5px; left: 720.5px;">

                     <input type="hidden" name="mode" value="shipping_regist">
                     <input type="hidden" name="sno" value=""> <input
                        type="hidden" name="shippingNo" value="">
                     <div class="ly_tit">
                        <h4>나의 배송지 관리</h4>
                     </div>
                     <div class="ly_cont">
                        <div class="scroll_box">
                           <h5>배송지 등록</h5>
                           <div class="left_table_type">
                              <table>
                                 <colgroup>
                                    <col style="width: 20%;">
                                    <col style="width: 80%;">
                                 </colgroup>
                                 <tbody>
                                    <tr>
                                       <th scope="row"><span class="important">배송지 이름</span></th>
                                       <td><input type="text" id="dev_nm" name="dev_nm"
                                          value=""></td>
                                    </tr>
                                    <tr>
                                       <th scope="row"><span class="important">받으실 분</span></th>
                                       <td><input type="text" name="dev_hm" maxlength="20"
                                          value=""></td>
                                    </tr>
                                    <tr>
                                       <th scope="row"><span class="important">받으실 곳</span></th>
                                       <td class="member_address">
                                          <div class="address_postcode">
                                             <input type="text" id="postcode" name="postcode" size="5"
                                                placeholder="도로명" /> <label for="addr1"></label> <input
                                                type="text" id="addr1" name="address_dtl"
                                                placeholder="상세주소" /> <input type="hidden" id="roadAddr"
                                                name="roadAddr" /> <span id="guide"
                                                style="color: #999; display: none"></span> <label
                                                for="addr2"></label> <input type="text" id="addr2"
                                                name="address"> <input type="hidden"
                                                id="extraAddress" name="extraAddress" />
                                             <div class="postcode">
                                                <input type="button" onclick="execDaumPostcode()"
                                                   value="우편번호 찾기" />
                                             </div>
                                          </div>
                                       </td>
                                    </tr>

                                    <tr>
                                       <th scope="row"><span class="important">휴대폰번호</span></th>
                                       <td><input type="text" id="shippingMobile"
                                          name="phone_nm" value=""></td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                           <div class="form_element"></div>
                           <input id="test" name="test">
                           <input id="dev_state_checkbox" type="checkbox" name="dev_state"
                              value="Y"
                              style="width: 15px; visibility: visible; position: relative; float: left;"
                              onclick="toggleCheckbox(this);"> 기본 배송지로 설정합니다.

                        </div>
                        <!-- //scroll_box -->
                        <div class="btn_center_box">
                           <button type="button" class="btn_ly_cancel layer_close">
                              <strong>취소</strong>
                           </button>
                           <button type="submit" class="btn_ly_save">
                              <strong>저장</strong>
                           </button>
                        </div>
                     </div>
                     <!-- //ly_cont -->
               </form>
            </div>
         </div>
      </div>
   </div>
</lang>
<%@ include file="/WEB-INF/views/include/front/footer.jsp"%>
</form>
</body>
</html>
</head>
