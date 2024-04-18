package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.login.service.SellerLoginServiceImpl;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.dto.SellerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.Datetime;


@Controller
public class SellerLoginController {
	
	@Autowired
	SellerLoginServiceImpl service;

	
	@RequestMapping("/seller/login/loginForm")
	public ModelAndView loginForm(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			
			HttpSession session = request.getSession(true);
			
			if (session.getAttribute("ID") == null
					|| session.getAttribute("ID").equals("")
					|| session.getAttribute("SEQ_SLL") == null
					|| session.getAttribute("SEQ_SLL").equals("")
					|| session.getAttribute("DT_LOGIN") == null
					|| session.getAttribute("DT_LOGIN").equals("")) {
				
				mav.setViewName("/seller/login/loginForm");
			}
			else {
				request.setAttribute("redirect"	, "/seller/main/main");
				
				mav.setViewName("/seller/main/sellersMain");
			}
		}
		catch (Exception e) {
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/seller/login/loginProc", method = RequestMethod.POST)
	public ModelAndView loginProc(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			
			String id		= request.getParameter("id");
//			String passwd	= request.getParameter("passwd");
			
			/** [개선] 정상 또는 실패 시 IP, Time, Agent 등을 보안상 저장 */
			SellerDto sellerDto = service.loginProc(id);
			
			// 해쉬 암호화
			if (sellerDto != null) {
				
				// 세션에 로그인 정보(로그인 일시 및 ID)를 저장
				HttpSession session = request.getSession(true);
				session.setAttribute("DT_LOGIN", Datetime.getNow("yyyy-MM-dd HH:mm:ss"));
				session.setAttribute("ID", sellerDto.getId());
				session.setAttribute("SEQ_SLL", Integer.toString(sellerDto.getSeq_sll()));
				session.setAttribute("CORP_NM", sellerDto.getCorp_nm());
				session.setAttribute("CD_USR_TYPE", "2"); // 관리자(1), 판매자(2), 구매자(3)
				
				request.setAttribute("script"	, "alert('" + id + "님이 " + session.getAttribute("DT_LOGIN") + "에 로그인하셨습니다.');");
				request.setAttribute("redirect"	, "/seller/main/main");
			}
			else {
				request.setAttribute("script", "alert('아이디와 암호를 확인하세요!');");
				request.setAttribute("redirect"	, "/seller/login/loginForm");
			}
			mav.setViewName("forward:/servlet/result");

		}
		catch (Exception e) {
			// 오류 처리
						e.printStackTrace(); // 에러 메시지 출력
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/seller/login/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			
			HttpSession session = request.getSession(false);
			
			String id		= (String) session.getAttribute("ID");
			String dt_login	= (String) session.getAttribute("DT_LOGIN");
			
			session.invalidate();
			
			request.setAttribute("script"	, "alert('" + dt_login + "에 로그인한 " + id + "님 안녕히 가세요.')");
				
			mav.setViewName("seller/main/main");
		}
		catch (Exception e) {
			System.out.println("오류문임");
		}
		finally {}
		
		return mav;
	}
	
	
	
}
