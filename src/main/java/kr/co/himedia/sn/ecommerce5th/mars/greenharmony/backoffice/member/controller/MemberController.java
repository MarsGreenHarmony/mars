package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.member.service.MemberService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.dto.SellerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.SKwithAES;

@Controller
public class MemberController {

	@Autowired
	MemberService service;

	// 판매자 회원
	@RequestMapping(value = "/backoffice/member/sellerlist")
	public ModelAndView sellermember(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

		List<SellerDto> list = service.sellermember();
		mav.addObject("list", list);
		mav.setViewName("/backoffice/member/sellerlist");

		return mav;
	}

	// 구매자 회원
	@RequestMapping(value = "/backoffice/member/customerlist")
	public ModelAndView customermember(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			List<CustomerDto> list = service.frontmember();
			String staticKey	="I.am.the.Plutozone!.Thank.you@@@";
			SKwithAES aes		= new SKwithAES(staticKey);
			
			for(int i=0; i<list.size(); i++) {
				list.get(i).setCst_nm(aes.decode(list.get(i).getCst_nm()));
			}
			
			mav.addObject("list", list);
			mav.setViewName("/backoffice/member/customerlist");
		}catch(Exception e) {
			e.printStackTrace();
		}
		

		return mav;
	}

}
