package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.main;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller

public class BackofficeMainController {
	@RequestMapping("/backoffice/main/main")
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response, @RequestParam Map<String,String> param) {
		ModelAndView mav = new ModelAndView();
		
	//	HttpSession session = request.getSession(true);
	//	session.setAttribute("CD_USR_TYPE", "1"); // 관리자(1), 판매자(2), 구매자(3)
		
		mav.setViewName("/backoffice/main/main");
		return mav;
	}

}
