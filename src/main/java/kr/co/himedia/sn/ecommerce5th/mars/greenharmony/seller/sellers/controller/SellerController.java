package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.dto.SellerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.service.SellerServiceImpl;

@Controller
public class SellerController {
	
	@Autowired
	SellerServiceImpl service;
	
	@RequestMapping("/seller/sellers/register")
	public ModelAndView writeForm(@RequestParam Map<String,String> param) {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("/seller/sellers/writeForm");
		return mav;
	}
	
	@RequestMapping(value = "/seller/sellers/writeProc")
	public ModelAndView writeProc(HttpServletRequest request, HttpServletResponse response, SellerDto sellerDto) {
		
		
		ModelAndView mav = new ModelAndView();
		if(service.insert(sellerDto)) {
			request.setAttribute("script", "alert('판매자가입에 성공했습니다!');");
			request.setAttribute("redirect"	, "/seller/main/main");
		} else {
			request.setAttribute("script", "alert('판매자가입에 실패했습니다');");
			request.setAttribute("redirect"	, "/seller/login/loginForm");

		}
		
		
		mav.setViewName("forward:/servlet/result");
		return mav;
	}
	
	// 아이디 중복체크
		@PostMapping("/sellercheckId")
		@ResponseBody
		public int idCheck(@RequestParam("id") String id) {

			int cnt = service.idCheck(id);
			return cnt;

		}
	
	

}
