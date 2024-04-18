<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>

    <meta charset="utf-8">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="format-detection" content="telephone=no">
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
<style type="text/css">
tr th{
	text-align: center;
}


 .mypage-lnb li h2{
 font-weight: bolder;
 }
 
 .bold{
 	font: bold;
 }
 
 .board-list-2s tr td{
 
 padding:15px 1px;
 }
 </style>  

</head>
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

                        <li class="subMenu on"><a href="/front/buy/orderList">주문/배송
                              조회</a></li>
               
                        <li class="subMenu"><a href="/front/buy/cart">장바구니</a></li>
                        <li class="subMenu"><a href="/front/customer/like">좋아요</a></li>

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
<!-- <fieldset class="search-period mgT30">
		<legend></legend>
		2019.10.20 오프라인리뷰관련 추가
		

		<div class="select_con">
		<p>구매기간</p>
			<ul class="select-month">
			[3394070] 올영체험단 리뷰 배너 오류 문의 件 요청으로 올영체험단 리뷰는 시작시 12개월로 선택되게 조건 변경
				<li class="on"><button type="button" data-month="-1">1개월</button></li>
				<li><button type="button" data-month="-3">3개월</button></li>
				<li><button type="button" data-month="-6">6개월</button></li>
				<li><button type="button" data-month="-12">12개월</button></li>

				
			</ul>
			<div class="select-range">
				<select id="cal-start-year" title="년도를 선택하세요" style="width:76px;"><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024" selected="selected">2024</option></select>
				<label for="cal-start-year">년</label>
				<select id="cal-start-month" title="달월을 선택하세요" style="width:60px;">
					<option value="01">1</option>
					<option value="02" selected="selected">2</option>
					<option value="03">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				<label for="cal-start-month">월</label>
				<select id="cal-start-day" title="날일을 선택하세요" style="width:60px;">
				<option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08" selected="selected">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option></select>
				<label for="cal-start-day">일</label>
				<span class="des">~</span>
				<select id="cal-end-year" title="년도를 선택하세요" style="width:76px;"><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024" selected="selected">2024</option></select>
				<label for="cal-end-year">년</label>
				<select id="cal-end-month" title="달월을 선택하세요" style="width:60px;">
					<option value="01">1</option>
					<option value="02">2</option>
					<option value="03" selected="selected">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				<label for="cal-end-month">월</label>
				<select id="cal-end-day" title="날일을 선택하세요" style="width:60px;">
				<option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08" selected="selected">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
				<label for="cal-end-day">일</label>
			</div>
		  </div>
		  //오프라인 리뷰
		  2016-12-23 수정
		<button type="button" class="btnLookup" id="do-search-period">조회</button>
	</fieldset> -->
	<h1>주문/배송 목록</h1>
   
<table class="board-list-2s mgT20">
    <caption>주문일자, 상품, 수량, 상품금액, 상품총금액, 주문총금액, 배송 상태로 이루어진 주문/배송/내역 목록 표</caption>
    <colgroup>
        <col style="width:15%;">
        <col style="width:20%;">
        <col style="width:10%;">
        <col style="width:10%;">
        <col style="width:15%;">
        <col style="width:15%;">
        <col style="width:10%;">
        <col style="width:15%;">
    </colgroup>
    <thead>
        <tr>
            <th scope="col">주문일자</th>
            <th scope="col">상품</th>
            <th scope="col">수량</th>
            <th scope="col">상품금액</th>
            <th scope="col">상품총금액</th>
            <th scope="col">주문총금액</th>
            <th scope="col">배송 상태</th>
            <th scope="col">리뷰</th>
        </tr>
    </thead>
    <tbody class="history">
        <c:choose>
            <c:when test="${empty mstList}">
                <tr>
                    <td colspan="8">구매한 상품이 없습니다.</td>
                </tr>
            </c:when>
            <c:otherwise>
                <c:forEach items="${mstList}" var="mst">
                    <c:forEach items="${mst.dtlList}" var="dtl" varStatus="status">
                        <tr>
                            <c:if test="${status.index == 0}">
                                <td rowspan="${fn:length(mst.dtlList)}">
                                    <ul class="mypage-flag-apply">
                                        <li class="order-date">${mst.dt_reg}</li>
                                    </ul>
                                </td>
                            </c:if>
                            <td class="subject">
                                <div class="area">
                                    <a class="thum" href="/front/buy/detail?seq_sel=${dtl.seq_sel}&seq_prd=${dtl.seq_prd}">
                                        <img src="${dtl.detail_img}" alt="상품 이미지" style="width: 50px; height: auto; margin-right: 10px;">
                                    </a>
                                    <div class="textus">
                                        <a class="" href="/front/buy/detail?seq_sel=${dtl.seq_sel}&seq_prd=${dtl.seq_prd}">
                                            <span class="tit">${dtl.corp_nm}</span>
                                            <span class="txt">${dtl.buy_prd_nm}</span>
                                        </a>
                                    </div>
                                </div>
                            </td>
                            <td class="">${dtl.count}</td>
                            <td>
                                <p><fmt:formatNumber type="number" value="${dtl.price}" />원</p>
                            </td>
                            
                            <td>
                                <strong><fmt:formatNumber type="number" value="${dtl.price * dtl.count}" pattern="#,##0" /></strong> 원
                            </td>
                            <c:if test="${status.index == 0}">
                                <td class="colorOrange" rowspan="${fn:length(mst.dtlList)}">
                                    <strong><fmt:formatNumber type="number" value="${mst.buy_t_price}" pattern="#,##0" /></strong> 원
                                </td>
                            </c:if>
                            <td>
                            <c:if test="${dtl.cd_state_delivery == 'N'}">
                            	<strong>배송전</strong>
                            </c:if>
                            <c:if test="${dtl.cd_state_delivery == 'C'}">
                            	<strong style="color: red;">배송중</strong>
                            </c:if>
                            <c:if test="${dtl.cd_state_delivery == 'Y'}">
                            	<strong style="color: green;">배송완료</strong>
                            </c:if>
                            </td>
                            <td>
                            	<c:choose>
                            	<c:when test="${dtl.cd_state_delivery == 'Y'}">
                            		<button type="button" class="openPopupBtn BtnDelete mgT5" data-dtl="${dtl.seq_dtl}" data-seq="${dtl.seq_sel}" data-prd="${dtl.seq_prd}"> 리뷰작성 </button>
                            	</c:when>
                            	<c:otherwise>
                            		<p>상품수령 전 입니다</p>
                            	</c:otherwise>
                            	</c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </tbody>
</table>

   
   </div>
   
   <script type="text/javascript">
   $(document).ready(function() {
	    // 모든 .openPopupBtn 버튼에 대해 처리합니다.
	    $(".openPopupBtn").each(function() {
	        var button = $(this); // 버튼 요소를 저장합니다.
	        var seq_sel = button.data("seq");
	        var seq_dtl = button.data("dtl");
	        var buttonsData = [{ seq_sel: seq_sel, seq_dtl: seq_dtl }]; // Ajax 요청에 사용할 데이터를 구성합니다.
	        
	        console.log(buttonsData);

	        $.ajax({
	            type: 'POST',
	            url: '/front/review/getReviewData',
	            contentType: 'application/json',
	            data: JSON.stringify(buttonsData),
	            success: function(response) {
	                console.log(response); // 응답을 확인합니다.
	                var isDuplicate = false;

	                // 받아온 리뷰 데이터와 비교하여 중복 여부를 확인합니다.
	                response.forEach(function(review) {
	                    if (review.seq_sel === seq_sel && review.seq_dtl === seq_dtl) {
	                        isDuplicate = true;
	                        return false;
	                    }
	                });

	                // 중복이 발견되면 버튼을 비활성화합니다.
	                if (isDuplicate) {
	                    //button.prop("disabled", true);
	                     button.hide(); // 버튼을 숨깁니다.
                    button.after("<p class='bold'>이미 리뷰를 작성하셨습니다</p>"); // 메시지를 추가합니다.
	                }
	            },
	            error: function(xhr, status, error) {
	                console.error('Ajax 요청 실패:', status, error);
	            }
	        });
	    });
	});
   
   
   
   /* 리뷰팝업 나중에 잘라낼것 */
   var popupWindow;

                          $(document).ready(function(){
                              // 클릭 이벤트 핸들러 등록
                              $(".openPopupBtn").click(function(){
                                  var seq = $(this).data("seq");
                                  var prd = $(this).data("prd");
                                  var dtl = $(this).data("dtl");
                                  openPopup(seq, prd, dtl);
                              });

                              // 팝업 열기 함수
                              function openPopup(seq, prd, dtl) {
                                  popupWindow = window.open("/front/review/writeForm?seq_sel=" + seq +"&seq_prd="+prd, "리뷰 작성", "width=600,height=500");
                                  
                                  setTimeout(function() {
                                      popupWindow.postMessage({seq_sel: seq, seq_prd: prd, dtl: dtl}, "*");
                                  }, 1000); // 1초 후에 데이터 전송
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


function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

</script>

         </div>
      </div>
      
   </div>
   

   <script>
      $(document).ready(function() {
          common.gnb.initMypageMenu(); 
      });
</script>   

<%@ include file="/WEB-INF/views/include/front/footer.jsp" %>
</body>
</html>
