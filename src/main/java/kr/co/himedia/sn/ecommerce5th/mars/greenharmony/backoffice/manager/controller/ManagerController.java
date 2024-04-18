package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class ManagerController {
	
	@RequestMapping(value = "/backoffice/manager/writeForm")
	public ModelAndView writeForm(HttpServletRequest request, HttpServletResponse response) {

	ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			mav.setViewName("/backoffice/manager/writeForm");
		}
		catch (Exception e) {
			//logger.error("[" + this.getClass().getName() + ".writeForm()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}

	
}
