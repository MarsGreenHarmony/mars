package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.backofficeproduct.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.backofficeproduct.service.BackofficeProductService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sale.dto.SaleDto;

@Controller
public class BackofficeProductController {

	@Autowired
	BackofficeProductService service;
	
	private static Logger logger = LoggerFactory.getLogger(BackofficeProductController.class);

	@RequestMapping(value = "/backoffice/backofficeproduct/list")
	public ModelAndView list(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

		List<SaleDto> list = service.list();
		// for(SaleDto li : list) {
		// System.out.println("Seq_sel=" + li.getSeq_sel());
		// }
		// mav.addObject("list", service.select(saleDto));
		mav.addObject("list", list);
		mav.setViewName("/backoffice/backofficeproduct/list");

		return mav;
	}

	// product view
	@RequestMapping(value = "/backoffice/backofficeproduct/view")
	public ModelAndView view(HttpServletRequest request, HttpServletResponse response, SaleDto saleDto) {

		ModelAndView mav = new ModelAndView("redirect:/error");
		
		SaleDto listing = service.listing(saleDto);
		
		mav.addObject("listing", listing);
		mav.setViewName("/backoffice/backofficeproduct/view");

		return mav;
	}
	
	@RequestMapping(value = "/backoffice/backofficeproduct/modifyProc")
	public ModelAndView modifyProc(@RequestParam Map<String, String> param, HttpServletRequest request, HttpServletResponse response, SaleDto saleDto) {
		
		ModelAndView mav = new ModelAndView();
		// @RequestParam Map<String, String> param,
		 saleDto.setSeq_sel(Integer.parseInt(param.get("seq_sel")));
		
		try {
			if  (service.update(saleDto)) {
				request.setAttribute("redirect"	, "/backoffice/backofficeproduct/list");
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

	
}
