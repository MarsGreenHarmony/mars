<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
	<footer class="bg3 p-t-75 p-b-32">




		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">회사소개</h4>

					<pre class="stext-107 cl7 size-201">대표이사 : 이건호<br>사업자등록번호 : 123-45-67890<br>주소 : (13376) 경기 성남시 중원구 성남대로 <br> 1133 메트로칸 5층<br>호스팅사업자 : 하이미디어(성남)<br>통신판매업신고번호 : 2019-서울용산-1428<br>이메일 : dlapdlf@gmail.com</pre>

					<div class="p-t-27">
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
							class="fa fa-facebook"></i>
						</a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
							class="fa fa-instagram"></i>
						</a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
							class="fa fa-pinterest-p"></i>
						</a>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3 p-b-50">
					<a href="/seller/main/main">
						<h4 class="stext-301 cl0 p-b-30">상품입점 및 제휴문의</h4>
					</a>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<a href="/common/board/list">
						<h4 class="stext-301 cl0 p-b-30">고객센터</h4>
					</a>
				</div>


			</div>
			<p class="stext-107 cl6 txt-center">
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				Copyright &copy;
				<script>
					document.write(new Date().getFullYear());
				</script>
				All rights reserved | Made with <i class="fa fa-heart-o"
					aria-hidden="true"></i> by <a href="https://colorlib.com"
					target="_blank">Colorlib</a> &amp; distributed by <a
					href="https://themewagon.com" target="_blank">ThemeWagon</a>
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

			</p>
		</div>
	</footer>
	
		<!-- Back to top -->
		<!-- 위로가기 버튼 -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>
	
	
	<script type="text/javascript">
							function addCommasToCostElements() {
							    // 모든 costElement 클래스 요소 가져오기
							    let costElements = document.getElementsByClassName("comma");

							    // 모든 요소에 대해 반복
							    for (let i = 0; i < costElements.length; i++) {
							        let costElement = costElements[i];
							        
							        // 요소의 내용 가져오기
							        let costString = costElement.innerText;
							        
							        // 표시된 숫자 가져오기
							        let cost = parseFloat(costString.replace(/,/g, '').replace('원', ''));
							        
							        // 쉼표 추가된 숫자로 변환하여 다시 요소에 설정
							        costElement.innerText = numberWithCommas(cost) + "원";
							    }
							}

							// 숫자를 3글자마다 쉼표로 변환하는 함수
							function numberWithCommas(number) {
							    let strNumber = number.toString();
							    return strNumber.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
							}

							// 화면에 표시된 모든 숫자에 쉼표 추가하기
							addCommasToCostElements();
							</script>
		<!--===============================================================================================-->
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

	$('.js-addwish-b2').each(function() {
	    var nameProduct = $(this).parent().parent().find('.js-name-b2').html();

	    $(this).on('click', function() {
	        var $button = $(this);

	        var likeData = {
	            seq_sel: $button.data('seq_sel'),   // 판매자의 SEQ_SEL
	            seq_prd: $button.data('seq_prd'),   // 상품의 SEQ_PRD
	            lky_price: $button.data('lky_price'),  // 좋아요의 LKY_PRICE
	            lky_sel_nm: $button.data('lky_sel_nm'),  // 좋아요의 LKY_SEL_NM
	            lky_corp_nm: $button.data('lky_corp_nm'),  // 좋아요의 LKY_CORP_NM
	            lky_img: $button.data('lky_img'),   // 좋아요의 LKY_IMG
	            lky_path: $button.data('lky_path'),   // 좋아요의 LKY_PATH
	        };

	        // Ajax 요청 보내기
	        $.ajax({
	            url: '/likes/add',
	            type: 'POST',
	            contentType: 'application/json',
	            data: JSON.stringify(likeData),
	            success: function(response) {
	                if ($button.hasClass('js-addedwish-b2')) {
	                    // 이미 좋아요가 등록되어 있을 때
	                    // 좋아요 삭제를 위한 AJAX 요청 보내기
	                    var deleteData = {
	                        seq_sel: $button.data('seq_sel'),   // 판매자의 SEQ_SEL
	                        seq_prd: $button.data('seq_prd')   // 상품의 SEQ_PRD
	                    };

	                    $.ajax({
	                        url: '/likes/delete',
	                        type: 'POST',
	                        contentType: 'application/json',
	                        data: JSON.stringify(deleteData),
	                        success: function(response) {
	                            $button.removeClass('js-addedwish-b2');
	                            swal(nameProduct, "좋아요가 취소되었습니다!", "info");
	                        },
	                        error: function(xhr, status, error) {
	                            alert('좋아요 취소 중 오류가 발생했습니다.');
	                        }
	                    });
	                } else {
	                    // 좋아요 등록
	                    $button.addClass('js-addedwish-b2');
	                    swal(nameProduct, "좋아요가 등록되었습니다!", "success");
	                }
	            },
	            error: function(xhr, status, error) {
	                alert('로그인 후 이용하시기 바랍니다');
	            }
	        });
	    });
	});
	
	$(document).ready(function() {
	    // 페이지 로드 시 좋아요 상태를 가져와서 버튼에 클래스 추가
	    $.ajax({
	        url: '/likes/status',
	        type: 'GET',
	        success: function(response) {
	            // 서버로부터 받은 데이터를 기준으로 좋아요가 눌러져 있는 상품의 버튼에 클래스 추가
	            response.forEach(function(item) {
	                var selector = '[data-seq_sel="' + item.seq_sel + '"][data-seq_prd="' + item.seq_prd + '"]';
	                $(selector).addClass('js-addedwish-b2');
	            });
	        },
	        error: function(xhr, status, error) {
	            console.error('좋아요 상태를 가져오는 중 오류가 발생했습니다.');
	        }
	    });
	});

		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail').html();

					$(this).on('click', function() {
						swal(nameProduct, "좋아요 등록 완료 !", "success");

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