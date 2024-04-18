<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script src="https://code.jquery.com/jquery-3.7.1.js"
   integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
   crossorigin="anonymous"> 
   </script>
   <script type="text/javascript" src="/js/front.js"></script>
   <script src="/js/jquery-3.7.1.min.js"></script>
   <script
      src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js">
      
   </script>





<link rel="stylesheet" type="text/css"
   href="https://oypartner.cj.net/CJOYP/css/jquery/plugins/jquery-ui/themes/smoothness/jquery-ui.min.css"
   media="screen">
<link rel="stylesheet" type="text/css"
   href="https://oypartner.cj.net/CJOYP/css/common/common.css"
   media="screen">
<link rel="stylesheet" type="text/css"
   href="https://oypartner.cj.net/CJOYP/css/prvsusr/common.css"
   media="screen">
<link rel="stylesheet" type="text/css"
   href="https://oypartner.cj.net/CJOYP/css/common/loadingimg.css"
   media="screen">





<script type="text/javascript">
   var CONST = {
      CONTEXT_PATH : "/CJOYP",
      G_LANGUAGE : '',
      USER_ID : "",
      IMG_PATH_LOADER : 'https://oypartner.cj.net/CJOYP/images/ajax-loader.gif'
   }
   // 스크립트에서 message를 사용하기 위한 처리
</script>

<!--비밀번호중복체크-->
<style>
.error {
   color: red;
}

.ok {
   color: green;
}

/* 아이디중복체크  */
.id_ok {
   color: #008000;
   display: none;
}

.id_already {
   color: red;
   display: none;
}
</style>

<!-- <script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/common/json2.js" charset="utf-8"></script>
    <script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/jquery/jquery.js" charset="utf-8"></script>
    <script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/prvsusr/jquery-ui.min.js"
        charset="utf-8"></script>
    <script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/jquery/plugins/jquery.blockUI.js"></script>
    <script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/jquery/plugins/jquery.cookie.js"></script>
    <script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/jquery/plugins/jquery-ui/jquery-ui-custom.js"
        charset="utf-8"></script>
    <script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/common/frameone-common.js"
        charset="utf-8"></script>
    <script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/prvsusr/slider.js" charset="utf-8"></script>
    <script type="text/javascript" src="https://oypartner.cj.net/CJOYP/js/prvsusr/common.js" charset="utf-8"></script> -->

</head>

<body>


   <!-- jQuery 라이브러리를 포함해야 합니다. -->
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script>
      // 판매자 회원가입 중복체크   
      function sellercheckId() {
         var id = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
         console.log("id=" + id);
         $.ajax({
            url : '/sellercheckId', //Controller에서 요청 받을 주소
            type : 'post', //POST 방식으로 전달
            data : {
               id : id
            },
            success : function(cnt) { //컨트롤러에서 넘어온 cnt값을 받는다 
               if (cnt == 0) { //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                  $('.id_ok').css("display", "inline-block");
                  $('.id_already').css("display", "none");
               } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                  $('.id_already').css("display", "inline-block");
                  $('.id_ok').css("display", "none");
               }
            },
            error : function() {
               alert("에러입니다");
            }
         });
      };

      //비밀번호 중복체크   
      function checkPassword() {
         var password = document.getElementById("passwd").value;
         var confirmPassword = document.getElementById("passwd1").value;

         if (password != confirmPassword) {
            document.getElementById("verfication").innerHTML = "비밀번호가 일치하지 않습니다.";
            document.getElementById("verfication").classList.remove("ok");
            document.getElementById("verfication").classList.add("error");
         } else {
            document.getElementById("verfication").innerHTML = "비밀번호가 일치합니다.";
            document.getElementById("verfication").classList
                  .remove("error");
            document.getElementById("verfication").classList.add("ok");
         }
      }
   </script>

   <script>
    
         
   
      
      function checkField() {
    	    if (document.getElementById("id").value == "") {
    	        alert("아이디를 입력하세요");
    	        document.getElementById("id").focus();
    	        return false;
    	    } else if (document.getElementById("passwd").value == "") {
    	        alert("비밀번호를 입력하세요");
    	        document.getElementById("passwd").focus();
    	        return false;
    	    } else if (document.getElementById("passwd1").value == "") {
    	        alert("비밀번호 확인을 입력하세요");
    	        document.getElementById("passwd1").focus();
    	        return false;
    	    } else if (document.getElementById("usrNm").value == "") {
    	        alert("업체명을 입력하세요");
    	        document.getElementById("usrNm").focus();
    	        return false;
    	    } else if (document.getElementById("bizregNo1").value == "" || document.getElementById("bizregNo2").value == "" || document.getElementById("bizregNo3").value == "") {
    	        alert("사업자 등록 번호를 입력하세요");
    	        document.getElementById("bizregNo1").focus();
    	        return false;
    	    } else if (document.getElementById("ceo").value == "") {
    	        alert("대표자명을 입력하세요");
    	        document.getElementById("ceo").focus();
    	        return false;
    	    } else if (document.getElementById("chrgrPhoneNo1").value == "" || document.getElementById("chrgrPhoneNo2").value == "" || document.getElementById("chrgrPhoneNo3").value == "") {
    	        alert("전화번호를 입력하세요");
    	        document.getElementById("chrgrPhoneNo1").focus();
    	        return false;
    	    } else if (document.getElementById("reprNm1").value == "" || document.getElementById("reprNm2").value == "") {
    	        alert("상세 주소를 입력하세요");
    	        document.getElementById("reprNm1").focus();
    	        return false;
    	    } else if (document.getElementById("chrgrNm").value == "") {
    	        alert("담당자명을 입력하세요");
    	        document.getElementById("chrgrNm").focus();
    	        return false;
    	    } else if (document.getElementById("chrgrMobilePhoneNo1").value == "" || document.getElementById("chrgrMobilePhoneNo2").value == "" || document.getElementById("chrgrMobilePhoneNo3").value == "") {
    	        alert("휴대전화번호를 입력하세요");
    	        document.getElementById("chrgrMobilePhoneNo1").focus();
    	        return false;
    	    } else if (document.getElementById("mng_email").value == "" || document.getElementById("mng_email").value == "") {
    	        alert("이메일을 입력하세요");
    	        document.getElementById("mng_email").focus();
    	        return false;
    	    }
    	    var form = document.getElementById("register");
            form.action="/seller/sellers/writeProc";
            form.submit();
       
    	}
      
   </script>



   <!-- skip navigation -->
   <div id="skipnavigation">
      <ul>
         <li><a href="#content">본문 바로가기</a></li>
         <li><a href="#gnb">주 메뉴 바로가기</a></li>
         <li><a href="#footer">하단 메뉴 바로가기</a></li>
      </ul>
   </div>
   <!-- //skip navigation -->

   <!-- wrap -->
   <div id="wrap">

      <!-- header -->
      <div id="header">

         <div id="header_son">

            <!-- logo area -->
            <h1 style="top: 0">
               <a href="/seller/main/main" title="메인페이지"> <img
                  style="width: 250px; height: 100px;" src="/seller/main/logo.png"
                  alt="GREEN HARMONY"></a>
            </h1>
            <!-- //logo area -->

            <!-- 기본메뉴 -->
            <div class="bnb">
               <h2 class="blind">기본메뉴</h2>
               <ul>



                  <li><a href="/seller/login/loginForm">로그인 &nbsp;&nbsp;|</a></li>
                  <li><a href="/seller/sellers/register">회원가입</a></li>



               </ul>
            </div>
            <!-- //기본메뉴 -->

            <!-- gnb -->
            <div class="gnb">
               <h2 class="blind">OLIVE YOUNG 제휴사이트 주요 공통메뉴</h2>
               <ul>
                  <li><a
                     href="/CJOYP/prvsuser/advicerequest/partnershipinquiry.fo"
                     class="gnb_01"><span class="blind">상품입점 및 제휴 문의</span></a></li>
                  <li><a
                     href="/CJOYP/prvsuser/advicerequest/advicerequestlist.fo"
                     class="gnb_02"><span class="blind">문의 결과 조회</span></a></li>
                  <!-- <li><a href="#" onclick="window.open('/CJOYP/prvsuser/elecContLink/elecContLink.fo', '_blank')" class="gnb_04"><span class="blind">전자계약</span></a></li> -->




                  <li><span class="gnb_04_off"><span class="blind">전자계약
                           시스템</span></span></li>


               </ul>
            </div>
            <!-- //gnb -->

         </div>
      </div>
      <!-- //header -->

      <!-- container -->
      <div id="container">

         <!-- content -->
         <div id="content">

            <!-- present page -->
            <p class="present_page">
               <span class="home"><a href="/CJOYP/prvsuser/index/index.fo">Home</a></span>
               <span>&gt;</span> <span>회원가입</span>
            </p>
            <!-- //present page -->

            <!-- content area -->
            <div class="content">

               <!-- content title -->
               <h2 class="content_title">
                  <img src="/seller/main/title_register.png" alt="회원가입">
               </h2>
               <!-- //content title -->

               <!-- content body -->
               <div class="content_body">

                  <!-- 유의사항 -->
                  <h3 class="blind">유의사항</h3>
                  <div class="section_div pl_44">
                     <ol>
                        <li>그린하모니 상품입점/제휴문의 등록을 위해서는 간단한 회원가입 절차가 필요합니다.</li>
                        <!-- <li>아래 양식을 통해 회원 가입 후 상품입점/제휴문의 기능을 사용할 수 있으며 임시아이디는 협력사회원 등록 후 자동 삭제됩니다.</li> -->
                        <li>업체 정보는 사업자등록증의 정보와 동일하게 입력해 주시기 바랍니다.</li>
                        <li>비밀번호는 영문자, 숫자, 특수문자 조합 8~12자로 입력해 주시기 바랍니다.</li>
                     </ol>

                  </div>
                  <!-- //유의사항 -->

                  <!-- form -->
                  <form id="register"  method="post">
                     <fieldset>
                        <legend>회원가입</legend>

                        <!-- common table row -->
                        <div class="common_table_row">
                           <!-- 업체 기본정보 -->
                           <table summary="이 표는 4행으로 구성되어 있으며 업체 기본정보를 입력하실 수 있습니다.">
                              <caption>업체 필수정보(필수)</caption>
                              <colgroup>
                                 <col width="143px">
                                 <col width="235px">
                                 <col width="143px">
                                 <col width="*">
                              </colgroup>
                              <tbody>
                                 <tr>
                                    <th scope="row"><span class="critical_items">아이디</span></th>
                                    <td colspan="3"><input type="text" id="id" name="id"
                                       title="아이디 입력" class="input_120" maxlength="12"
                                       oninput="sellercheckId()"> <span>&nbsp;영문자,
                                          숫자조합 6~12자</span> <span class="id_ok">사용 가능한 아이디입니다.</span> <span
                                       class="id_already">누군가 이 아이디를 사용하고 있어요.</span></td>

                                 </tr>
                                 <tr>
                                    <th scope="row"><span class="critical_items">비밀번호</span></th>
                                    <td colspan="3"><input type="password" id="passwd"
                                       name="passwd" title="비밀번호 입력" class="input_130" maxlength="12"
                                       onchange="checkPassword();"> <span>&nbsp;영문자,
                                          숫자, 특수문자 조합 8~12자</span></td>
                                 </tr>
                                 <tr>
                                    <th scope="row"><span class="critical_items">비밀번호
                                          확인</span></th>
                                    <td colspan="3"><input type="password" id="passwd1"
                                       name="passwd1" title="비밀번호 입력" class="input_130"
                                       maxlength="12" oninput="checkPassword();"> <span
                                       id="verfication">&nbsp;동일한 비밀번호를 입력해주세요.</span></td>
                                 </tr>
                                 <tr>
                                    <th scope="row"><span class="critical_items">업체명</span></th>
                                    <td><input type="text" id="usrNm" name="corp_nm"
                                       title="업체명 입력" class="input_120" maxlength="60"></td>
                                    <th scope="row"><span class="critical_items">사업자등록번호</span></th>
                                    <td><input type="text" id="bizregNo1" name="bizregNo1"
                                       title="첫번째 번호 입력" class="input_40" maxlength="3"
                                       style="ime-mode: disabled; width: 40px;"> - <input
                                       type="text" id="bizregNo2" name="bizregNo2"
                                       title="두번째 번호 입력" class="input_30" maxlength="2"
                                       style="ime-mode: disabled; width: 30px;"> - <input
                                       type="text" id="bizregNo3" name="bizregNo3"
                                       title="세번째 번호 입력" class="input_50" maxlength="5"
                                       style="ime-mode: disabled; width: 50px;" onchange="plus();">
                                       <span>&nbsp;###-##-#####</span> <input id="corp_num"
                                       name="corp_num" type="hidden" /></td>
                                 </tr>
                                 <script type="text/javascript">
                                    function plus() {
                                       var a = document
                                             .getElementById("bizregNo1").value;
                                       var b = document
                                             .getElementById("bizregNo2").value;
                                       var c = document
                                             .getElementById("bizregNo3").value;

                                       var corp_num = document
                                             .getElementById("corp_num");

                                       corp_num.value = a + b + c;
                                    }
                                 </script>
                                 <tr>
                                    <th scope="row"><span class="critical_items">대표자명</span></th>
                                    <td colspan="3"><input type="text" id="ceo" name="ceo"
                                       title="대표자명 입력" class="input_120" maxlength="60"></td>

                                 </tr>
                                 <tr>
                                    <th scope="row"><span class="critical_items">전화번호</span></th>
                                    <td><select name="chrgrPhoneNo1" id="chrgrPhoneNo1"
                                       class="select_50" title="">
                                          <option value="02">02</option>
                                          <option value="031">031</option>
                                          <option value="032">032</option>
                                          <option value="033">033</option>
                                          <option value="041">041</option>
                                          <option value="042">042</option>
                                          <option value="043">043</option>
                                          <option value="044">044</option>
                                          <option value="051">051</option>
                                          <option value="052">052</option>
                                          <option value="053">053</option>
                                          <option value="054">054</option>
                                          <option value="055">055</option>
                                          <option value="061">061</option>
                                          <option value="062">062</option>
                                          <option value="063">063</option>
                                          <option value="064">064</option>
                                          <option value="070">070</option>
                                          <option value="0130">0130</option>
                                          <option value="0303">0303</option>
                                          <option value="0502">0502</option>
                                          <option value="0504">0504</option>
                                          <option value="0505">0505</option>
                                          <option value="0506">0506</option>
                                          <option value="010">010</option>
                                          <option value="011">011</option>
                                          <option value="016">016</option>
                                          <option value="017">017</option>
                                          <option value="018">018</option>
                                          <option value="019">019</option>
                                    </select> - <input type="text" id="chrgrPhoneNo2"
                                       name="chrgrPhoneNo2" title="국번 입력" class="input_40"
                                       maxlength="4" style="ime-mode: disabled; width: 50px">
                                       - <input type="text" id="chrgrPhoneNo3"
                                       name="chrgrPhoneNo3" title="마지막번호 입력" class="input_40"
                                       maxlength="4" style="ime-mode: disabled; width: 50px"
                                       onchange="plustel();"> <input id="corp_tel" type="hidden"
                                       name="corp_tel" /> <script type="text/javascript">
                                          function plustel() {
                                             var d = document
                                                   .getElementById("chrgrPhoneNo1").value;
                                             var e = document
                                                   .getElementById("chrgrPhoneNo2").value;
                                             var f = document
                                                   .getElementById("chrgrPhoneNo3").value;

                                             var corp_tel = document
                                                   .getElementById("corp_tel");

                                             corp_tel.value = d
                                                   + "-" + e
                                                   + "-" + f;
                                          }
                                       </script></td>
                                 <tr>
                                    <th scope="row"><span class="critical_items">업체 주소</span></th>
    <td colspan="3">
        <input style="width: 200px" type="text" id="reprNm1" name="corp_addr1" title="주소 입력" class="input_120" maxlength="60">
        <button type="button" id="btnSearchPostcode" onclick="execDaumPostcode();" class="btn_sub ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button">
            <span class="ui-button-text">우편번호 검색</span>
        </button>
        <input type="text" placeholder="우편번호" id="postcode" name="corp_postcode" title="우편번호 입력" class="input_120" maxlength="60" readonly="readonly">
        <input type="text" id="reprNm2" name="corp_addr2" title="상세주소 입력" placeholder="상세주소입력" class="input_120" maxlength="60">
    </td>
</tr>
<script>
function execDaumPostcode() {
    var width = 500; //팝업의 너비
    var height = 600; //팝업의 높이
    
    new daum.Postcode({
        width: width,
        height: height,
        oncomplete: function(data) {
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수
            
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("postcode").value = data.zonecode;
            document.getElementById("reprNm1").value = roadAddr;
            document.getElementById("reprNm2").value = data.jibunAddress;
        }
    }).open({
        left: (window.screen.width / 2) - (width / 2),
        top: (window.screen.height / 2) - (height / 2)
    });
}


</script>


                              </tbody>
                           </table>
                           <!-- //업체 기본정보 -->
                        </div>
                        <!-- //common table row -->

                        <!-- common table row -->
                        <div class="common_table_row">
                           <!-- 담당자 정보 -->
                           <!-- 담당자 영역  -->
                           <table summary="이 표는 3행으로 구성되어 있으며 담당자 정보를 입력하실 수 있습니다.">
                              <caption>담당자 필수정보(필수)</caption>
                              <colgroup>
                                 <col width="143px">
                                 <col width="297px">
                                 <col width="143px">
                                 <col width="*">
                              </colgroup>
                              <tbody>
                                 <tr>
                                    <th scope="row"><span class="critical_items">담당자명</span></th>
                                    <td colspan="3"><input type="text" id="chrgrNm"
                                       name="mng_nm" title="담당자명 입력" class="input_120"
                                       maxlength="60"></td>
                                    <!--                            <th scope="row">담당자 부서</th>
                                        <td><input type="text" id="chrgrDeptNm" name=chrgrDeptNm title="담당자 부서 입력" class="input_120" maxlength="60" /></td> -->
                                 </tr>
                                 <th scope="row"><span class="critical_items">휴대전화번호</span></th>
                                 <td><select name="chrgrMobilePhoneNo1"
                                    id="chrgrMobilePhoneNo1" class="select_50" title="">
                                       <option value="010">010</option>
                                       <option value="011">011</option>
                                       <option value="016">016</option>
                                       <option value="017">017</option>
                                       <option value="018">018</option>
                                       <option value="019">019</option>
                                       <option value="070">070</option>
                                       <option value="0130">0130</option>
                                       <option value="0303">0303</option>
                                       <option value="0502">0502</option>
                                       <option value="0504">0504</option>
                                       <option value="0505">0505</option>
                                       <option value="0506">0506</option>
                                 </select> - <input type="text" id="chrgrMobilePhoneNo2"
                                    name="chrgrMobilePhoneNo2" title="국번 입력" class="input_40"
                                    maxlength="4" style="ime-mode: disabled; width: 50px"
                                    oninput="plustel1();"> - <input type="text"
                                    id="chrgrMobilePhoneNo3" name="chrgrMobilePhoneNo3"
                                    title="마지막번호 입력" class="input_40" maxlength="4"
                                    style="ime-mode: disabled; width: 50px"
                                    oninput="plustel1();"></br> <input id="mng_phone" type="hidden"
                                    name="mng_phone" /> <script type="text/javascript">
                                       function plustel1() {
                                          var d = document
                                                .getElementById("chrgrMobilePhoneNo1").value;
                                          var e = document
                                                .getElementById("chrgrMobilePhoneNo2").value;
                                          var f = document
                                                .getElementById("chrgrMobilePhoneNo3").value;

                                          var mng_phone = document
                                                .getElementById("mng_phone");

                                          mng_phone.value = d
                                                + "-" + e + "-"
                                                + f;
                                       }
                                    </script></td>

                                 </tr>
                                 <tr>
                                  <tr>
    <th scope="row"><span class="critical_items">이메일</span></th>
    <td colspan="3">
        
        <input id="mng_email" name="mng_email" />
    </td>
</tr>

                 </tr>
                              </tbody>
                           </table>
                           <!-- //담당자 정보 -->
                        </div>
                        <!-- //common table row -->
                        <!-- 사업자 정보제공 동의 -->
                        <div class="agree">
                           <h3 class="title_sub_section">개인정보보호를 위한 이용자 동의서</h3>
                           <div class="agree_check_area">
                              <p class="p1">필수 개인 정보수집 및 이용에 동의 합니다.</p>
                              <p class="p2">
                                 <label for="agree">동의</label> <input type="checkbox"
                                    name="infoOfrAgrYn" id="infoOfrAgrYn" value="Y">
                              </p>
                           </div>
                           <div class="agree_info_area">
                              <ol>
                                 그린하모니(주)(이하 “회사”라 함)는 개인정보를 중요시하며, 「정보통신망 이용촉진 및 정보보호 등에 관한
                                 법률」(이하 「정보통신망법」으로 약칭) 제27조의2 제2항에 따라 거래 상담 요청자 혹은 협력사 담당자의
                                 개인정보를 보호하기 위하여 다음과 같은 내용의 개인정보 수집 및 이용을 하고자 합니다.
                                 <br> 상담요청자는 본 동의는 거부할 수 있습니다. 다만, 동의를 하시지 않을 경우에는 본 서비스를
                                 이용할 수 없음을 알려드립니다.
                                 <li>1. 개인정보의 수집 및 이용 목적
                                    <ol>
                                       <li>1) 입점상담 및 거래 관련 고지사항 전달 등 사업관련 의사소통 확보</li>
                                       <li>2) 입점 시 전자계약 시스템 이용을 위한 로그인 정보 연동</li>
                                       <li>3) 기타 원활한 양질의 서비스 제공</li>
                                    </ol>
                                 </li>
                                 <li>2. 수집하는 개인정보의 항목
                                    <ol>

                                       <li>1) 필수사항 <span> - 이용자의 식별을 위한 내용 : 이름, 이메일,
                                             전화번호, 휴대전화번호, 아이디, 비밀번호</span>
                                       </li>
                                       <li>2) 선택사항 <span> - 대표자 이메일, 담당자 부서 </span>
                                       </li>
                                       <li>3) 기타 자동수집 정보 (서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이
                                          생성되어 수집될 수 있습니다.) <span> - 서비스 이용기록, 접속IP정보</span>
                                       </li>
                                    </ol>
                                 </li>
                                 <li>3. 개인정보의 보유 및 이용기간
                                    <ol>
                                       <li>1) 당사는 회원의 개인정보 수집, 이용에 대한 동의일로부터 개인정보 수집 및 제공목적이
                                          달성될 때까지 개인정보를 보유하고 이용합니다.</li>
                                       <li>2) 당사는 수집된 회원의 개인정보에 대해서 그 수집 목적 또는 제공 받은 목적이
                                          달성되거나 회사와의 거래가 종료되어 이용자가 고객센터를 통하여 협력사 포털사이트 회원 탈퇴를 하는 경우
                                          혹은 당사가 사업을 폐업하는 경우 해당 정보를 지체 없이 파기하는 것을 원칙으로 합니다.</li>
                                       <li>3) 장기 미이용 회원 개인정보 파기 정책 : 당사는 서비스에 1년 이상 로그인 이력이
                                          없는 이용자 혹은 협력사 담당자(계약여부와 무관)의 개인정보를 삭제 처리하며, 삭제된 개인정보는 복구되지
                                          않습니다.</li>
                                    </ol>
                                 </li>
                              </ol>
                           </div>

                           <!--<div class="section_div pl_44">
                        <ol  style="font-weight: bold">
                            ※귀하는 상품입점/제휴문의 등록을 위한 회원가입 시 (필수)개인정보 수집·이용에 동의하지 않을 수 있으나, 동의를 거부 할 경우 회원가입이 불가합니다.</br>
                             &nbsp&nbsp&nbsp&nbsp단, (선택)개인정보 수집에 동의하지 않으셔도 회원가입은 가능합니다.
                        </ol>
                
    </div> -->
                        </div>
                        <div>


                           &nbsp;<br>&nbsp;<br>


                        </div>
                        <div>



                           <ol style="font-weight: bold">
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;※ 귀하는 상품입점/제휴문의 등록을
                              위한 회원가입 시 (필수)개인정보 수집·이용에 동의하지 않을 수 있으나, 동의를 거부 할 경우 회원가입이
                              불가합니다.
                              <br>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;단,
                              (선택)개인정보 수집에 동의하지 않으셔도 회원가입은 가능합니다.
                              <br> &nbsp;
                           </ol>


                        </div>


                   <div class="common_table_row">
    <!-- 업체선택정보 -->
    <table summary="이 표는 3행으로 구성되어 있으며 담당자 정보를 입력하실 수 있습니다.">
        <caption>업체 선택정보(선택)</caption>
        <colgroup>
            <col width="143px">
            <col width="297px">
            <col width="143px">
            <col width="*">
        </colgroup>
        <tbody>
             <th scope="row">대표자 이메일</th>
    	<td colspan="3">
      
     
        <input type="text" id="corp_email" name="corp_email" />
    </td>
</tr>

        </tbody>
    </table>
    <!-- //업체선택정보 -->
</div>
<<script>
    function updateMngEmail() {
        var username = document.getElementById("reprEmailAddrId").value;
        var domain = document.getElementById("reprEmailAddrDomainS").value;
        var mngEmailField = document.getElementById("mng_email");

        if (domain === "") {
            mngEmailField.value = "";
        } else {
            mngEmailField.value = (username.trim() !== "") ? (username + "@" + domain) : "";
        }
    }
</script>

                        &nbsp;&nbsp;&nbsp;

                        <div class="agree_check_area">
                           <p class="p1">선택 개인 정보 수집 및 이용에 동의 합니다.</p>
                           <p class="p2">
                              <label for="agree">동의</label> <input type="checkbox"
                                 name="chcInfoOfrAgr" id="chcInfoOfrAgrY"
                                 onclick="check_only(this)"> <label for="agree">동의안함</label>
                              <input type="checkbox" name="chcInfoOfrAgr"
                                 id="chcInfoOfrAgrN" onclick="check_only(this)">
                           </p>
                        </div>
                        <!-- btn bottom area -->
                        <div class="btn_bottom_area">
                           <ul>
                              <li><a href="/CJOYP/prvsuser/register/register.fo"
                                 class="btn_cancel">취소</a></li>
                              <li><a href="#" class="btn_registration" onclick="checkField();">회원가입</a></li>
                           </ul>
                        </div>
                        <!-- //btn bottom area -->

                     </fieldset>

                  </form>
                  <!-- //form -->

               </div>
               <!-- //content body -->

            </div>
            <!-- //content area -->

         </div>
         <!-- //content -->

      </div>
      <!-- //container -->
   </div>
   <!-- //wrap -->

   <!-- footer -->



   <div id="footer">
      <div id="footer_son">

         <!-- 푸터 로고 -->
         <!-- <p class="logo_footer"><a href="/CJOYP/prvsuser/index/index.fo" title="main"><img src="/CJOYP/images/prvsusr/logo_footer.png" alt="OLIVE YOUNG" /></a></p> -->
         <p class="logo_footer">
            <img src="/seller/main/logo2.png" alt="GRREN HARMONY">
         </p>
         <!-- //푸터 로고 -->

         <!-- footer info -->
         <div class="footer_info">
            <p class="cs">
               <a href="http://www.oliveyoung.co.kr/store/company/brandStory.do"
                  target="_blank"><font color="#CBCACA">그린하모니 소개</font></a> | <a
                  href="http://www.oliveyoung.co.kr/store/company/privacy.do"
                  target="_blank"><font color="#91C348"><b>개인정보처리방침</b></font></a>
            </p>
            <br>
            <!-- 고객센터  -->
            <p class="cs">
               그린하모니㈜ | 주소 : (04323) 서울특별시 용산구 한강대로 372, 24층 (동자동, KDB타워) |
               사업자등록번호 : 809-81-01574<br> 대표이사 : 이선정 | 고객센터 : 1577~4887 (평일
               9:00~18:00)
            </p>
            <!-- //고객센터 -->
            <!-- copyright -->
            <p class="cs">Copyright ⓒ 2016 CJ OliveYoung. All rights
               reserved.</p>
            <!-- //copyright -->

         </div>
         <!-- //footer info -->

      </div>
   </div>
   <!-- //footer -->





</body>

</html>