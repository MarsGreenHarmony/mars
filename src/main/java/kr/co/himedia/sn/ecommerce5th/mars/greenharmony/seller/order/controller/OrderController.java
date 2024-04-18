package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.order.controller;




import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.PageMaker;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.order.dto.OrderDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.order.service.OrderService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.SKwithAES;

@Controller
public class OrderController  extends Common{

	@Autowired
	OrderService service;
	
	@Autowired
	Properties staticProperties;
	

	private static Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	
	
	
	
	
	
	@RequestMapping("/seller/order/revenue")
	public ModelAndView revenue(@RequestParam Map<String, String> param, BuyDtlDto buyDtlDto, HttpServletRequest request) throws NumberFormatException, Exception {
		ModelAndView mav = new ModelAndView();
		
		buyDtlDto.setSeq_sll(Integer.parseInt(getSession(request, "SEQ_SLL")));
		buyDtlDto.setStart(param.get("start"));
		buyDtlDto.setEnd(param.get("end"));
		
		mav.addObject("list", service.revenueList(buyDtlDto));
		mav.addObject("revenue", service.select(buyDtlDto));
		mav.setViewName("/seller/order/revenue");
		return mav;
	}
	
	
	
	@RequestMapping("/seller/order/calList")
	public ModelAndView calList(SearchCriteria cri, PageMaker pageMaker, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		cri.setSnoEno();
		cri.setSeq_sll(Integer.parseInt(getSession(request, "SEQ_SLL")));		

		mav.addObject("list", service.calList(cri));
		
		pageMaker.setCri(cri);
		pageMaker.setTotalRowsCount(service.calCount(cri));     // ver02: 조건과 일치하는 Rows 갯수 
		mav.addObject("pageMaker", pageMaker);
		
		mav.setViewName("/seller/order/calList");
		return mav;
	}

	@RequestMapping("/seller/order/orderlist")
	public ModelAndView orderlist( HttpServletRequest request, HttpServletResponse response, OrderDto orderDto ) {
		 ModelAndView mav = new ModelAndView(); // 뷰 이름을 설정하지 않습니다.

		 try {
		        orderDto.setSeq_sll(Integer.parseInt(getSession(request, "SEQ_SLL")));

		        // 주문 목록 가져오기
		        List<OrderDto> orderList = service.searchList(orderDto);
		         
		        String staticKey = "I.am.the.Plutozone!.Thank.you@@@";
		        SKwithAES aes = new SKwithAES(staticKey);

		        for (OrderDto order : orderList) {
		        order.setCst_nm(aes.decode(order.getCst_nm()));
	        }
		        
		        mav.addObject("list", orderList);
		        mav.setViewName("/seller/order/orderlist");
		        
		    } catch (Exception e) {
		        logger.error("[" + this.getClass().getName() + ".orderlist()] " + e.getMessage(), e);
		    } finally {
			}

		    return mav;
		}

	@RequestMapping("/seller/order/deliveryProc")
	public ModelAndView deliveryProc(HttpServletRequest request, HttpServletResponse response, OrderDto orderDto) {
	    ModelAndView mav = new ModelAndView();

	    try {
	        int seqDtl = Integer.parseInt(request.getParameter("seq_dtl"));
	        String cdStateDelivery = request.getParameter("deliveryStatus");

	        // 배송 상태 업데이트를 위한 DTO 생성
	        OrderDto updatedOrderDto = new OrderDto();
	        updatedOrderDto.setSeq_dtl(seqDtl);
	        updatedOrderDto.setCd_state_delivery(cdStateDelivery);

	        // 배송 상태 업데이트 서비스 호출
	        boolean success = service.update(updatedOrderDto);

	        // 업데이트 결과에 따라 메시지 설정
	        if (success) {
	            mav.addObject("message", "배송 상태가 성공적으로 업데이트되었습니다.");
	        } else {
	            mav.addObject("message", "배송 상태 업데이트에 실패하였습니다.");
	        }

	    } catch (Exception e) {
	        // 예외 발생 시 에러 메시지 설정
	        mav.addObject("error", "배송 상태 업데이트 중 오류가 발생하였습니다: " + e.getMessage());
	        logger.error("[" + this.getClass().getName() + ".deliveryProc()] " + e.getMessage(), e);
	    }

	    // 배송 상태 업데이트 후 배송 목록 페이지로 이동
	    mav.setViewName("redirect:/seller/order/orderlist");
	    return mav;
	}
}