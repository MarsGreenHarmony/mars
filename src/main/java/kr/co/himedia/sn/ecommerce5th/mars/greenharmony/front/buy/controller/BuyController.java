package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.PageMaker;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyMstDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.service.BuyService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.review.service.ReviewService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.DescDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;


@Controller
public class BuyController extends Common {
	
	@Autowired
	BuyService service;
	
	@Autowired
	ReviewService reviewService;
	

	@RequestMapping(value = "/front/buy/orderList")
	public ModelAndView orderList(@RequestParam Map<String,String> param , HttpServletRequest request, BuyMstDto buyMstDto, BuyDtlDto buyDtlDto) throws NumberFormatException, Exception {
		
		ModelAndView mav = new ModelAndView();
		buyMstDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
	    
	    // 구매 마스터 및 디테일 목록 조회
	    List<BuyMstDto> listMst = service.selectMstWithDetails(buyMstDto);
	    
	    mav.addObject("mstList", listMst);
	    mav.setViewName("/front/buy/orderList");
	    return mav;
	}
	
	
	@RequestMapping("/front/buy/list")
	public ModelAndView buyList(@RequestParam Map<String,String> param, SaleDto saleDto, SearchCriteria cri, PageMaker pageMaker) {
		ModelAndView mav = new ModelAndView();
		
		cri.setSnoEno();
		cri.setCategory1(Integer.parseInt(param.get("category1")));		

		mav.addObject("list", service.productList(cri));
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(service.searchCount(cri));     // ver02: 조건과 일치하는 Rows 갯수 
		mav.addObject("pageMaker", pageMaker);
		
		mav.setViewName("/front/buy/list");
		return mav;
	}
	
	
	
	@RequestMapping("/front/buy/detail")
	public ModelAndView detail(@RequestParam Map<String,String> param, SaleDto saleDto, SearchCriteria cri, PageMaker pageMaker) {
		ModelAndView mav = new ModelAndView();
		
		saleDto.setSeq_sel(Integer.parseInt(param.get("seq_sel")));
		saleDto.setSeq_prd(Integer.parseInt(param.get("seq_prd")));
		
		SaleDto list = service.productSelect(saleDto);
		DescDto desc = service.descSelect(Integer.parseInt(param.get("seq_sel")));
		List<SaleDto> prd_img_list = service.prdImgSelect(saleDto);
		List<SaleDto> sel_img_list = service.selImgSelect(saleDto);
		
		////////////////////////////////////////////////////////////////////
		// 리뷰 부분
		cri.setSnoEno();
		cri.setSeq_sel(Integer.parseInt(param.get("seq_sel")));
		
		
		mav.addObject("review", reviewService.searchList(cri));
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(reviewService.searchCount(cri));     // ver02: 조건과 일치하는 Rows 갯수 
		mav.addObject("pageMaker", pageMaker);
		
		
		
		
		///////////////////////////////////////////////////////////////////
		
		
		mav.addObject("list",list);
		mav.addObject("desc",desc);
		mav.addObject("prd",prd_img_list);
		mav.addObject("sel",sel_img_list);
		
		
		saleDto.setMain("random");
		saleDto.setDetail("yes");
		
		saleDto.setCategory1(list.getCategory1());
		saleDto.setCategory2(list.getCategory2());
		mav.addObject("list2",service.mainList(saleDto));
		mav.setViewName("/front/buy/detail");
		return mav;
	}
	
}

