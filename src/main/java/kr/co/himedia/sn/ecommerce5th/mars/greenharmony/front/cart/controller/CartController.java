package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.dto.CartDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.service.CartService;
//import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.service.CartServiceImpl;
//import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.dto.DeliveryDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;

@Controller
public class CartController extends Common{
	
	@Autowired
	CartService service;
	
	
	
	@RequestMapping("/front/buy/cart")
	public ModelAndView cart(@RequestParam Map<String,String> param, CartDto cartDto, HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView(); 
		
		cartDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
		
		
		mav.addObject("list",service.select(cartDto));
		
		mav.setViewName("/front/cart/cart");
		return mav;
	}
	
	@RequestMapping(value = "/front/cart/deleteProc")
	public ModelAndView deleteProc(HttpServletRequest request, HttpServletResponse response, CartDto cartDto) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

		try {
			// 배송 정보 삭제 수행
			boolean isSuccess = service.delete(cartDto);

			if (isSuccess) {
				// 삭제 성공 시 리다이렉트할 경로 설정
				request.setAttribute("redirect", "/front/buy/cart");

			} else {
				// 삭제 실패 시 에러 메시지 출력
				request.setAttribute("redirect", "/front/main/main");
			}
			mav.setViewName("forward:/servlet/result");

		} catch (Exception e) {
			e.printStackTrace();
			// 삭제 과정에서 예외 발생 시 에러 메시지 출력

		}

		return mav;
	}
	

	 @PostMapping("/front/cart/deleteSelectedItems")
	    public ResponseEntity<Map<String, Object>> deleteSelectedItems(@RequestBody List<Integer> selectedItems, CartDto cartDto) {
	        Map<String, Object> response = new HashMap<>();
	        HttpStatus status;

	        try {
	            // 선택된 각 상품을 반복하여 삭제합니다.
	            for (Integer itemId : selectedItems) {
	            	cartDto.setSeq_crt_dtl(itemId);
	            	
	                boolean isSuccess = service.delete(cartDto);
	                if (!isSuccess) {
	                    // 하나라도 삭제에 실패하면 전체 실패로 처리합니다.
	                    response.put("success", false);
	                    response.put("message", "Failed to delete selected items.");
	                    status = HttpStatus.INTERNAL_SERVER_ERROR;
	                    return new ResponseEntity<>(response, status);
	                }
	            }

	            // 모든 상품이 성공적으로 삭제되면 성공 응답을 반환합니다.
	            response.put("success", true);
	            response.put("message", "Selected items deleted successfully.");
	            status = HttpStatus.OK;
	        } catch (Exception e) {
	            // 예외 발생 시 실패 응답을 반환합니다.
	            response.put("success", false);
	            response.put("message", "An error occurred while deleting selected items.");
	            status = HttpStatus.INTERNAL_SERVER_ERROR;
	        }

	        return new ResponseEntity<>(response, status);
	    }
	
	
	
}
