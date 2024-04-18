<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Connect Plus</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/css/vendor.bundle.base.css" />
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="/seller/sellers/main/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css" />
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="/seller/sellers/main/assets/css/style.css" />
<!-- End layout styles -->
<link rel="shortcut icon"
	href="/seller/sellers/main/assets/images/favicon.png" />

<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>

<style>
label {
	color: black;
}

.filebox .upload-name {
	display: inline-block;
	height: 40px;
	padding: 0 10px;
	vertical-align: middle;
	border: 1px solid #dddddd;
	width: 30%;
	color: #999999;
}

.filebox label {
	display: inline-block;
	padding: 10px 20px;
	color: #fff;
	vertical-align: middle;
	background-color: #999999;
	cursor: pointer;
	height: 40px;
	margin-left: 10px;
}

.filebox input[type="file"] {
	position: absolute;
	width: 0;
	height: 0;
	padding: 0;
	overflow: hidden;
	border: 0;
}

#imageContainer {
	display: inline-block;
	width: 30%;
}

input {
	width: 50%;
}

.pl{
    width: 200px;
    border: 1px solid #C4C4C4;
    box-sizing: border-box;
    border-radius: 10px;
    padding: 12px 13px;
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 16px;
}

.pl:focus{
    border: 1px solid #9B51E0;
    box-sizing: border-box;
    border-radius: 10px;
    outline: 3px solid #F8E4FF;
    border-radius: 10px;
}
</style>

<script type="text/javascript">

function writeProc() {

    var productName = document.getElementById('sel_nm').value.trim();
    var cost = document.getElementById('price').value.trim();
    
    var spec = document.getElementById('spec').value.trim();
    var dt_use = document.getElementById('dt_use').value.trim();
    var use = document.getElementById('use').value.trim();
    var company = document.getElementById('company').value.trim();
    var country = document.getElementById('country').value.trim();
    var element = document.getElementById('element').value.trim();
    var safety = document.getElementById('safety').value.trim();
    var caution = document.getElementById('caution').value.trim();
    var dt_qlt = document.getElementById('dt_qlt').value.trim();
    var tel = document.getElementById('tel').value.trim();

    if (productName === '') {
        alert('판매명을 입력하세요.');
        document.getElementById('sel_nm').focus();
        return;
    }
    if (cost === '') {
        alert('판매가격을 입력하세요.');
        document.getElementById('price').focus();
        return;
    }
    
    // 새로운 필드들에 대한 유효성 검사 추가
    if (spec === '') {
        alert('제품 주요 사양을 입력하세요.');
        document.getElementById('spec').focus();
        return;
    }
    if (dt_use === '') {
        alert('사용기한 또는 개봉 후 사용기간을 입력하세요.');
        document.getElementById('dt_use').focus();
        return;
    }
    if (use === '') {
        alert('사용방법을 입력하세요.');
        document.getElementById('use').focus();
        return;
    }
    if (company === '') {
        alert('화장품제조업자를 입력하세요.');
        document.getElementById('company').focus();
        return;
    }
    if (country === '') {
        alert('제조국을 입력하세요.');
        document.getElementById('country').focus();
        return;
    }
    if (element === '') {
        alert('화장품법에 따라 기재 표시하여야 하는 모든 성분을 입력하세요.');
        document.getElementById('element').focus();
        return;
    }
    if (safety === '') {
        alert('기능성 화장품의 경우 화장품 법에 따른 식품의약품안전처 심사 필 유무를 입력하세요.');
        document.getElementById('safety').focus();
        return;
    }
    if (caution === '') {
        alert('사용할 때의 주의사항을 입력하세요.');
        document.getElementById('caution').focus();
        return;
    }
    if (dt_qlt === '') {
        alert('품질보증기준을 입력하세요.');
        document.getElementById('dt_qlt').focus();
        return;
    }
    if (tel === '') {
        alert('소비자 상담 관련 전화 번호를 입력하세요.');
        document.getElementById('tel').focus();
        return;
    }

    var frmMain = document.getElementById("frmMain");
    frmMain.action = "/seller/sale/modifyProc";
    frmMain.submit();
}
</script>


</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<%@ include file="/WEB-INF/views/include/seller/header.jsp"%>
		<!-- 메인화면  -->
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="page-header">
					<h3 class="page-title">판매정보</h3>
				</div>
				<div class="row">
					<div class="col-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">판매정보 수정(이미지 수정 불가)</h4>

								<!-- form 태그 시작 -->
								<form id="frmMain" class="forms-sample" method="POST">
								<input type="hidden" name="seq_sel" value="${list.seq_sel}">
									<div class="form-group">
										<label for="sel_nm">판매명</label> <input type="text"
											class="form-control" id="sel_nm" value="${list.sel_nm}"
											name="sel_nm">
									</div>
									<!-- 임시주석@@@@@@ -->
									<!-- <div class="form-group">
											<label for="exampleInputEmail3">상품설명</label> <input
												type="email" class="form-control" id="exampleInputEmail3"
												placeholder="상품설명" name="desces">
										</div> -->
									<div class="form-group">
										<label for="price">판매가격</label> <input
											type="text" class="form-control" id="price"
											value="${list.price}" name="price">
									</div>

									<!--카테고리 부분 판매쪽에 쓸것  -->
									<div class="form-group">
										<label for="exampleSelectGender">카테고리</label> <br>
										<select
											class="pl" id="exampleSelectGender"
											name="category1">
											<option value="1">헤어케어</option>
											<option value="2">스킨케어</option>
											<option value="3">바디케어</option>
											<option value="4">클렌징</option>
										</select> <select class="pl" id="exampleSelectGender2"
											name="category2">
										</select>
									</div>
									
									<script>
									var replaceNotInt = /[^0-9]/gi;

									$(document).ready(function(){
									    
									    $("#price").on("focusout", function() {
									        var x = $(this).val();
									        if (x.length > 0) {
									            if (x.match(replaceNotInt)) {
									               x = x.replace(replaceNotInt, "");
									            }
									            $(this).val(x);
									        }
									    }).on("keyup", function() {
									        $(this).val($(this).val().replace(replaceNotInt, ""));
									    });

									});
									
									
									    // 페이지가 로드될 때 실행
									    document.addEventListener("DOMContentLoaded", function() {
									        // 첫 번째 카테고리 선택란
									        var category1 = document.getElementById("exampleSelectGender");
									        // 두 번째 카테고리 선택란
									        var category2 = document.getElementById("exampleSelectGender2");
									        
									        // 카테고리 1의 옵션이 변경될 때마다 실행
									        function updateCategory2() {
									            // 선택된 카테고리 1의 값
									            var selectedCategory1 = category1.value;
									            
									            // 카테고리 1에 따라 두 번째 카테고리 선택란의 옵션을 변경
									            switch(selectedCategory1) {
									                case '1': // 헤어케어
									                    category2.innerHTML = `
									                        <option value="1">젤</option>
									                        <option value="2">무스</option>
									                        <option value="3">샴푸</option>
									                        <option value="4">컨디셔너</option>
									                        <option value="5">스프레이</option>
									                        <option value="6">트리트먼트</option>
									                    `;
									                    break;
									                case '2': // 스킨케어
									                    category2.innerHTML = `
									                        <option value="1">스킨/토너</option>
									                        <option value="2">에센스/세럼/앰플</option>
									                        <option value="3">크림</option>
									                        <option value="4">로션</option>
									                        <option value="5">미스트</option>
									                    `;
									                    break;
									                case '3': // 바디케어
									                    category2.innerHTML = `
									                        <option value="1">비누</option>
									                        <option value="2">바디로션</option>
									                        <option value="3">데오드란트</option>
									                        <option value="4">입욕제</option>
									                        <option value="5">바디워시</option>
									                    `;
									                    break;
									                case '4': // 클렌징
									                    category2.innerHTML = `
									                        <option value="1">폼/젤</option>
									                        <option value="2">오일/밤</option>
									                        <option value="3">워터/티슈/밀크</option>
									                        <option value="4">필링/스크럽</option>
									                        <option value="5">립</option>
									                    `;
									                    break;
									                default:
									                    category2.innerHTML = ''; // 선택된 값이 없으면 두 번째 카테고리 선택란을 비움
									                    break;
									            }
									            
									            
									        }
									        
											category1.addEventListener("change", updateCategory2);
									        
									        // 페이지 로드 시 초기화
									        updateCategory2();
									        
									    });
									</script>

									
									<br>
									<label>상품정보제공고시&nbsp;<span style="font-size: 12px;color: grey;">전체 필수기입 및 해당없을시 해당없음 기입</span></label>
									<div class="form-group">
										<label for="name">제품명	</label>
										<input
											type="text" class="form-control" id="name" value="${desc.name}"
											name="name">
											<br>
										<label for="spec">제품 주요 사양	</label> <input
											type="text" class="form-control" id="spec" value="${desc.spec}"
											name="spec">
												<br>
										<label for="dt_use">사용기한 또는 개봉 후 사용기간		</label> <input
											type="text" class="form-control" id="dt_use" value="${desc.dt_use}"
											name="dt_use">
												<br>
										<label for="use">사용방법		</label> <textarea class="form-control" id="use" rows="4"
											name="use">${desc.use}</textarea>
												<br>
										<label for="company">화장품제조업자	</label> <input
											type="text" class="form-control" id="company" value="${desc.company}"
											name="company">
												<br>
										<label for="country">제조국</label> <input
											type="text" class="form-control" id="country" value="${desc.country}"
											 name="country">
												<br>
										<label for="element">화장품법에 따라 기재 표시하여야 하는 모든 성분	</label> <textarea class="form-control" id="element" rows="4" 
											name="element">${desc.element}</textarea>
												<br>
										<label for="safety">기능성 화장품의 경우 화장품 법에 따른 식품의약품안전처 심사 필 유무	</label> <input
											type="text" class="form-control" id="safety" value="${desc.safety}"
											 name="safety">
												<br>
										<label for="caution">사용할 때의 주의사항	</label> <textarea class="form-control" id="caution" rows="4"
											name="caution">${desc.caution}</textarea>
												<br>
										<label for="dt_qlt">품질보증기준</label> <input
											type="text" class="form-control" id="dt_qlt" value="${desc.dt_qlt}"
											name="dt_qlt">
											<br>
										<label for="tel">소비자 상담 관련 전화 번호	</label> <input
											type="text" class="form-control" id="tel" value="${desc.tel}"
											 name="tel">
											
										
									</div>
									<button type="button" class="btn btn-danger mr-2" onclick="javascript:writeProc();">수정하기</button>
									<button type="button" onclick="location='/seller/sale/list'" class="btn btn-light">취소</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->
			<!-- partial:../../partials/_footer.html -->
			<%@ include file="/WEB-INF/views/include/seller/footer.html"%>
			<!-- partial -->
		</div>
		<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	<!-- plugins:js -->
	<script
		src="/seller/sellers/main/assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="/seller/sellers/main/assets/vendors/chart.js/Chart.min.js"></script>
	<script
		src="/seller/sellers/main/assets/vendors/jquery-circle-progress/js/circle-progress.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="/seller/sellers/main/assets/js/off-canvas.js"></script>
	<script src="/seller/sellers/main/assets/js/hoverable-collapse.js"></script>
	<script src="/seller/sellers/main/ssets/js/misc.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="/seller/sellers/main/assets/js/dashboard.js"></script>
	<!-- End custom js for this page -->
</body>
</html>
