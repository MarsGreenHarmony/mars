package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.controller;

import java.util.List;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.dto.DeliveryDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.service.DeliveryServiceImpl;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.SKwithAES;

@Controller
public class DeliveryController extends Common {

	@Autowired
	DeliveryServiceImpl service;

	@Autowired
	Properties staticProperties;

	@Autowired
	DeliveryServiceImpl DeliveryService;

	private static Logger logger = LoggerFactory.getLogger(DeliveryController.class);

	@RequestMapping(value = "/front/delivery/deliveryForm")
	public ModelAndView deliveryForm(HttpServletRequest request, HttpServletResponse response,
			DeliveryDto deliveryDto) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

		try {

			deliveryDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
			

			List<DeliveryDto> _deliveryDto = service.list(deliveryDto);

			// 대칭키 암호화
			String staticKey = "I.am.the.Plutozone!.Thank.you@@@";
			SKwithAES aes = new SKwithAES(staticKey);

			for (DeliveryDto dto : _deliveryDto) {
				dto.setDev_hm(aes.decode(dto.getDev_hm()));
				dto.setPostcode(aes.decode(dto.getPostcode()));
				dto.setAddress(aes.decode(dto.getAddress()));
				dto.setAddress_dtl(aes.decode(dto.getAddress_dtl()));
				dto.setPhone_nm(aes.decode(dto.getPhone_nm()));
			}

			mav.addObject("deliveryDto", _deliveryDto);
			mav.setViewName("/front/delivery/deliveryForm");
		} catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".deliveryForm()] " + e.getMessage(), e);
		} finally {
		}

		return mav;
	}

	@RequestMapping(value = "/front/delivery/deliveryProc")
	public ModelAndView writeProc(HttpServletRequest request, HttpServletResponse response, DeliveryDto deliveryDto) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

           
		try {
			DeliveryDto a=service.selectDev(Integer.parseInt(getSession(request, "SEQ_CST")));
			
			if (request.getParameter("test").equals("test")){
				deliveryDto.setDev_state("Y");
				
				if (a != null && a.getDev_state() != null && !a.getDev_state().isEmpty()) {
					
				  service.updateDev(a.getSeq_dev());
				}
				
			}else{ deliveryDto.setDev_state("N");
			
			}
			
			
			
			deliveryDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));

			String staticKey = "I.am.the.Plutozone!.Thank.you@@@";
			SKwithAES aes = new SKwithAES(staticKey);

			deliveryDto.setDev_hm(aes.encode(deliveryDto.getDev_hm()));
			deliveryDto.setPostcode(aes.encode(deliveryDto.getPostcode()));
			deliveryDto.setAddress(aes.encode(deliveryDto.getAddress()));
			deliveryDto.setAddress_dtl(aes.encode(deliveryDto.getAddress_dtl()));
			deliveryDto.setPhone_nm(aes.encode(deliveryDto.getPhone_nm()));

			if (service.insert(deliveryDto)) {
				request.setAttribute("redirect", "/front/delivery/deliveryForm");

			} else {
				request.setAttribute("redirect", "/front/delivery/deliveryForm");
			}

			mav.setViewName("forward:/servlet/result");

		} catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".deliveryProc()] " + e.getMessage(), e);
		} finally {
		}

		return mav;
	}

	@RequestMapping(value = "/front/delivery/modifyForm")
	public ModelAndView modifyForm(HttpServletRequest request, HttpServletResponse response, DeliveryDto deliveryDto) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

		try {
			// logger.debug("id=" + getSession(request, "ID"));
			
			DeliveryDto _deliveryDto = DeliveryService.select(deliveryDto);

			// 대칭키 암호화
			String staticKey = "I.am.the.Plutozone!.Thank.you@@@";
			SKwithAES aes = new SKwithAES(staticKey);

			_deliveryDto.setDev_hm(aes.decode(_deliveryDto.getDev_hm()));
			_deliveryDto.setPostcode(aes.decode(_deliveryDto.getPostcode()));
			_deliveryDto.setAddress(aes.decode(_deliveryDto.getAddress()));
			_deliveryDto.setAddress_dtl(aes.decode(_deliveryDto.getAddress_dtl()));
			_deliveryDto.setPhone_nm(aes.decode(_deliveryDto.getPhone_nm()));

			mav.addObject("deliveryDto", _deliveryDto);
			mav.setViewName("/front/delivery/devmodifyForm");
		}

		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".modifyForm()] " + e.getMessage(), e);
		} finally {
		}

		return mav;
	}

	@RequestMapping(value = "/front/delivery/modifyProc")
	public ModelAndView modifyProc(HttpServletRequest request, HttpServletResponse response, DeliveryDto deliveryDto) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

		try {
			DeliveryDto a=service.selectDev(Integer.parseInt(getSession(request, "SEQ_CST")));

			
			if (request.getParameter("test").equals("test")){
				deliveryDto.setDev_state("Y");
				
				if (a != null && a.getDev_state() != null && !a.getDev_state().isEmpty()) {
					
				  service.updateDev(a.getSeq_dev());
				}
				
			}else{ deliveryDto.setDev_state("N");
			
			}
			
			
			System.out.println(deliveryDto.getSeq_dev());
			// 대칭키 암호화
			String staticKey = "I.am.the.Plutozone!.Thank.you@@@";
			SKwithAES aes = new SKwithAES(staticKey);

			deliveryDto.setDev_hm(aes.encode(deliveryDto.getDev_hm()));
			deliveryDto.setPostcode(aes.encode(deliveryDto.getPostcode()));
			deliveryDto.setAddress(aes.encode(deliveryDto.getAddress()));
			deliveryDto.setAddress_dtl(aes.encode(deliveryDto.getAddress_dtl()));
			deliveryDto.setPhone_nm(aes.encode(deliveryDto.getPhone_nm()));
			

	      

			if (service.update(deliveryDto)) {
				request.setAttribute("redirect", "/front/delivery/deliveryForm");

			} else {
				request.setAttribute("redirect", "/front/delivery/modifyForm");
			}

			mav.setViewName("forward:/servlet/result");

		} catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".modifyProc()] " + e.getMessage(), e);
		} finally {
		}

		return mav;
	}

	@RequestMapping(value = "/front/delivery/deleteProc")
	public ModelAndView deleteForm(HttpServletRequest request, HttpServletResponse response, DeliveryDto deliveryDto) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

		try {
			// 배송 정보 삭제 수행
			boolean isSuccess = service.delete(deliveryDto);

			if (isSuccess) {
				// 삭제 성공 시 리다이렉트할 경로 설정
				request.setAttribute("redirect", "/front/delivery/deliveryForm");

			} else {
				// 삭제 실패 시 에러 메시지 출력
				request.setAttribute("redirect", "/front/delivery/deliveryForm");
			}
			mav.setViewName("forward:/servlet/result");

		} catch (Exception e) {
			e.printStackTrace();
			// 삭제 과정에서 예외 발생 시 에러 메시지 출력

		}

		return mav;
	}
	
	
}