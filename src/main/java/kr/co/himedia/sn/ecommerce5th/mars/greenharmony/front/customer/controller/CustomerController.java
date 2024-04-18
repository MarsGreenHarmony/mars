package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.controller;

import java.util.List;
//import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.dto.BoardDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.board.service.BoardService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyMstDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.service.BuyServiceImpl;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.dto.CartDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.service.CartService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.service.CustomerService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.HSwithSHA;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.SKwithAES;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;

@Controller
public class CustomerController extends Common{

	@Autowired
	CustomerService service;
	
	@Autowired
	CartService serviceCart;
	
	@Autowired
	BuyServiceImpl Buyserivce;
	
	@Autowired
	Properties staticProperties;
	
	@Autowired
	BoardService boardSrvc;
	
	private static Logger logger = LoggerFactory.getLogger(CustomerController.class);

	// 아이디 중복체크
	@PostMapping("/idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {

		int cnt = service.idCheck(id);
		return cnt;

	}
	
	@RequestMapping(value = "/front/customer/myPage")
	public ModelAndView view(@RequestParam Map<String,String> param , BuyMstDto buyMstDto) {
		
		ModelAndView mav = new ModelAndView();
			
			
			mav.setViewName("/front/buy/orderList");
	
		
		return mav;
	}

	@RequestMapping(value = "/front/customer/deleteForm")
	public ModelAndView deleteForm(HttpServletRequest request, HttpServletResponse response) {

	ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			mav.setViewName("/front/customer/deleteForm");
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".deleteForm()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	@RequestMapping(value = "/front/customer/deletecstProc")
	public ModelAndView deletecstProc(HttpServletRequest request, HttpServletResponse response, CustomerDto customerDto) {
		
	
	    ModelAndView mav = new ModelAndView();

	    try {
	    	
	    	customerDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
	    	
	    	
	    	if (service.deletecst(customerDto)) {
				request.setAttribute("redirect"	, "/front/login/logout");
			}
			else {
				request.setAttribute("redirect"	, "/front/customer/deleteForm");
			}
			
			mav.setViewName("forward:/servlet/result");
			
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".deletecstProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}

	@RequestMapping(value = "/front/customer/writeForm")
	public ModelAndView writeForm(HttpServletRequest request, HttpServletResponse response) {

	ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			mav.setViewName("/front/customer/writeForm");
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".writeForm()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}

	@RequestMapping(value = "/front/customer/writeProc")
	public ModelAndView writeProc(HttpServletRequest request, HttpServletResponse response, CustomerDto customerDto,CartDto cartDto) {

	ModelAndView mav = new ModelAndView();


		try {
			
			if (customerDto.getFlg_email() == null || customerDto.getFlg_email() == "") {
				customerDto.setFlg_email("N");
			}
			
			
			// 가입 안내 메일 발송용
//			String cst_email = customerDto.getCst_email();
			
			// 해쉬 암호화
			customerDto.setPasswd(HSwithSHA.encode(customerDto.getPasswd()));
			
			// 대칭키 암호화
			String staticKey	="I.am.the.Plutozone!.Thank.you@@@";
			SKwithAES aes		= new SKwithAES(staticKey);
			
			customerDto.setCst_nm(aes.encode(customerDto.getCst_nm()));
			customerDto.setPhone(aes.encode(customerDto.getPhone()));
			customerDto.setCst_email(aes.encode(customerDto.getCst_email()));
			
			if (service.insert(customerDto)) {
				
				cartDto.setSeq_cst(customerDto.getSeq_cst());
				if(serviceCart.insertCart(cartDto)) {
					request.setAttribute("script", "alert('회원가입에 성공했습니다!');");
					request.setAttribute("redirect"	, "/front/main/main");
				}
				
			}
			else {
				request.setAttribute("script"	, "alert('가입실패');");
				request.setAttribute("redirect"	, "/front/login/loginForm");
			}
			
			mav.setViewName("forward:/servlet/result");
			
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".writeProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
	
	@RequestMapping(value = "/front/customer/modifyProc")
	public ModelAndView modifyProc(HttpServletRequest request, HttpServletResponse response	, CustomerDto customerDto ) {
		
			ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			
			
			if (customerDto.getFlg_email() == null || customerDto.getFlg_email() == "") {
				customerDto.setFlg_email("N");
			}
			
			// 대칭키 암호화
			String staticKey	= "I.am.the.Plutozone!.Thank.you@@@";
			SKwithAES aes		= new SKwithAES(staticKey);
			
			customerDto.setPhone(aes.encode(customerDto.getPhone()));
			customerDto.setCst_email(aes.encode(customerDto.getCst_email()));
			
			
			customerDto.setUpdater(Integer.parseInt(getSession(request, "SEQ_CST")));
			customerDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
			
			
			
			if (service.update(customerDto)) {
				request.setAttribute("redirect"	, "/front/customer/modifyForm");
			}
			else {
				request.setAttribute("redirect"	, "/front/customer/modifyForm");
			}
			
			mav.setViewName("forward:/servlet/result");
			
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".modifyProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}


	@RequestMapping(value = "/front/customer/modifyForm")
	public ModelAndView modifyForm(HttpServletRequest request, HttpServletResponse response) {
		
	ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			//logger.debug("id=" + getSession(request, "ID"));
			
			CustomerDto customerDto = new CustomerDto();
			customerDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
			
			CustomerDto _customerDto = service.select(customerDto);
						
			// 대칭키 암호화
			String staticKey	= "I.am.the.Plutozone!.Thank.you@@@";
			SKwithAES aes		= new SKwithAES(staticKey);
			
			_customerDto.setCst_nm(aes.decode(_customerDto.getCst_nm()));
			_customerDto.setPhone(aes.decode(_customerDto.getPhone()));
			_customerDto.setCst_email(aes.decode(_customerDto.getCst_email()));
			
			mav.addObject("customerDto", _customerDto);
			mav.setViewName("/front/customer/modifyForm");
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".modifyForm()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	@RequestMapping(value = "/front/customer/inquiryForm")
	public ModelAndView inquiryForm(HttpServletRequest request, HttpServletResponse response ,String cd_bbs_type) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");
		
		try {
			
			if(getSession(request,"SEQ_CST")=="") {
				
				request.setAttribute("script"	, "alert('로그인이 필요한 서비스입니다!');");
				request.setAttribute("redirect"	, "/front/login/loginForm");
				mav.setViewName("forward:/servlet/result");
				
			} else {
				
				mav.addObject("cd_bbs_type"	, cd_bbs_type);

				mav.setViewName("/front/customer/inquiryForm");
			}		
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".inquiryForm()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	} 
	
	
	
	@RequestMapping(value = "/front/customer/inpuiryFroc")
	public ModelAndView writeForm(HttpServletRequest request, HttpServletResponse response, BoardDto boardDto) {

			ModelAndView mav = new ModelAndView();
		
		try {
			
			//boardDto.sleep(3100); // 3.1초
			
			 boardDto.setCd_usr_type(Integer.parseInt(getSession(request, "CD_USR_TYPE")));
			// [2023-12-18][pluto@himedia.co.kr][TODO: 부모글 일련번호, 게시판 일련번호, 탭 코드, 등록자/수정자 등 현행화]
			boardDto.setSeq_bbs_parent(0);
			boardDto.setCd_bbs_type(3);
			boardDto.setRegister(Integer.parseInt(getSession(request, "SEQ_CST")));
	
			
			if (boardSrvc.insert(boardDto)) {
				request.setAttribute("script"	, "alert('등록 완료');");
				request.setAttribute("redirect"	, "/front/customer/inquirylist");
			}
			else {
				request.setAttribute("script"	, "alert('등록 실패');");
			}
			
			mav.setViewName("forward:/servlet/result");
		
		}
		catch (Exception e) {
		//	logger.error("[" + this.getClass().getName() + ".writeProc()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}
	
		@RequestMapping(value = "/front/customer/inquirylist")
		public ModelAndView list(HttpServletRequest request, HttpServletResponse response) {
	
			 ModelAndView mav = new ModelAndView("redirect:/error");

			  try {
			        BoardDto boardDto = new BoardDto();

			        String cdUsrType = (String) request.getSession().getAttribute("CD_USR_TYPE");

			        // 문의내역 등록 후 바로 목록을 확인할 때 문의내역을 가져오기 위해 boardDto에 cd_usr_type 설정
			        boardDto.setCd_usr_type(Integer.parseInt(cdUsrType));

			        // 문의내역을 가져오기 위해 boardDto에 필요한 정보 설정
			        boardDto.setCd_bbs_type(3);
			        boardDto.setRegister(Integer.parseInt(getSession(request, "SEQ_CST")));

			        List<BoardDto> cstlist = boardSrvc.cstlist(boardDto);

			        mav.addObject("list", cstlist);
			        mav.setViewName("/front/customer/inquirylist");

			    } catch (Exception e) {
			        logger.error("[" + this.getClass().getName() + ".list()] " + e.getMessage(), e);
			    }

			    return mav;
			}
		
		@RequestMapping(value = "/front/customer/myinquiryView")
		public ModelAndView myInquiryView(HttpServletRequest request, HttpServletResponse response, BoardDto boardDto) {
			
			ModelAndView mav = new ModelAndView("redirect:/error");
			
			try {
				
			BoardDto listboardDto = boardSrvc.myinquiryList(boardDto);
				
				mav.addObject("boardDto", listboardDto);
				mav.setViewName("/front/customer/myinquiryView");
			}
			
			
			catch (Exception e) {
			//	logger.error("[" + this.getClass().getName() + ".view()] " + e.getMessage(), e);
			}
			finally {}
			
			return mav;
		}
}