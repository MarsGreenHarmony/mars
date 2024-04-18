<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<!-- <link rel="icon" type="image/png" href="/bootstrap/images/icons/favicon.png" /> -->
<!--===============================================================================================-->

<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/bootstrap/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/bootstrap/css/util.css">
<link rel="stylesheet" type="text/css" href="/bootstrap/css/main.css">
<!--===============================================================================================-->

<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
	
	<style type="text/css">
	
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

body{
	text-align: center;
}

button {
	display: inline-block;
}

	</style>

</head>
<body>
<c:set var="img" value="${img[0]}" />

<form class="w-full" id="writeForm" action="/front/review/writeProc" method="post">
	<h5 class="mtext-108 cl2 p-b-7">리뷰 작성</h5>
	<div class="col-12 p-b-5">
	<img src="${img.prd_path}/${img.prd_img}" alt="" style="width: 100px; height: 100px">
	<p>${list.corp_nm}</p>
	<p>${list.sel_nm}</p>
	</div>
	<br>
	
	<div class="col-12 p-b-5">
		<span class="stext-102 cl3 m-r-16"> 별점 </span> 
		
		<span class="wrap-rating fs-18 cl11 pointer"> <i
			class="item-rating pointer zmdi zmdi-star"></i> <i
			class="item-rating pointer zmdi zmdi-star-outline"></i> <i
			class="item-rating pointer zmdi zmdi-star-outline"></i> <i
			class="item-rating pointer zmdi zmdi-star-outline"></i> <i
			class="item-rating pointer zmdi zmdi-star-outline"></i> 
			<input class="dis-none" type="number" name="rating" value="1">
		</span>
	</div>
	<br>
	<div class="row p-b-25">
		<div class="col-12 p-b-5">
			<label class="stext-102 cl3" for="review">리뷰 내용</label>
			<textarea
				class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10"
				id="review" name="desces"></textarea>
		</div>
		
		<br>
		<input type="hidden" value="${list.sel_nm}" name="prd_nm">
		<input type="hidden" value="${list.seq_sel}" name="seq_sel">
		<input type="hidden" value="${list.seq_prd}" name="seq_prd">
		<input type="hidden" value="" name="seq_dtl" id="seq_dtl">
		
		<script type="text/javascript">
window.addEventListener("message", receiveMessage, false);

function receiveMessage(event) {
    // event.data를 통해 부모 창에서 전달된 데이터에 접근할 수 있습니다.
    var seq_sel = event.data.seq_sel;
    var seq_prd = event.data.seq_prd;
    var dtl = event.data.dtl;
    
    console.log(dtl);
    
    // 받은 값으로 작업을 수행할 수 있습니다.
    document.getElementById("seq_dtl").value = dtl; // seq_dtl input 태그에 dtl 값을 넣어줍니다.
}
</script>

	
	<div class="col-12 p-b-5">
										<label>리뷰 이미지 등록(최대 2개)</label>
										<div class="filebox">
											<div id="imageContainer1"></div>
											<input type="hidden" value="S" name="tn_state"> <input
												class="upload-name" placeholder="첨부파일" name="rev_img1">
											<label for="fileInput1">파일찾기</label> <input type="file"
												id="fileInput1" accept="image/*" name="file1"
												onchange="uploadImage(1);">
										</div>
										<div class="filebox">
											<div id="imageContainer2"></div>
											<input class="upload-name" placeholder="첨부파일" name="rev_img2">
											<label for="fileInput2">파일찾기</label> <input type="file"
												id="fileInput2" accept="image/*" name="file2"
												onchange="uploadImage(2);">
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
														url : "/uploadRev",
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
											var fileInputId = "fileInput"
													+ imageNumber;
											var imageContainerId = "imageContainer"
													+ imageNumber;
											var formData = new FormData();
											formData
													.append(
															"file",
															document
																	.getElementById(fileInputId).files[0]);

											// 파일 이름 설정
											var fileName = $("#" + fileInputId)
													.val().split('/').pop()
													.split('\\').pop();
											$(".upload-name[name='rev_img"+imageNumber+"']").val(fileName)// 각 input 요소에 대해 파일 이름 설정

											fileSave(formData);
											fileView(fileInputId,
													imageContainerId);
										};
									</script>
	
	
	



</div>

<button  type="submit" class="stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">리뷰 등록</button>


                <!--  <script>
                    document.getElementById('writeForm').addEventListener('submit', function(event) {
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
</script> -->


</form>

<script src="/bootstrap/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/bootstrap/js/popper.js"></script>
	<script src="/bootstrap/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/daterangepicker/moment.min.js"></script>
	<script src="/bootstrap/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/slick/slick.min.js"></script>
	<script src="/bootstrap/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script
		src="/bootstrap/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="/bootstrap/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(
				function() {
					var nameProduct = $(this).parent().parent().find(
							'.js-name-b2').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});

		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail').html();

					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});

		/*---------------------------------------------*/

		
	 
	</script>
	<!--===============================================================================================-->
	<script
		src="/bootstrap/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="/bootstrap/js/main.js"></script>
	</body>
</html>