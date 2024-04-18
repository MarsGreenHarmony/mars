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
    <link rel="stylesheet" type="text/css" href = "/customer/modifyForm.css">
    <link rel="stylesheet" type="text/css" href = "/mypage/mypage.css">
    <script type="text/javascript" src="/js/front.js"></script>
	<script src="/js/jquery-3.7.1.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    

    <meta property="og:type" content="website">
    <meta property="og:title" content="마이페이지">
    <meta property="og:url" content="https://www.oliveyoung.co.kr/store/main/main.do">
    <meta property="og:image" content="">
    
	<script type="text/javascript" src="/js/front.js"></script>
	<script src="/js/jquery-3.7.1.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
 <link rel="icon" href="/data/common/favicon.ico" type="image/x-icon">
 
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat1.css">
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat2.css">
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat3.css">
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat4.css">
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat5.css">
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat6.css">
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat13.css">
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat8.css">
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat9.css">
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat10.css">
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat11.css">
 <link type="text/css" rel="stylesheet" href="/donggubat/donggubat12.css">
 
 
   <!-- 1 <link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/reset.css?ts=1663913816">
    2<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/common.css?ts=1663913816">
    3<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/layer/layer.css?ts=1663913816">
    4<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/layout/layout.css?ts=1664527143">
    5<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/goods/list.css?ts=1666156327">
    6<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/button.css?ts=1663913816">
    13<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/mypage/mypage.css?ts=1663913816">
   8<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/js/jquery/chosen/chosen.css?ts=1663913816">
    9<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/custom.css?ts=1663913816">
   10 <link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/plugins/bootstrap-datetimepicker.min.css">
    11<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/plugins/bootstrap-datetimepicker-standalone.css">
     -->
    <link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/donggu/donggu.css?ts=1705303957">
 
 <link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/reset.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/common.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/layer/layer.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/layout/layout.css?ts=1664527143">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/goods/list.css?ts=1666156327">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/button.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/member/member.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/js/jquery/chosen/chosen.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/custom.css?ts=1663913816">

<!-- Add style : start -->
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/plugins/bootstrap-datetimepicker.min.css">
<link type="text/css" rel="stylesheet"
	href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/plugins/bootstrap-datetimepicker-standalone.css">
<!-- Add style : end -->
    
   <style>
 th .important {
  text-align: center;
}

.mypage-lnb li h2{
 font-weight: bolder;
 }
   </style>
   
<body class="animsition">
<%@ include file="/WEB-INF/views/include/front/header.jsp" %>


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
                        <li class="subMenu on"><a href="/front/customer/modifyForm">회원정보 변경</a></li>
                        <li class="subMenu"><a href="/front/delivery/deliveryForm" >배송지 관리</a></li>
                        <li class="subMenu"><a href="/front/customer/deleteForm">회원탈퇴</a></li>
                     </ul>
                  </li>
               </ul>
            </div>

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
<script>
//이메일 도메인을 선택할 때 호출되는 함수
function updateEmailTextbox() {
    var emailDomainSelect = document.getElementById("emailDomain");
    var customEmailTextbox = document.getElementById("cst_email");

    // 선택된 도메인 가져오기
    var selectedDomain = emailDomainSelect.value;

    // 직접 입력을 선택한 경우에만 도메인을 추가
    if (selectedDomain !== "self") {
        // @ 뒤에 선택된 도메인 추가
        customEmailTextbox.value = customEmailTextbox.value.split('@')[0] + '@' + selectedDomain;
    }
}

// 페이지 로드 시 실행
window.onload = function() {
    // 이메일 도메인 선택 상자에 변경 이벤트 리스너 추가
    var emailDomainSelect = document.getElementById("emailDomain");
    emailDomainSelect.addEventListener("change", updateEmailTextbox);
};

function toggleCheckbox(checkbox) {
    var maillingLabel = document.getElementById('maillingLabel');
    if (checkbox.checked) {
        maillingLabel.classList.add('checked');
    } else {
        maillingLabel.classList.remove('checked');
    }
}



</script>
 <form method="POST" action="/front/customer/modifyProc">
<div class="mypage_cont">

    <div class="my_page">

        <div class="mypage_zone_tit">
     
        <input type="hidden" name="before_flg_email"	value="${customerDto.flg_email}" />
            <h2>회원정보 변경</h2>
        </div>

						
							<div class="base_info_sec">
								<table border="0" cellpadding="0" cellspacing="0">
									<colgroup>
										<col width="25%">
										<col width="75%">
									</colgroup>
									<tbody>
										<tr>
											<th><span class="important">아이디</span></th>
											<td>
												<div class="member_warning">
													<input type="text" id="id" name="id"
														oninput="checkId()"
														data-pattern="gdMemberId" value="${customerDto.id}"  readonly>
													
													
												</div>
											</td>

										</tr>
										
										<tr>
											<th><span class="important">이름</span></th>
											<td>
												<div class="member_warning">
													<input type="text" name="cst_nm" id="cst_nm"
														data-pattern="gdMemberNmGlobal" maxlength="30"
														value="${customerDto.cst_nm}"  readonly>
												</div>
											</td>
										</tr>
										<tr>
											<th><span class="important">이메일</span></th>
											<td class="member_email">
												<div class="member_warning">
													<div class="chosen-drop">
															<div class="chosen-search">
														
															</div>
															<ul class="chosen-results"></ul>
														</div>
													</div>
													<input type="text" name ="cst_email" id="cst_email" placeholder="이메일을 입력하세요"
													value="${customerDto.cst_email}">
													 <select id="emailDomain" class="chosen-select">
													 
														<option value="self">직접입력</option>
														<option value="naver.com">naver.com</option>
														<option value="hanmail.net">hanmail.net</option>
														<option value="daum.net">daum.net</option>
														<option value="nate.com">nate.com</option>
														<option value="gmail.com">gmail.com</option>
													
													</select>
													
								
                                  	  </div>
                                        <b></b>
                                    </div>
                                       </div>
                            </div>
                                
                                
                                <ul class="chosen-results"></ul>
								
									<div class="member_warning js_email"></div>
									<div class="form_element">
									    <!-- 수정된 체크박스 -->
									    </div>
									   이메일 수신 동의 <input type="checkbox" name="flg_email"<c:if test="${customerDto.flg_email == 'Y'}"> checked</c:if> value="Y" />
									   
								
                                  
										</tr>
										<tr>
										<th><span class="important">휴대폰번호</span></th>
											<td class="member_address">
											    <div class="address_postcode">
											        <input type="text" id="phone" name="phone" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum"
											         value="${customerDto.phone}">
											    </div>
											    <div class="form_element">
											     </div>
									 
											
											 </td>
											</tr>
											</div>
									
													
														
												
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- //base_info_sec -->
						</div>
    <!-- //agreement_choice_box -->
</div>
<!-- //join_agreement_box -->
</div>
<!-- //join_agreement_cont -->
<!-- N : 약관동의 끝 -->

<!-- 회원가입/정보 부가정보 -->

                    <div class="btn_center_box">
                        <button type="button" class="btn_member_cancel" onclick="location.href='/front/customer/myPage'">취소</button>
                        <button type="submit" class="btn_comfirm js_btn_join" value="정보수정">정보수정</button>
                    </div>
                    <!-- //btn_center_box -->
               
            </div>
            <!-- //member_cont -->
        </div>
        <!-- //join_base_wrap -->

    </div>
    <!-- //my_page -->

</div>
</div>
</div>
</div>
<%@ include file="/WEB-INF/views/include/front/footer.jsp" %>
 </form>
</body>
</lang>
</head>
