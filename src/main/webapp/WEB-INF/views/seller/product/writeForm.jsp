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

::placeholder {
        font-style: italic; /* placeholder 텍스트의 이탤릭체 스타일 */
    }

</style>

<script type="text/javascript">

function writeProc() {
	var fileInput1 = document.getElementById('fileInput1');
	
		 var productName = document.getElementById('prd_nm').value.trim();
	    // 원가 입력란의 값 가져오기
	    var cost = document.getElementById('cost').value.trim();
	    // 재고수량 입력란의 값 가져오기
	    var count = document.getElementById('count').value.trim();

	    // 필드값이 비어 있는지 확인
	    if (productName === '') {
	        alert('상품명을 입력하세요.');
	        document.getElementById('prd_nm').focus(); // 빈 상품명 입력란으로 포커스 이동
	        return; // 함수 종료
	    }
	    if (cost === '') {
	        alert('원가를 입력하세요.');
	        document.getElementById('cost').focus(); // 빈 원가 입력란으로 포커스 이동
	        return; // 함수 종료
	    }
	    if (count === '') {
	        alert('재고수량을 입력하세요.');
	        document.getElementById('count').focus(); // 빈 재고수량 입력란으로 포커스 이동
	        return; // 함수 종료
	    }
	    
	    if (!fileInput1.files[0]) {
	        alert('상품 썸네일 이미지를 선택하세요.');
	        fileInput1.focus(); // 파일이 선택되지 않은 상품 썸네일 이미지 입력란으로 포커스 이동
	        return; // 함수 종료
	    }
	
	
	var frmMain = document.getElementById("frmMain");
	frmMain.action = "/seller/product/writeProc";
	frmMain.submit();
}


var replaceNotInt = /[^0-9]/gi;

$(document).ready(function(){
    
    $("#cost").on("focusout", function() {
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
    
    $("#count").on("focusout", function() {
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
					<h3 class="page-title">상품등록</h3>
				</div>
				<div class="row">
					<div class="col-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">상품 등록하기</h4>

								<!-- form 태그 시작 -->
								<form id="frmMain" class="forms-sample">
									<div class="form-group">
										<label for="prd_nm">상품명</label> <input type="text"
											class="form-control" id="prd_nm" placeholder="상품명"
											name="prd_nm">
									</div>
									<div class="form-group">
										<label for="cost">원가</label> <input
											type="text" class="form-control" id="cost"
											placeholder="ex) 10000원이라면 10000 숫자만 입력" name="cost">
									</div>
						
									<div class="form-group">
										<label for="count">재고수량</label> <input
											type="text" class="form-control" id="count"
											placeholder="ex) 100개라면 100" name="count">
									</div>

									<div class="form-group">
										<label>상품 썸네일 이미지 등록</label>
										<div class="filebox">
											<div id="imageContainer1"></div>
											<input type="hidden" value="S" name="tn_state" >
											<input class="upload-name" placeholder="첨부파일"
												name="prd_img"> <label for="fileInput1">파일찾기</label>
											<input type="file" id="fileInput1" accept="image/*"
												name="file1" onchange="uploadImage(1);">
										</div>
									</div>

									<div class="form-group">
										<label>상품 추가 이미지 등록 (최대 2개)</label>
										<div class="filebox">
											<div id="imageContainer2"></div>
											<input class="upload-name" placeholder="첨부파일"
												name="prd_img"> <label for="fileInput2">파일찾기</label>
											<input type="file" id="fileInput2" accept="image/*"
												name="file2" onchange="uploadImage(2);">
										</div>
										<div class="filebox">
											<div id="imageContainer3"></div>
											<input class="upload-name" placeholder="첨부파일"
												name="prd_img"> <label for="fileInput3">파일찾기</label>
											<input type="file" id="fileInput3" accept="image/*"
												name="file3" onchange="uploadImage(3);">
										</div>
									</div>

									<script>
										 function fileView(fileInputId,
												imageContainerId) {
											var file = document
													.getElementById(fileInputId).files[0];

											if (file) {
												var reader = new FileReader();
												reader.onload = function(e) {
													// 선택된 이미지를 표시
													$("#" + imageContainerId)
															.html(
																	'<img src="'
																			+ e.target.result
																			+ '" alt="Selected Image" width="20%" height="20%"/>');
												};
												reader.readAsDataURL(file);
											}
										};

										function fileSave(formData) {
											$
													.ajax({
														url : "/upload",
														type : "POST",
														data : formData,
														processData : false,
														contentType : false,
														success : function(data) {
															console
																	.log("success");
														},
														error : function(error) {
															console
																	.log(
																			"Error uploading file: ",
																			error);
														}
													});
										};

										function uploadImage(imageNumber) {
										    var fileInputId = "fileInput" + imageNumber;
										    var imageContainerId = "imageContainer" + imageNumber;
										    var formData = new FormData();
										    formData.append("file", document.getElementById(fileInputId).files[0]);

										    // 파일 이름 설정
										    var fileName = $("#" + fileInputId).val().split('/').pop().split('\\').pop();
										    $(".upload-name[name='prd_img']").eq(imageNumber - 1).val(fileName); // 각 input 요소에 대해 파일 이름 설정

										    fileSave(formData);
										    fileView(fileInputId, imageContainerId);
										};
									</script>

									<!-- =============================================================================== -->

									<button type="button" class="btn btn-success mr-2" onclick="javascript:writeProc();">상품등록</button>
									<button type="button" class="btn btn-light" onclick="location.href = '/seller/product/list'">취소</button>
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
