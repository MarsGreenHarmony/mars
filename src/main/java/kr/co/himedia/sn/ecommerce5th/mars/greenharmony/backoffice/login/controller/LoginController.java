package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.login.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.login.service.LoginService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.manager.dto.ManagerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.Datetime;

@Controller
public class LoginController {
	
	@Autowired
	LoginService service;
	
	private static Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping("/backoffice/login/loginForm")
	public ModelAndView loginForm(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView();

	    try {
	        // 여기에 로그인 처리 로직을 추가하세요
	        // 세션이 없는 경우에는 바로 로그인 화면으로 이동하도록 설정합니다.
	        mav.setViewName("/backoffice/login/loginForm");
	    } catch (Exception e) {
	        mav.setViewName("redirect:/error");
	    }

	    return mav;
	}
	
	@RequestMapping(value = "/backoffice/login/loginProc")
	public ModelAndView loginProc(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView("redirect:/error");
		
		try {
			String id = request.getParameter("id");
			//String passwd = request.getParameter("passwd");
			
			ManagerDto managerDto = service.loginProc(id);
			
			if(managerDto != null) {
				
				// 세션에 로그인 정보(로그인 일시 및 ID)를 저장
				HttpSession session = request.getSession(true);
				session.setAttribute("DT_LOGIN", Datetime.getNow("yyyy-MM-dd HH:mm:ss"));
				session.setAttribute("ID", managerDto.getId());
				session.setAttribute("SEQ_MNG", Integer.toString(managerDto.getSeq_mng()));
				session.setAttribute("MNG_NM", managerDto.getMng_nm());
				session.setAttribute("CD_USR_TYPE", "1"); // 관리자(1), 판매자(2), 구매자(3)
				
				request.setAttribute("script"	, "alert('" + id + "님이 " + session.getAttribute("DT_LOGIN") + "에 로그인하셨습니다.');");
				request.setAttribute("redirect"	, "/backoffice/main/main");
				
			} else {
				request.setAttribute("script", "alert('아이디와 암호를 확인하세요!');");
				request.setAttribute("redirect"	, "/backoffice/login/loginForm");
			}
			mav.setViewName("forward:/servlet/result");

		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".loginProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/backoffice/login/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView("redirect:/error");
		
		try {
			
			HttpSession session = request.getSession(false);
			
			String id		= (String) session.getAttribute("ID");
			String dt_login	= (String) session.getAttribute("DT_LOGIN");
			
			session.invalidate();
			
			request.setAttribute("script"	, "alert('" + dt_login + "에 로그인한 " + id + "님 안녕히 가세요.')");
				
			mav.setViewName("backoffice/main/main");
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".logout()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	

}
