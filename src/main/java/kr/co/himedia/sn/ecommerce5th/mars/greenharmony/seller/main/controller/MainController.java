package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.main.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@RequestMapping("/seller/main/main")
	public ModelAndView main(@RequestParam Map<String,String> param) {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("/seller/main/main");
		return mav;
	}
	
	@RequestMapping("/seller/sellers/main")
	public ModelAndView sellersMain(@RequestParam Map<String,String> param) {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("/seller/main/sellersMain");
		return mav;
	}
	
	

}
