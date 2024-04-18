package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.main;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.service.BuyService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.dto.CartDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.service.CartService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;

@Controller
public class MainWeb extends Common {

	@Autowired
	CartService service;
	
	@Autowired
	BuyService buyService;

	@RequestMapping("/front/main/main")
	public ModelAndView main(@RequestParam Map<String, String> param, SaleDto saleDto) {
		ModelAndView mav = new ModelAndView();
		
		saleDto.setMain("popular");
		mav.addObject("list1", buyService.mainList(saleDto));
		saleDto.setMain("random");
		mav.addObject("list2", buyService.mainList(saleDto));
		saleDto.setMain("new");
		mav.addObject("list3", buyService.mainList(saleDto));
		
		
		mav.setViewName("/front/main/main");
		return mav;
	}

	// 이벤트
	@RequestMapping("/front/main/blog")
	public ModelAndView blog(@RequestParam Map<String, String> param) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/front/main/blog");
		return mav;
	}

	// 이벤트디테일
	@RequestMapping("/front/main/blogdetail")
	public ModelAndView blogdetail(@RequestParam Map<String, String> param) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/front/main/blogdetail");
		return mav;
	}

	// 회사소개
	@RequestMapping("/front/main/about")
	public ModelAndView about(@RequestParam Map<String, String> param) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/front/main/about");
		return mav;
	}

	@RequestMapping(value = "/headerData", method = RequestMethod.GET)
	public ResponseEntity<List<CartDto>> getHeaderData(CartDto cartDto, HttpServletRequest request)
			throws NumberFormatException, Exception {
		// DB에서 데이터 가져오기
		String seqCstStr = getSession(request, "SEQ_CST");
		if (seqCstStr == null || seqCstStr.trim().isEmpty()) {
		    cartDto.setSeq_cst(-1);
		} else {
			cartDto.setSeq_cst(Integer.parseInt(seqCstStr));
		}
		
		
		List<CartDto> headerDataList = service.select(cartDto);
		return ResponseEntity.ok(headerDataList);
	}

	// 고객센터
	@RequestMapping("/front/main/list")
	public ModelAndView notice(@RequestParam Map<String, String> param) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/front/main/list");
		return mav;
	}

}
