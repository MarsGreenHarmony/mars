package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.PageMaker;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.service.BuyService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.dto.ProductDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.service.ProductServiceImpl;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.DescDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.service.SaleService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;

@Controller
public class SaleController extends Common {
	
	@Autowired
	SaleService service;
	
	@Autowired
	BuyService buyService;
	
	@Autowired
	ProductServiceImpl prdService;
	
	@RequestMapping("/seller/sale/list")
	public ModelAndView list(SearchCriteria cri, PageMaker pageMaker, HttpServletRequest request, HttpServletResponse response) throws  Exception {
		ModelAndView mav = new ModelAndView();
		
		
		cri.setSnoEno();
		cri.setRegister(Integer.parseInt(getSession(request, "SEQ_SLL")));		

		mav.addObject("list", service.searchList(cri));
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(service.searchCount(cri));     // ver02: 조건과 일치하는 Rows 갯수 
		mav.addObject("pageMaker", pageMaker);
		
		mav.setViewName("/seller/sale/list");
		return mav;
	}
	
	
	@RequestMapping("/seller/sale/writeProc")
	public ModelAndView writeProc(SaleDto saleDto, DescDto descDto, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();

		String[] images = request.getParameterValues("sel_img");
		
		saleDto.setRegister(Integer.parseInt(getSession(request, "SEQ_SLL")));

		if (service.insertSale(saleDto)) {
			for (int i = 0; i < images.length; i++) {
	            String image = images[i];
	            if (image != null && !image.isEmpty()) {
	            	saleDto.setSel_img(image); // 이미지 설정
	                // 첫 번째 이미지인 경우 tn_state를 'S'로 설정, 그 외에는 'N'으로 설정
	                service.insertImg(saleDto);
	            }
	        }
			descDto.setSeq_sel(saleDto.getSeq_sel());
			service.insertDesc(descDto);
			
			request.setAttribute("redirect", "/seller/sale/list");
			mav.setViewName("forward:/servlet/result");
		} else {
			request.setAttribute("redirect", "/seller/main/main");
			mav.setViewName("forward:/servlet/result");
		}

		return mav;

	}

	
	@RequestMapping("/seller/sale/writeForm")
	public ModelAndView writeForm(HttpServletRequest request, HttpServletResponse response) throws NumberFormatException, Exception {
		ModelAndView mav = new ModelAndView();
		
		ProductDto productDto = new ProductDto();
		productDto.setRegister(Integer.parseInt(getSession(request, "SEQ_SLL")));
		
		
		List<ProductDto> listProduct = prdService.listing(productDto);
		
		mav.addObject("listProduct", listProduct);

		mav.setViewName("/seller/sale/writeForm");
		return mav;
	}
	
	@RequestMapping(value = "/seller/sale/modifyForm")
	public ModelAndView modifyForm(HttpServletRequest request, HttpServletResponse response	,SaleDto saleDto) {
		
		ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			
			SaleDto _saleDto = service.select(saleDto);
			
			
			mav.addObject("list", _saleDto);
			mav.addObject("desc", buyService.descSelect(saleDto.getSeq_sel()));
			mav.setViewName("/seller/sale/modifyForm");
		}
		catch (Exception e) {
			//logger.error("[" + this.getClass().getName() + ".modifyForm()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}

	
	@RequestMapping(value = "/seller/sale/modifyProc")
	public ModelAndView modifyProc(HttpServletRequest request, HttpServletResponse response	, SaleDto saleDto, DescDto descDto) {
		
		ModelAndView mav = new ModelAndView();
		
		try {
			descDto.setSeq_sel(saleDto.getSeq_sel());
			
			if (service.update(saleDto)) {
				if(service.updateDesc(descDto)){
				request.setAttribute("redirect"	, "/seller/sale/list");
				mav.setViewName("forward:/servlet/result");
				}
			}
			else {
				mav.setViewName("forward:/servlet/result");
			}
			
		}
		catch (Exception e) {
			//.error("[" + this.getClass().getName() + ".modifyProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/seller/sale/delete")
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response	, SaleDto saleDto) {
		
		ModelAndView mav = new ModelAndView("redirect:/error");
		
		try {
			
			if (service.delete(saleDto)) {
				request.setAttribute("redirect"	, "/seller/sale/list");
			}
			else {
				request.setAttribute("redirect"	, "/seller/seller/main");
			}
			
			mav.setViewName("forward:/servlet/result");
		}
		catch (Exception e) {
			//logger.error("[" + this.getClass().getName() + ".remove()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}

}