package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.PageMaker;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.service.BuyService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.dto.ReviewDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.service.ReviewService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;

@Controller
public class ReviewController extends Common {
	
	@Autowired
	ReviewService service;
	
	@Autowired
	BuyService buyService;
	
	@RequestMapping("/front/customer/review")
	public ModelAndView list(SearchCriteria cri, PageMaker pageMaker, HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, Exception {
		ModelAndView mav = new ModelAndView();
		
		cri.setSnoEno();
		cri.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));		

		mav.addObject("list", service.list(cri));
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(service.count(cri));     // ver02: 조건과 일치하는 Rows 갯수 
		mav.addObject("pageMaker", pageMaker);
		
		return mav;
	}
	
	@RequestMapping("/front/review/complete")
	public ModelAndView complete(@RequestParam Map<String, String> param, SaleDto saleDto) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/front/review/complete");
		return mav;
	}
	
	@RequestMapping("/front/review/writeForm")
	public ModelAndView writeForm(@RequestParam Map<String, String> param, SaleDto saleDto) {
		ModelAndView mav = new ModelAndView();
		
		saleDto.setSeq_sel(Integer.parseInt(param.get("seq_sel")));
		saleDto.setSeq_prd(Integer.parseInt(param.get("seq_prd")));
		
		mav.addObject("img", buyService.prdImgSelect(saleDto));
		mav.addObject("list", buyService.productSelect(saleDto));
		mav.setViewName("/front/review/writeForm");
		return mav;
	}
	
	@RequestMapping("/front/review/writeProc")
	public ModelAndView writeProc(@RequestParam Map<String, String> param, ReviewDto reviewDto,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();

		reviewDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
		reviewDto.setName(getSession(request, "CST_NM"));
		reviewDto.setSeq_dtl(Integer.parseInt(param.get("seq_dtl")));

		if (service.insertReview(reviewDto)) {
			
			request.setAttribute("redirect", "/front/review/complete");
			mav.setViewName("forward:/servlet/result");
		} else {
			request.setAttribute("redirect", "/seller/main/main");
			mav.setViewName("forward:/servlet/result");
		}

		return mav;

	}
	
	


}
