package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.HttpServletRequest;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.dto.CartDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.service.CartService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;

@RestController
public class CartRestController extends Common {

	@Autowired
	CartService service;
	
	
	
	@PostMapping("/front/cart/insert")
    public Map<String, Object> insertCart(@RequestBody Map<String, String> param, CartDto cartDto, HttpServletRequest request) throws NumberFormatException, Exception {
        Map<String, Object> response = new HashMap<>();

        // 요청에서 받은 데이터를 사용하여 작업 수행
        cartDto.setSeq_crt(Integer.parseInt(getSession(request, "SEQ_CRT")));
        cartDto.setCrt_count(Integer.parseInt(param.get("crt_count")));
        cartDto.setSeq_sel(Integer.parseInt(param.get("seq_sel")));
        cartDto.setSeq_prd(Integer.parseInt(param.get("seq_prd")));
        cartDto.setCrt_sel_nm(param.get("crt_sel_nm"));
        cartDto.setCrt_price(Integer.parseInt(param.get("crt_price")));
        cartDto.setCrt_corp_nm(param.get("crt_corp_nm"));
        cartDto.setCrt_img(param.get("crt_img"));
        cartDto.setCrt_path(param.get("crt_path"));
        
        // 작업 수행 후 결과에 따라 응답 생성
        CartDto existingCartItem = service.findCartItem(cartDto.getSeq_sel(), cartDto.getSeq_crt());
        if (existingCartItem != null) { // 이미 상품이 존재하는 경우
            // 기존 상품의 수량을 증가시킴
            existingCartItem.setCrt_count(existingCartItem.getCrt_count() + cartDto.getCrt_count());
            if (service.updateCartPrd(existingCartItem)) { // 업데이트 성공한 경우
                response.put("success", true);
                // response.put("message", "장바구니에 상품을 추가했습니다.");
            } else { // 업데이트 실패한 경우
                response.put("success", false);
                response.put("error", "장바구니에 상품을 추가하는데 실패했습니다.");
            }
        } else { // 새로운 상품으로 추가하는 경우
            if (service.insertCartPrd(cartDto)) { // 작업이 성공한 경우
                response.put("success", true);
                // response.put("message", "장바구니에 상품을 추가했습니다.");
            } else { // 작업이 실패한 경우
                response.put("success", false);
                response.put("error", "장바구니에 상품을 추가하는데 실패했습니다.");
            }
        }

        return response;
    }
	
	@PostMapping("/front/cart/update")
    public Map<String, Object> updateCart(@RequestBody Map<String, String> param, CartDto cartDto) {
        Map<String, Object> response = new HashMap<>();

        
        cartDto.setSeq_crt_dtl(Integer.parseInt(param.get("seq_crt_dtl")));
        cartDto.setCrt_count(Integer.parseInt(param.get("crt_count")));

        
        // 요청에서 받은 데이터를 사용하여 작업 수행
        // 작업 수행 후 결과에 따라 응답 생성
        if (service.update(cartDto)) { // 작업이 성공한 경우
        	CartDto newSelect = service.newSelect(Integer.parseInt(param.get("seq_crt_dtl")));
        	System.out.println(cartDto.getCrt_count());
        	System.out.println(cartDto.getCrt_price());
        	
            response.put("success", true);
            response.put("total_price", newSelect.getCrt_count() * newSelect.getCrt_price());
            // response.put("message", "장바구니에 상품을 추가했습니다.");
        } else { // 작업이 실패한 경우
            response.put("success", false);
        }

        return response;
    }
	
	
	
	
}
