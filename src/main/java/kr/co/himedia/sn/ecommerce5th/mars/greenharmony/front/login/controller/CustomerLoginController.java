package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.login.controller;


//import java.util.HashMap;
//import java.util.Map;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.dto.CartDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.service.CartService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.login.service.CustomerLoginService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.Datetime;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.HSwithSHA;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.SKwithAES;


@Controller
public class CustomerLoginController extends Common{

	@Autowired
	CustomerLoginService loginService;
	
	@Autowired
	CartService serviceCart;

	
	@Autowired
	Properties staticProperties;
	
	
	private static Logger logger = LoggerFactory.getLogger(CustomerLoginController.class);

	
	@RequestMapping("/front/login/loginForm")
	// public ModelAndView loginForm(@RequestParam Map<String, String> param) {
	public ModelAndView loginForm(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();

		try {

			HttpSession session = request.getSession(true);

			if (session.getAttribute("ID") == null || session.getAttribute("ID").equals("")
					|| session.getAttribute("SEQ_CST") == null || session.getAttribute("SEQ_CST").equals("")
					|| session.getAttribute("DT_LOGIN") == null || session.getAttribute("DT_LOGIN").equals("")) {

				mav.setViewName("/front/login/loginForm");
			} else {
				request.setAttribute("redirect", "/front/buy/orderList");

				mav.setViewName("forward:/servlet/result");
			}
		} catch (Exception e) {
			// logger.error("[" + this.getClass().getName() + ".loginForm()] " +
			// e.getMessage(), e);
		} finally {
		}

		return mav;
	}

	@RequestMapping(value = "/front/login/terms")
	public ModelAndView terms(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

		try {
			mav.setViewName("/front/login/terms");
		} catch (Exception e) {
			// logger.error("[" + this.getClass().getName() + ".writeForm()] " +
			// e.getMessage(), e);
		} finally {
		}

		return mav;
	}

	@RequestMapping(value = "/front/login/loginProc", method = RequestMethod.POST)
	public ModelAndView loginProc(HttpServletRequest request, HttpServletResponse response, CartDto cartDto) {
	    ModelAndView mav = new ModelAndView("redirect:/error.web");

	    try {
	        String id = request.getParameter("id");
	        String passwd = request.getParameter("passwd");

	        // 정상 또는 실패 시 IP, Time, Agent 등을 보안상 저장
	        CustomerDto customerDto = loginService.loginProc(id);

	        if (customerDto != null && HSwithSHA.encode(passwd).equals(customerDto.getPasswd())) {
	        	   if (!"N".equals(customerDto.getSeq_state())) {
	                   // 탈퇴한 회원일 경우
	                   request.setAttribute("script", "alert('탈퇴한 회원입니다');");
	                   request.setAttribute("redirect", "/front/login/loginForm"); // 로그인 폼으로 리다이렉트
	                   mav.setViewName("forward:/servlet/result");
	                   
	                   
	            } else {
	                // 대칭키 암호화
	                String staticKey = "I.am.the.Plutozone!.Thank.you@@@";
	                SKwithAES aes = new SKwithAES(staticKey);
	         
				HttpSession session = request.getSession(true);
				
				System.out.println(Integer.toString(serviceCart.cartSelect(customerDto.getSeq_cst())));

				 
				// 세션에 로그인 시간 및 사용자 정보를 저장
				session.setAttribute("DT_LOGIN", Datetime.getNow("yyyy-MM-dd HH:mm:ss")); // 로그인 일시
				session.setAttribute("ID", customerDto.getId()); // 사용자 ID
				session.setAttribute("SEQ_CST", Integer.toString(customerDto.getSeq_cst())); // 사용자 일련번호
				session.setAttribute("CST_NM", aes.decode(customerDto.getCst_nm())); // 사용자 이름
				session.setAttribute("CD_USR_TYPE", "3"); // 사용자 유형 코드 (구매자)
				session.setAttribute("SEQ_CRT", Integer.toString(serviceCart.cartSelect(customerDto.getSeq_cst())));

	   
	                request.setAttribute("script", "alert('" + id + "님이 " + session.getAttribute("DT_LOGIN") +
	                        "에 로그인하셨습니다.');"); // 성공 메시지
	                request.setAttribute("redirect", "/front/main/main"); // 리다이렉트 URL

	                mav.setViewName("forward:/servlet/result");
				 }
	            
	   
	        } else {
	            // 사용자 정보가 존재하지 않는다면 로그인 실패를 알리는 스크립트 및 리다이렉트 URL을 설정
	            request.setAttribute("script", "alert('아이디 또는 비밀번호가 틀렸습니다!');");
	            request.setAttribute("redirect", "/front/login/loginForm"); // 리다이렉트 URL
	            mav.setViewName("forward:/servlet/result");
	        }

	    } catch (Exception e) {
	        // 오류 처리
	        e.printStackTrace(); // 에러 메시지 출력
	    }

	    return mav;
	}

	     
	@RequestMapping(value = "/front/login/logout") 
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
	    
	    ModelAndView mav = new ModelAndView("redirect:/error.web"); // ModelAndView 객체를 생성하여 redirect:/error.web 으로 설정한다.
	    
	    try {
	        
	        HttpSession session = request.getSession(false); // 현재 요청의 세션을 가져온다. 세션이 없을 경우에는 새로운 세션을 생성하지 않는다.
	        
	        //logger.debug("ID=" + session.getAttribute("ID")); // ID 세션 속성 값을 로깅한다.
	        //logger.debug("DT_LOGIN=" + session.getAttribute("DT_LOGIN")); // DT_LOGIN 세션 속성 값을 로깅한다.
	        
	        String id        = (String) session.getAttribute("ID"); // 세션에서 ID 속성 값을 가져온다.
	        String dt_login    = (String) session.getAttribute("DT_LOGIN"); // 세션에서 DT_LOGIN 속성 값을 가져온다.
	        
	        session.invalidate(); // 세션을 무효화시킨다. 세션 속성을 모두 삭제한다.
	        // session.setAttribute("ID"        , null); // ID 세션 속성 값을 null로 설정한다.
	        // session.setAttribute("DT_LOGIN"    , null); // DT_LOGIN 세션 속성 값을 null로 설정한다.
	        
	        request.setAttribute("script"    , "alert('" + dt_login + "에 로그인한 " + id + "님 안녕히 가세요.')"); // request 객체에 script 속성을 추가하여 JavaScript alert를 생성한다.
	        request.setAttribute("redirect"    , "/front/main/main"); // request 객체에 redirect 속성을 추가하여 로그인 페이지로 리다이렉트할 경로를 설정한다.
	            
	        mav.setViewName("forward:/servlet/result"); // ModelAndView의 뷰 이름을 forward:/servlet/result.web 으로 설정하여 서블릿 경로로 포워딩한다.
	    }
	    catch (Exception e) { // 예외 처리
	        /*logger.error("[" + this.getClass().getName() + ".logout()] " + e.getMessage(), e); // 에러 로그를 출력한다.*/
	    }
	    finally {} // finally 블록
	    
	    return mav; // ModelAndView 객체를 반환한다.
	}
	
	
	@RequestMapping(value = "/front/login/findId")
	public ModelAndView findId(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

		try {
			mav.setViewName("/front/login/findidForm");
		} catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".findId()] " + e.getMessage(), e);
		} finally {
		}

		return mav;
	}
	// 메일로 아이디 보내기

	@RequestMapping(value = "/front/login/findIdresult")
	public ModelAndView findIdresult(HttpServletRequest request, HttpServletResponse response, @RequestParam String cst_nm, @RequestParam String cst_email) {		
	    ModelAndView mav = new ModelAndView("/front/login/findIdresult");
	    
	    try {	
	        String staticKey ="I.am.the.Plutozone!.Thank.you@@@";
	        SKwithAES aes = new SKwithAES(staticKey);
	        
	        String Name = aes.encode(cst_nm);
	        String Email = aes.encode(cst_email);
	        
	        CustomerDto customerDto = new CustomerDto();
	        customerDto.setCst_nm(Name);	
	        customerDto.setCst_email(Email);	
	        
	        CustomerDto _customerDto = loginService.findId(customerDto);
	    
	        if (_customerDto != null) { 
	            mav.addObject("customerDto", _customerDto);
	        } else {
	            mav.addObject("notFoundMessage", "입력하신 정보로 가입된 회원 아이디가 존재하지 않습니다.");
	        }
	        
	    } catch (Exception e) {	
	        logger.error("[" + this.getClass().getName() + ".findIdresult()] " + e.getMessage(), e);
	    }
	    return mav;
	}
	
	@RequestMapping(value = "/front/login/findPw")
	public ModelAndView findPw(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

		try {
			mav.setViewName("/front/login/findPw");
		} catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".findPw()] " + e.getMessage(), e);
		} finally {
		}

		return mav;
	}
	
	@RequestMapping(value = "/front/login/findPwresult")
	public ModelAndView findPwresult(HttpServletRequest request, HttpServletResponse response,
			@RequestParam String cst_nm, @RequestParam String cst_email, @RequestParam String id) {
		
		ModelAndView mav = new ModelAndView();
		
		try {
			
			String staticKey = "I.am.the.Plutozone!.Thank.you@@@";
			SKwithAES aes = new SKwithAES(staticKey);
			
			String Name = aes.encode(cst_nm);
			String Email = aes.encode(cst_email);
			

			CustomerDto customerDto = new CustomerDto();
			customerDto.setId(id);
			customerDto.setCst_nm(Name);
			customerDto.setCst_email(Email);
			
			CustomerDto _customerDto = loginService.findPw(customerDto);
			
			
			if (_customerDto != null) {
				// 세션에 seq_cst 저장 (문자열로 변환하여 저장)
				HttpSession session = request.getSession();
				session.setAttribute("SEQ_CST", Integer.toString(_customerDto.getSeq_cst()));
				 
			
				mav.setViewName("forward:/front/login/updatePw");
				mav.addObject("customerDto", _customerDto);
				
			} else {
				// 입력한 값과 일치하는 데이터가 없는 경우 에러 메시지 설정
				request.setAttribute("script", "alert('일치하는 데이터가 없습니다!');");
				request.setAttribute("redirect", "/front/login/findPw");
				mav.setViewName("forward:/servlet/result");
			}
		
		} catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".findPwresult()] " + e.getMessage(), e);
			mav.setViewName("redirect:error.web");
		}
		
		return mav;
	}
		
	
	@RequestMapping(value = "/front/login/updatePw")
	public ModelAndView updatePw(HttpServletRequest request, HttpServletResponse response) {
	
		ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			mav.setViewName("/front/login/updatePw");
		} catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".updatePw()] " + e.getMessage(), e);
		} finally {
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/front/login/updatePwresult")
	public ModelAndView updatePwresult(HttpServletRequest request, HttpServletResponse response, CustomerDto customerDto) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");
	
		try {
			String newPassword = HSwithSHA.encode(request.getParameter("newPassword"));
			customerDto.setPasswd(newPassword);
		
			HttpSession session = request.getSession(false);
			String seq_cst_str = (String) session.getAttribute("SEQ_CST");
			
			if (seq_cst_str != null && !seq_cst_str.isEmpty()) {
			    try {
			        int seq_cst = Integer.parseInt(seq_cst_str);
			        customerDto.setSeq_cst(seq_cst);
			    } catch (NumberFormatException e) {
			        e.printStackTrace();
			    }
			} else {
			    request.setAttribute("redirect", "/front/login/loginForm");
			    mav.setViewName("forward:/servlet/result");
			    return mav;
			}
			 logger.info("Updating password for customer with SEQ_CST: {}", customerDto.getSeq_cst());
			 
			request.setAttribute("scriptSRC", "<script type=\"text/javascript\" src=\"/js/front.js\"></script>");
			if (loginService.updatePw(customerDto)) {
				request.setAttribute("script", "alert('비밀번호 변경에 성공 하였습니다.');");
				request.setAttribute("redirect", "/front/login/loginForm");
			} else {
				request.setAttribute("script", "alert('비밀번호 변경에 실패 하였습니다.');");
				request.setAttribute("redirect", "/front/login/updatePw");
			}
		
			mav.setViewName("forward:/servlet/result");
		
		} catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".updatePwresult()] " + e.getMessage(), e);
		}
	
		return mav;
	}

}