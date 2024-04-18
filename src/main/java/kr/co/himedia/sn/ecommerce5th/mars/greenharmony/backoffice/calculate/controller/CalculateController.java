package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.calculate.controller;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.calculate.service.CalculateService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.SKwithAES;

@Controller
public class CalculateController {
	
	@Autowired
	CalculateService service; 
	
	private static Logger logger = LoggerFactory.getLogger(CalculateController.class);
	
	@RequestMapping(value = "/backoffice/calculate/list")
	public ModelAndView list(HttpServletRequest request, HttpServletResponse response) throws InvalidKeyException, UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {

		ModelAndView mav = new ModelAndView("redirect:/error");
		List<BuyDtlDto> list = service.list(); 
		
		String staticKey ="I.am.the.Plutozone!.Thank.you@@@";
	    SKwithAES aes = new SKwithAES(staticKey);
	    
	    for (BuyDtlDto dto : list) {
	        String encodedCstNm = dto.getCst_nm(); // 암호화된 cst_nm 값 가져오기
	        String decodedCstNm = aes.decode(encodedCstNm); // 디코딩된 cst_nm 값 얻기
	        dto.setCst_nm(decodedCstNm); // 디코딩된 cst_nm 값 설정하기
	    }
		
		mav.addObject("list", list);
		mav.setViewName("/backoffice/calculate/list");
		
		return mav;
	}
	
	@RequestMapping(value = "/backoffice/calculate/view")
	public ModelAndView view(HttpServletRequest request, HttpServletResponse response, BuyDtlDto buyDtlDto) {

		ModelAndView mav = new ModelAndView("redirect:/error");
		
		BuyDtlDto listing = service.listing(buyDtlDto);
		
		mav.addObject("listing", listing);
		mav.setViewName("/backoffice/calculate/view");

		return mav;
	}
	
	@RequestMapping(value = "/backoffice/calculate/modifyProc")
	public ModelAndView modifyProc(@RequestParam Map<String, String> param, HttpServletRequest request, HttpServletResponse response, BuyDtlDto buyDtlDto) {
		
		ModelAndView mav = new ModelAndView();
		// @RequestParam Map<String, String> param,
		buyDtlDto.setSeq_dtl(Integer.parseInt(param.get("seq_dtl")));
		
		try {
			if  (service.update(buyDtlDto)) {
				request.setAttribute("redirect"	, "/backoffice/calculate/list");
				mav.setViewName("forward:/servlet/result");
			}
			else {
				mav.setViewName("forward:/servlet/result");
			}
			
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".modifyProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	

	@RequestMapping("/backoffice/calculate/cclProc")
	public ModelAndView deliveryProc(HttpServletRequest request, HttpServletResponse response, BuyDtlDto buyDtlDto) {
	    ModelAndView mav = new ModelAndView();

	    try {
	        int seqDtl = Integer.parseInt(request.getParameter("seq_dtl"));
	        String cdStateCcl = request.getParameter("cd_state_ccl"); // deliveryStatus -> cd_state_ccl 수정

	        // 배송 상태 업데이트를 위한 DTO 생성
	        BuyDtlDto updateBuyDtlDto = new BuyDtlDto();
	        updateBuyDtlDto.setSeq_dtl(seqDtl);
	        updateBuyDtlDto.setCd_state_ccl(cdStateCcl); // cdStateDelivery -> cd_state_ccl 수정

	        // 배송 상태 업데이트 서비스 호출
	        boolean success = service.update(updateBuyDtlDto); // updatedOrderDto -> updateBuyDtlDto 수정

	        // 업데이트 결과에 따라 메시지 설정
	        if (success) {
	            mav.addObject("message", "정산 상태가 성공적으로 업데이트되었습니다.");
	        } else {
	            mav.addObject("message", "정산 상태 업데이트에 실패하였습니다.");
	        }

	    } catch (Exception e) {
	        // 예외 발생 시 에러 메시지 설정
	        mav.addObject("error", "정산 상태 업데이트 중 오류가 발생하였습니다: " + e.getMessage());
	        logger.error("[" + this.getClass().getName() + ".deliveryProc()] " + e.getMessage(), e);
	    }

	    // 배송 상태 업데이트 후 배송 목록 페이지로 이동
	    mav.setViewName("redirect:/seller/order/orderlist");
	    return mav;
	}
}