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

<link type="text/css" rel="stylesheet" href="/donggubat/donggubat1.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat2.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat3.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat4.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat5.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat6.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat8.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat9.css">
<link type="text/css" rel="stylesheet" href="/donggubat/donggubat12.css">

<!-- 1<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/reset.css?ts=1663913816">   
2<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/common.css?ts=1663913816">
3<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/common/layer/layer.css?ts=1663913816">
4<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/layout/layout.css?ts=1664527143">
5<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/goods/list.css?ts=1666156327">
6<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/button.css?ts=1663913816">
8<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/js/jquery/chosen/chosen.css?ts=1663913816">
9<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/custom.css?ts=1663913816"> -->

<link type="text/css" rel="stylesheet" href="https://www.donggubat.co.kr/data/skin/front/moment_dpx_0923/css/donggu/donggu.css?ts=1705303957">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

 <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
      <script type="text/javascript" src="/js/front.js"></script>
   <script src="/js/jquery-3.7.1.min.js"></script>
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js">
   
   </script>
<script>
function toggleCheckbox(checkbox) {
    var maillingLabel = document.getElementById('maillingLabel');
    if (checkbox.checked) {
        maillingLabel.classList.add('checked');
    } else {
        maillingLabel.classList.remove('checked');
    }
}
<<<<<<< HEAD
function toggleCheckbox(checkbox) {
    var deliveryState = document.getElementById('dev_state_checkbox');
    if (checkbox.checked) {
        // 기존 배송지를 새로운 배송지로 수정하기 위해 form의 test input 값을 "test"로 설정
        document.getElementById("test").value = "test";
        alert("기존 배송지로 변경되었습니다.");
    } else {
        // 기존 배송지를 그대로 유지하기 위해 form의 test input 값을 빈 문자열로 설정
        document.getElementById("test").value = "";
    }
}
=======

function toggleCheckbox2(checkbox) {
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

>>>>>>> branch 'main' of http://192.168.0.57/all/kr.co.himedia.sn.ecommerce5th.mars.git
</script>
    
<style>
body {
    margin: 0;
    padding: 0;
}

.left_table_type .postcode input {
    background: #979797;
    width: 100px;
    color: #FFF;
    font-weight: bold;
    margin-left: 20px;
}

#addr2 {
    width: 250px;
    /* 너비를 원하는 값으로 조정 */
}

.modifyBtn{
	width: 5%;
    border: solid 1px white;
    position: absolute;
    right: 30%;
    background: #979798;
    color: #FFF;
}
</style>
<body>
    <form id="modifyForm" action="/front/delivery/modifyProc" method="post">
        <div class="layer_wrap_cont" style="margin: 0px;">

            <input type="hidden" name="mode" value="shipping_regist">
            <input type="hidden" name="sno" value="">
            <input type="hidden" name="shippingNo" value="">
            <div class="ly_tit">
                <h4>나의 배송지 관리</h4>
            </div>
            <div class="ly_cont">
                <div class="scroll_box">
                    <h5>배송지 등록</h5>
                    <div class="left_table_type">
                        <table>
                            <colgroup>
                                <col style="width:20%;">
                                <col style="width:80%;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row"><span class="important">배송지 이름</span></th>
                                    <td><input type="text" id="dev_nm" name="dev_nm" value="${deliveryDto.dev_nm}" ></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">받으실 분</span></th>
                                    <td><input type="text" name="dev_hm" maxlength="20" value="${deliveryDto.dev_hm}"></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">받으실 곳</span></th>
                                    <td class="member_address">
                                        <div class="address_postcode">
                                            <input type="text" id="postcode" name="postcode" size="5"  placeholder="도로명" 
                                                value="${deliveryDto.postcode}"  />

                                            <label for="addr1"></label>
                                            <input type="text" id="addr1" name="address_dtl" placeholder="상세주소"
                                                value="${deliveryDto.address_dtl}"  />
                                            <input type="hidden" id="roadAddr" name="roadAddr" />

                                            <span id="guide" style="color:#999; display:none"></span>

                                            <label for="addr2"></label>
                                            <input type="text" id="addr2" name="address" value="${deliveryDto.address}">
                                            <input type="hidden" id="extraAddress" name="extraAddress"  />
                                            <div class="postcode">
                                                <input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" />
                                            </div>
                                        </div>
                                    </td>
                                    
                                </tr>

                                <tr>
                                    <th scope="row"><span class="important">휴대폰번호</span></th>
                                    <td>
                                        <input type="text" id="shippingMobile" name="phone_nm"
                                            value="${deliveryDto.phone_nm}">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="form_element">
                    </div>
                    <input id="dev_state_checkbox" type="checkbox" name="dev_state" style="width:15px; visibility: visible; position: relative; float:left; "
                        onclick="toggleCheckbox2(this);"<c:if test="${deliveryDto.dev_state == 'Y'}">checked</c:if> value="Y" />기본 배송지로 설정합니다.
                        <input type="hidden" id="test" name="test">
                </div>
                <div class="btn_center_box">
                    <input type="hidden" name="seq_dev" value="${deliveryDto.seq_dev}">
                    <input type="hidden" name="redirectUrl" value="/front/delivery/deliveryForm">
                    <button type="submit" class="modifyBtn" style="width:40%;"><strong>수정</strong></button>
                    <script>
                    document.getElementById('modifyForm').addEventListener('submit', function(event) {
                        event.preventDefault(); // 폼 제출 기본 동작 방지

                        var formData = new FormData(this); // 폼 데이터 가져오기

                        // 폼 데이터를 서버로 전송하는 XMLHttpRequest 생성
                        var xhr = new XMLHttpRequest();
                        xhr.open(this.method, this.action, true);
                        xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest'); // AJAX 요청임을 설정
                        xhr.onreadystatechange = function() {
                            if (xhr.readyState === XMLHttpRequest.DONE) {
                                if (xhr.status === 200) {
                                    // 부모 창으로 리다이렉트할 URL 가져오기
                                    var redirectUrl = formData.get('redirectUrl');
                                    if (redirectUrl) {
                                        // 부모 창으로 리다이렉트 요청 전달
                                        window.opener.location.href = redirectUrl;
                                    } else {
                                        alert("수정 프로세스 실행에 실패했습니다.");
                                    }
                                } else {
                                    alert("수정 프로세스 실행 중 오류가 발생했습니다.");
                                }
                                window.close(); // 팝업 창 닫기
                            }
                        };
                        xhr.send(formData); // 폼 데이터 전송
                    });
</script>
                </div>
            </div>
        </div>
    </form>
</body>
</html>