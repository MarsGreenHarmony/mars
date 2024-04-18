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
<link rel="stylesheet" type="text/css" href="mypage.css">

<meta property="og:type" content="website">
<meta property="og:title" content="마이페이지">
<meta property="og:url"
   content="https://www.oliveyoung.co.kr/store/main/main.do">
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

<!-- 동구밭 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="icon"
   href="https://www.donggubat.co.kr/data/common/favicon.ico"
   type="image/x-icon">

<link type="text/css" rel="stylesheet" href="/donggubat/donggubat1.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat2.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat3.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat4.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat5.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat6.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat7.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat8.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat9.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat10.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat11.css">
<!-- <link type="text/css" rel="stylesheet"
 1  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/reset.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 2  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/common.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 3  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/layer/layer.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 4  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/layout/layout.css?ts=1664527143">
<link type="text/css" rel="stylesheet"
5   href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/goods/list.css?ts=1666156327">
<link type="text/css" rel="stylesheet"
 6  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/button.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
  7 href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/member/member.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 8  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/js/jquery/chosen/chosen.css?ts=1663913816">
<link type="text/css" rel="stylesheet"
 9  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/custom.css?ts=1663913816">

Add style : start
<link type="text/css" rel="stylesheet"
10   href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/plugins/bootstrap-datetimepicker.min.css">
<link type="text/css" rel="stylesheet"
 11  href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/plugins/bootstrap-datetimepicker-standalone.css">
Add style : end -->


<style>
/* 로그인중복체크 */
.id_ok {
   color: #008000;
   display: none;
}

.id_already {
   color: #6A82FB;
   display: none;
   }
 
</style>

<script>

function checkId(){
    var id = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
    console.log("id="+id);
    $.ajax({
        url:'/idCheck', //Controller에서 요청 받을 주소
        type:'post', //POST 방식으로 전달
        data:{id:id},
        success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
            if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                $('.id_ok').css("display","inline-block"); 
                $('.id_already').css("display", "none");
            } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                $('.id_already').css("display","inline-block");
                $('.id_ok').css("display", "none");
                alert("아이디를 다시 입력해주세요");
                $('#id').val('');
            }
        },
        error:function(){
            alert("에러입니다");
        }
    });
};
  
   
    
    function checkPassword() {
        var p1 = document.getElementById('passwd1').value;
        var p2 = document.getElementById('passwd2').value;
        
        if (p1.length < 6) {
            alert('입력한 글자가 6글자 이상이어야 합니다.');
            return false;
        }
        
        if (p1 !== p2) {
            document.querySelector('.pwck_input_re_1').style.display = 'none';
            document.querySelector('.pwck_input_re_2').style.display = 'inline-block';
            return false;
        } else {
            document.querySelector('.pwck_input_re_1').style.display = 'inline-block';
            document.querySelector('.pwck_input_re_2').style.display = 'none';
            return true;
        }
    }
    

    // 이메일 도메인을 선택할 때 호출되는 함수
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
    
    function checkField(){
        if(document.addjoin.id.value == "") {
            alert("아이디를 입력하세요");
            document.addjoin.id.focus();
            return false; // 폼 제출을 중단하고 함수를 빠져나갑니다.
        } else if(document.addjoin.passwd1.value == "") {
            alert("비밀번호를 입력하세요");
            document.addjoin.passwd1.focus();
            return false;
        } else if(document.addjoin.passwd2.value == "") {
            alert("비밀번호 확인을 입력하세요");
            document.addjoin.passwd2.focus();
            return false;
        } else if(document.addjoin.phone.value == "") {
             alert("휴대폰 번호를 입력하세요");
             document.addjoin.phone.focus();
             return false;    
        } else if(document.addjoin.cst_nm.value == "") {
            alert("이름을 입력하세요");
            document.addjoin.cst_nm.focus();
            return false;
        } else if(document.addjoin.addr1.value == "") {
            alert("상세 주소를 입력하세요");
            document.addjoin.addr1.focus();
            return false;
        } else if(document.addjoin.cst_email.value == "") {
            alert("이메일을 입력하세요");
            document.addjoin.cst_email.focus();
            return false;
        } 
        // 모든 필드가 유효하면 true를 반환하여 폼 제출을 허용합니다.
        return true;
    }
    
</script>

</head>
<body class="body-member body-join pc">
   <%@ include file="/WEB-INF/views/include/front/header.jsp"%>
   <!-- 본문 시작 -->


   <div class="sub_content">

      <!-- //side_cont -->
      <style>
.sub_content {
   padding-top: 200px;
}
</style>

<form name="addjoin" id="frmMain" onsubmit="return checkField()" action="/front/customer/writeProc" method="post">
      <div class="content_box">
         <div class="join_base_wrap">
            <div class="member_tit">
               <h2>회원가입</h2>
               <ol>
                  <li><span>01</span> 약관동의<span><img
                        src="https://cdn-pro-web-241-113.cdn-nhncommerce.com/donggubat1_godomall_com/data/skin/front/moment_dpx_0923/img/member/icon_join_step_off.png"
                        alt="약관동의완료"></span></li>
                  <li class="page_on"><span>02</span> 정보입력<span><img
                        src="https://cdn-pro-web-241-113.cdn-nhncommerce.com/donggubat1_godomall_com/data/skin/front/moment_dpx_0923/img/member/icon_join_step_on.png"
                        alt="정보입력진행중"></span></li>
                  <li><span>03</span> 가입완료</li>
               </ol>
            </div>
            <!-- //member_tit -->
            <div class="member_cont">
            
                  <!-- 회원가입/정보 기본정보 -->
                  <div class="base_info_box">
                     <h3>기본정보</h3>
                     <span class="important">표시는 반드시 입력하셔야 하는 항목입니다.</span>
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
                                          data-pattern="gdMemberId">
                                       
                                       <!-- id ajax 중복체크 -->
                                       <span class="id_ok">사용 가능한 아이디입니다.</span> <span
                                          class="id_already">누군가 이 아이디를 사용하고 있어요.</span>
                                    </div>
                                 </td>

                              </tr>
                              <tr class="">
                                 <th><span class="important">비밀번호</span></th>
                                 <td class="member_password">
                                     <div class="member_warning">
                                         <input type="password" id="passwd1" name="passwd" autocomplete="off" placeholder="">
                                     </div>
                                 </td>
                                 </tr>
                                 <th><span class="important">비밀번호 확인</span></th>
                                 <td>
                                     <input type="password" id="passwd2" name="passwd2" oninput="checkPassword()">
                                   
                                     <span class="pwck_input_re_1" style="display:none;">비밀번호가 일치합니다.</span>
                                     <span class="pwck_input_re_2" style="display:none;">비밀번호가 일치하지 않습니다.</span>
                                 </td>
                                       <div class="member_warning">
                                    
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <th><span class="important">이름</span></th>
                                 <td>
                                    <div class="member_warning">
                                       <input type="text" name="cst_nm" id="cst_nm"
                                          data-pattern="gdMemberNmGlobal" value="" maxlength="30">
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
                                       <input type="text" name ="cst_email" id="cst_email" placeholder="이메일을 입력하세요">
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
                              이메일 수신 동의<input type="checkbox" name="flg_email" value="Y" style="width:15px; visibility: visible; position: relative;" />
                              
                        
                                  
                              </tr>
                              <tr>
                              <th><span class="important">휴대폰번호</span></th>
                                 <td class="member_address">
                                     <div class="address_postcode">
                                         <input type="text" id="phone" name="phone" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value="">
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
                  <!-- //base_info_box -->
                  <!-- 회원가입/정보 기본정보 -->
                  <!-- 회원가입/정보 사업자정보 -->
                  <!-- 회원가입/정보 사업자정보 -->
                  <!-- 회원가입/정보 부가정보 -->
                 
                         


                  <div class="btn_center_box">
                       <button type="button" id="btnCancel" class="btn_member_cancel" onclick="location.href='/front/login/loginForm'">취소</button>
                     <button type="submit" id="btnSuccess"class="btn_comfirm js_btn_join"
                        value="회원가입">회원가입</button>
                  </div>
                  <!-- //btn_center_box -->
               </form>
            </div>
            <!-- //member_cont -->
         </div>
         <!-- //join_base_wrap -->
      </div>
      <!-- //content_box -->
      <!--  <script type="text/javascript">
                        var paycoProfile = [];
                        var naverProfile = [];
                        var thirdPartyProfile = Array;
                        var kakaoProfile = [];

                        $(document).ready(function () {
                            var $formJoin = $('#formJoin');

                            $(':text:first', $formJoin).focus();

                            $('#btnCancel', $formJoin).click(function (e) {
                                e.preventDefault();
                                top.location.href = '/';
                            });

                            if ($('.js_datepicker').length) {
                                $('.js_datepicker').datetimepicker({
                                    locale: 'ko',
                                    format: 'YYYY-MM-DD',
                                    dayViewHeaderFormat: 'YYYY MM',
                                    viewMode: 'days',
                                    ignoreReadonly: true,
                                    debug: false,
                                    keepOpen: false
                                });
                            }

                            $('#btnPostcode').click(function (e) {
                                e.preventDefault();
                                $('#address-error, #addressSub-error').remove();
                                $(':text[name=address], :text[name=addressSub]').removeClass('text_warning');
                                gd_postcode_search('zonecode', 'address', 'zipcode');
                            });

                            $('#btnCompanyPostcode').click(function (e) {
                                e.preventDefault();
                                $('#comAddress-error, #comAddressSub-error').remove();
                                $(':text[name=comAddress], :text[name=comAddressSub]').removeClass('text_warning');
                                gd_postcode_search('comZonecode', 'comAddress', 'comZipcode');
                            });


                            function sendDateData(year, month, type) {
                                var dayType = '';
                                var params = {
                                    year: year,
                                    month: month,
                                };
                                $.ajax('../share/date_select_json.php', {
                                    data: params,
                                    method: "POST",
                                    success: function (data) {
                                        if (data != '' && data != null) {
                                            if (type == 'marry') {
                                                dayType = 'marriDay';
                                            } else {
                                                dayType = 'birthDay';
                                            }
                                            $('#' + dayType).empty();
                                            $('#' + dayType).append(data);
                                        }
                                    }
                                });
                            }


                            $('#birthYear').change(function () {
                                var birthMonthVal = $('#birthMonth').val();
                                if (birthMonthVal != '') {
                                    sendDateData($('#birthYear').val(), $('#birthMonth').val(), 'birth');
                                }
                            });
                            $('#birthMonth').change(function () {
                                var birthYearVal = $('#birthYear').val();
                                if (birthYearVal != '') {
                                    sendDateData($('#birthYear').val(), $('#birthMonth').val(), 'birth');
                                }
                            });

                            gd_select_email_domain('email');

                            gd_member2.init($formJoin);

                            $('.js_btn_join').click({ form: $formJoin }, gd_member2.save);
                        });


                        /**
                         * 회원가입시 Exception 발생하는 경우 회원가입 버튼 복원
                         */
                        function callback_not_disabled() {
                            $('.js_btn_join').prop("disabled", false);
                            $('.js_btn_join em').html("회원가입");
                        }
                    </script> -->
   </div>
   <!-- //sub_content -->
   </div>
   <!-- //본문 끝 contents -->
   <!-- //container -->
   <!-- 절대! 지우지마세요 : Start -->
   <div id="layerDim" class="dn">&nbsp;</div>
   <iframe name="ifrmProcess" src="/blank.php" style="display: none"
      width="100%" height="0" bgcolor="#000"></iframe>
   <!-- 절대! 지우지마세요 : End -->

   <!-- 외부 스크립트 -->


   <script type="text/javascript">
        (function (m, b, r, i, s) { m.mbris = m.mbris || function () { (m.mbris.q = m.mbris.q || []).push(arguments) }; i = b.createElement(r); i.async = !0; i.defer = !0; i.src = "https://cdn.megadata.co.kr/dist/prod/enp_mbris.min.js"; 0 < b.querySelectorAll("script[src*=enp_mbris]").length && m.ENP_MBRIS_INVOKE ? m.ENP_MBRIS_INVOKE() : (s = b.getElementsByTagName(r)[0], s.parentNode.insertBefore(i, s)) })(window, document, "script");
        mbris("20210361145555301_donggubat1_3_01,20210361145555302_donggubat1_3_02");
    </script>

   <!-- Enliple Tracker Start -->
   <script type="text/javascript">
        (function (a, g, e, n, t) { a.enp = a.enp || function () { (a.enp.q = a.enp.q || []).push(arguments) }; n = g.createElement(e); n.async = !0; n.defer = !0; n.src = "https://cdn.megadata.co.kr/dist/prod/enp_tracker_godomall_rent.min.js"; t = g.getElementsByTagName(e)[0]; t.parentNode.insertBefore(n, t) })(window, document, "script");
        enp('create', 'common', 'donggubat1', { device: 'W' });
        enp('send', 'common', 'donggubat1');
    </script>
   <!-- Enliple Tracker End -->

   <!-- 21.07.23 뷰저블 코드 추가 -->
   <script type="text/javascript">
        (function (w, d, a) {
            w.__beusablerumclient__ = {
                load: function (src) {
                    var b = d.createElement("script");
                    b.src = src; b.async = true; b.type = "text/javascript";
                    d.getElementsByTagName("head")[0].appendChild(b);
                }
            }; w.__beusablerumclient__.load(a);
        })(window, document, "//rum.beusable.net/script/b210722e112242u142/c42f9880e0");
    </script>



   <!-- 
    <script>(function (i, s, o, g, r, a, m) { if (s.getElementById(g)); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.id = g; a.async = 1; a.src = r; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'crema-jssdk', '//widgets.cre.ma/donggubat.godomall.com/init.js');</script>
    <iframe allow="join-ad-interest-group" data-tagging-id="AW-10809124153" data-load-time="1709624980221" height="0"
        width="0" style="display: none; visibility: hidden;"
        src="https://td.doubleclick.net/td/rul/10809124153?random=1709624980212&amp;cv=11&amp;fst=1709624980212&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be42t1v892470022z878089546za220&amp;gcd=13l3l3l3l1&amp;dma=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.donggubat.co.kr%2Fmember%2Fjoin.php&amp;ref=https%3A%2F%2Fwww.donggubat.co.kr%2Fmember%2Fjoin_agreement.php%3FmemberFl%3Dpersonal&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EB%8F%99%EA%B5%AC%EB%B0%AD%20%EA%B3%B5%EC%8B%9D%EB%AA%B0%20%E2%80%93%20%EC%9E%A5%EC%95%A0%EC%9D%B8%EA%B3%BC%20%EB%B9%84%EC%9E%A5%EC%95%A0%EC%9D%B8%EC%9D%B4%20%ED%95%A8%EA%BB%98%20%EB%A7%8C%EB%93%9C%EB%8A%94%20%EC%A7%80%EC%86%8D%EA%B0%80%EB%8A%A5%ED%95%9C&amp;npa=0&amp;pscdl=noapi&amp;auid=565347302.1709001008&amp;uaa=x86&amp;uab=64&amp;uafvl=Chromium%3B122.0.6261.95%7CNot(A%253ABrand%3B24.0.0.0%7CGoogle%2520Chrome%3B122.0.6261.95&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;fledge=1&amp;data=event%3Dgtag.config%3Bcontent_group%3D%EA%B8%B0%ED%83%80"></iframe><iframe
        id="_hjSafeContext_30222844" title="_hjSafeContext" tabindex="-1" aria-hidden="true" src="about:blank"
        style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;"></iframe>
    <div id="mbris_bounce_section" style="height: 0px; z-index: 100000; visibility: hidden; overflow: hidden;"><iframe
            scrolling="no" id="iframe_mbris_bounce_section"
            style="width: 100%; height: 0px; border: none; opacity: 0;"></iframe></div> -->
   <%@ include file="/WEB-INF/views/include/front/footer.jsp"%>
</body>
</lang>
</form>
</html>