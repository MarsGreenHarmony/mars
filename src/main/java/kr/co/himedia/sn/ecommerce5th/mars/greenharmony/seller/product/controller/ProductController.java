package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.dto.PagingDto;
//import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.dto.PagingListDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.PageMaker;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.dto.ProductDto;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.product.service.ProductServiceImpl;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;

@Controller
public class ProductController extends Common {

	@Autowired
	ProductServiceImpl service;
	
	/** Logger */
	/*
	 * private static Logger logger =
	 * LoggerFactory.getLogger(ProductController.class);
	 */
	
	
	
	
	@RequestMapping("/seller/product/list")
	public ModelAndView list(SearchCriteria cri, PageMaker pageMaker, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		cri.setSnoEno();
		cri.setRegister(Integer.parseInt(getSession(request, "SEQ_SLL")));		

		mav.addObject("list", service.searchList(cri));
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(service.searchCount(cri));     // ver02: 조건과 일치하는 Rows 갯수 
		mav.addObject("pageMaker", pageMaker);
		
		mav.setViewName("/seller/product/list");
		return mav;
	}
	
	
	
	
	@RequestMapping("/seller/product/writeProc")
	public ModelAndView writeProc(@RequestParam Map<String, String> param, ProductDto productDto,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();

		String[] images = request.getParameterValues("prd_img");
		
		productDto.setRegister(Integer.parseInt(getSession(request, "SEQ_SLL")));

		if (service.insertProduct(productDto)) {
			for (int i = 0; i < images.length; i++) {
	            String image = images[i];
	            if (image != null && !image.isEmpty()) {
	                productDto.setPrd_img(image); // 이미지 설정
	                // 첫 번째 이미지인 경우 tn_state를 'S'로 설정, 그 외에는 'N'으로 설정
	                productDto.setTn_state((i == 0) ? "S" : "N");
	                service.insertImg(productDto);
	            }
	        }
			request.setAttribute("redirect", "/seller/product/list");
			mav.setViewName("forward:/servlet/result");
		} else {
			request.setAttribute("redirect", "/seller/main/main");
			mav.setViewName("forward:/servlet/result");
		}

		return mav;

	}
	
	
	
	@RequestMapping("/seller/product/writeForm")
	public ModelAndView writeForm(@RequestParam Map<String, String> param) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("/seller/product/writeForm");
		return mav;
	}
	
	@RequestMapping(value = "/seller/product/modifyForm")
	public ModelAndView modifyForm(HttpServletRequest request, HttpServletResponse response	, ProductDto productDto) {
		
		ModelAndView mav = new ModelAndView();
		
		try {
					
			ProductDto _productDto = service.select(productDto);
			
			
			mav.addObject("list", _productDto);
			mav.setViewName("/seller/product/modifyForm");
		}
		catch (Exception e) {
			//logger.error("[" + this.getClass().getName() + ".modifyForm()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/seller/product/modifyProc")
	public ModelAndView modifyProc(HttpServletRequest request, HttpServletResponse response	, ProductDto productDto) {
		
		ModelAndView mav = new ModelAndView("redirect:/error");
		
		try {
			
			//logger.debug("prd_nm=" + productDto.getPrd_nm());
			
			if  (service.update(productDto)) {
				request.setAttribute("redirect"	, "/seller/product/list");
				mav.setViewName("forward:/servlet/result");
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
	
	@RequestMapping(value = "/seller/product/delete")
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response	, ProductDto productDto) {
		
		ModelAndView mav = new ModelAndView("redirect:/error");
		
		try {
			
			if (service.delete(productDto)) {
				request.setAttribute("redirect"	, "/seller/product/list");
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
