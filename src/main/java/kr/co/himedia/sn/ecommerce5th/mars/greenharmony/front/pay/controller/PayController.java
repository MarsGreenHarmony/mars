package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.pay.controller;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlListDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyMstDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.service.BuyService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.dto.CartDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.cart.service.CartService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.service.CustomerService;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.dto.DeliveryDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.service.DeliveryServiceImpl;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.pay.service.PayupSrvc;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.Datetime;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Common;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Request;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.SKwithAES;

@Controller
@SessionAttributes("selectedItems")
public class PayController extends Common {
	
	@Autowired
	CustomerService customerService;

	@Autowired
	PayupSrvc payService;
	
	@Autowired
	DeliveryServiceImpl DeliveryService;
	
	@Autowired
	BuyService buyService;
	
	@Autowired
	CartService cartService;

	private static Logger logger = LoggerFactory.getLogger(PayController.class);
	
	///////////////////////////////////////////////////////////////////////////////////////////
	
	@RequestMapping(value = "/front/pay/complete")
	public ModelAndView complete(@RequestParam Map<String,String> param, HttpServletRequest request, @RequestParam(name = "id") String ordr_idxx){
		ModelAndView mav = new ModelAndView();
		
		
		
		mav.addObject("id", ordr_idxx);
		System.out.println("결제번호 = "+ordr_idxx);
		
		mav.setViewName("/front/pay/complete");
		
		return mav; 
	}
	
	@RequestMapping(value = "/front/pay/fail")
	public ModelAndView fail(@RequestParam Map<String,String> param){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/front/pay/fail");
		
		return mav; 
	}
	
	
	
	
	@RequestMapping(value = "/front/payup/orderProcess", method = RequestMethod.POST)
	public @ResponseBody Map<String,Object> orderProcess(HttpServletRequest request,@RequestParam Map<String, String> param, BuyDtlListDto buyDtlDtoList) throws NoSuchAlgorithmException {
		
		
		Map<String,Object> returnMap = new HashMap<>();
		
		
		ArrayList<BuyDtlDto> listBuyDtlDto = new ArrayList<BuyDtlDto>();
		
		for (int loop = 0; loop < buyDtlDtoList.getBuyDtlDtoList().size(); loop++) {
			
			// null이 아니고 구매 갯수가 1개 이상이면 구매
			if (buyDtlDtoList.getBuyDtlDtoList().get(loop).getCount() != null &&
					buyDtlDtoList.getBuyDtlDtoList().get(loop).getCount() >= 1) {
				
				//logger.debug(loop + " : seq_prd(" + buyDtlListDto.getBuyList().get(loop).getSeq_prd() + ")" + " + count(" + buyDtlListDto.getBuyList().get(loop).getCount() + ")");
				
				// 갯수가 1개 이상인 상품
				listBuyDtlDto.add(buyDtlDtoList.getBuyDtlDtoList().get(loop));
				
			}
			
		}
		
		System.out.println("컨트롤러 오긴옴");
		System.out.println(param.get("t_price"));
		System.out.println(buyDtlDtoList.getBuyDtlDtoList().toString());
		
		
		try {
			// logger.info("[" + this.getClass().getName() + ".orderProcess().REQ] " + param.toString());
			//System.out.println("PayRestController 확인");
			//System.out.println(param.toString());
			
			int length = (int) ((Math.log10(Integer.parseInt(param.get("t_price")))+1)-1);
			
			String np = "1";
			for(int i=0; i< length; i++) {
				np += "0";
			}
			
			int nps = Integer.parseInt(np);
			
			
			
			String yyyyMMddHHmmss = Datetime.getNow("yyyyMMddHHmmss");
			
			String merchantId			= "himedia";
			String key					= "ac805b30517f4fd08e3e80490e559f8e";
			String orderNumber			= "HM-" + yyyyMMddHHmmss;
			String amount				= Integer.toString((int)Math.floor(Integer.parseInt(param.get("t_price"))/nps)*100);
			String quota				= "0";								// 할부: param.get("quota")
			
			
			String item;
			if(listBuyDtlDto.size()>1) {
				item	= listBuyDtlDto.get(0).getBuy_prd_nm()+"외"+(listBuyDtlDto.size()-1)+"개 상품";
			} else {
				item = listBuyDtlDto.get(0).getBuy_prd_nm();
			}
			String itemName = item;
			
			
			String userName				=  getSession(request, "CST_NM");	// 구매자명 param.get("userName");
			String userAgent			= "WP";
			String returnUrl			= "returnUrl";
			String signature			= "";	//아래에서 생성
			String timestamp			= yyyyMMddHHmmss;	
			
			signature = payService.getSHA256Hash(merchantId + "|" + orderNumber + "|" + amount + "|" + key + "|" + timestamp);
			
			String url = "https://api.testpayup.co.kr/ap/api/payment/" + merchantId + "/order";
			Map<String,String> apiMap = new HashMap<>();
			apiMap.put("orderNumber",orderNumber);
			apiMap.put("amount",amount);
			apiMap.put("itemName",itemName);
			apiMap.put("userName",userName);
			apiMap.put("signature",signature);
			apiMap.put("timestamp",timestamp);
			if (Request.isDevice(request, "mobile")) {
				/*
				 * apiMap.put("auth_return","http://210.91.85.54:" +
				 * staticProperties.getProperty("common.server.port", "[UNDEFINED]") +
				 * "/front/payup/receiveProcess.api");
				 */
			}
			else {
				apiMap.put("userAgent",userAgent);
				apiMap.put("returnUrl",returnUrl);
			}
			
			apiMap.put("quota",quota);
			apiMap.put("bypassValue","himediaValue");
			
			returnMap = payService.JsonApi(request, url, apiMap);
			
			// logger.info("[" + this.getClass().getName() + ".orderProcess().RES] " + returnMap.toString());
			//System.out.println("API 통신 결과 확인하기 = " + returnMap.toString());
			
			int buy_t_price = 0;
			BuyDtlDto bdd = new BuyDtlDto();
			
			for(BuyDtlDto mn : listBuyDtlDto) {
				buy_t_price += mn.getCount() * mn.getPrice();
				bdd = mn;
			}
			
			
			
			
			if ("0000".equals(returnMap.get("responseCode"))) {
				// logger.info("[" + this.getClass().getName() + ".orderProcess().RES.SUCCESS] " + returnMap.toString());
				
				if (buyDtlDtoList != null) {
					
					/** 페이업 거래번호 */
					String deal_num = (String) returnMap.get("ordr_idxx");
					
					for(int i= 0; i < listBuyDtlDto.size(); i++) {
						cartService.deletePay(listBuyDtlDto.get(i).getSeq_sel(), Integer.parseInt(getSession(request, "SEQ_CRT")));
						buyService.updateCnt(listBuyDtlDto.get(i).getSeq_sel());
					}
					
					// 마스터 설정
					BuyMstDto buyMstDto = new BuyMstDto();
					buyMstDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
					buyMstDto.setBuy_info(bdd.getBuy_prd_nm() + "(수량: " + bdd.getCount() + ") 외 "+(listBuyDtlDto.size()-1)+"개");
					buyMstDto.setBuy_t_count(listBuyDtlDto.size());
					buyMstDto.setBuy_t_price(buy_t_price);
					buyMstDto.setAddress(param.get("newaddress")+param.get("newaddress_dtl"));
					buyMstDto.setPostcode(Integer.parseInt(param.get("newpostcode")));
					buyMstDto.setRegister(Integer.parseInt(getSession(request, "SEQ_CST")));
					
					
					if (!buyService.insert(buyMstDto, listBuyDtlDto, deal_num)) {
						// 구매 정보 저장 에러
						returnMap.put("responseCode", "B001");
						returnMap.put("responseMsg", "[Error]Insert Buy Information");
					}
				}
//				else {
//					// 상품 정보 부재 에러
//					returnMap.put("responseCode", "B000");
//					returnMap.put("responseMsg", "[Error]No Buy Information");
//				}
			}
			else {
				logger.error("[" + this.getClass().getName() + ".payProcess().RES.FAILURE] " + returnMap.toString());
			}
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".orderProcess()] " + e.getMessage(), e);
		}
		finally {}
	
		return returnMap;
	}
	
	@RequestMapping(value = "/front/payup/payProcess")
	public ModelAndView payProcess(@RequestParam Map<String,String> param, HttpServletRequest request, HttpServletResponse response) throws NoSuchAlgorithmException {
		
		ModelAndView mav = new ModelAndView();
		
		try {
			logger.info("[" + this.getClass().getName() + ".payProcess().REQ] " + param.toString());
			//System.out.println("화면에서 넘어온값 = " + param.toString());
			
			String res_cd		= param.get("res_cd");
			String ordr_idxx	= param.get("ordr_idxx");
			String res_msg		= param.get("res_msg");
			String enc_data		= param.get("enc_data");
			String enc_info		= param.get("enc_info");
			String tran_cd		= param.get("tran_cd");
			String buyr_mail	= param.get("buyr_mail");
			
			String url = "https://api.testpayup.co.kr/ap/api/payment/" + ordr_idxx + "/pay";
			Map<String,String> apiMap = new HashMap<>();		
			apiMap.put("res_cd",res_cd);
			apiMap.put("ordr_idxx",ordr_idxx);
			apiMap.put("res_msg",res_msg);
			apiMap.put("enc_data",enc_data);
			apiMap.put("enc_info",enc_info);
			apiMap.put("tran_cd",tran_cd);
			apiMap.put("buyr_mail",buyr_mail);
			
			Map<String,Object> apiResult = new HashMap<>();
			apiResult = payService.JsonApi(request, url, apiMap);
			
			logger.info("[" + this.getClass().getName() + ".payProcess().RES] " + apiResult.toString());
			//System.out.println("API 통신 결과 확인하기 = " + apiResult.toString());
			
			/** 페이업 거래번호 */
			String deal_num = (String) apiResult.get("transactionId");
			boolean isResult = true;
			
			if ("0000".equals(apiResult.get("responseCode"))) {
				
				// logger.info("[" + this.getClass().getName() + ".payProcess().RES.SUCCESS] " + apiResult.toString());
				isResult = buyService.update(deal_num, Integer.parseInt(getSession(request, "SEQ_CST")), "Y");
				
				/* request.setAttribute("redirect" , "/front/pay/complete"); */
				response.sendRedirect("/front/pay/complete?id=" + ordr_idxx);

			}
			else {
				logger.error("[" + this.getClass().getName() + ".payProcess().RES.FAILURE] " + apiResult.toString());
				isResult = buyService.update(deal_num, Integer.parseInt(getSession(request, "SEQ_CST")), "N");
				
				request.setAttribute("redirect"	, "/front/pay/fail");
				
			}
			
			// 결제 결과에 대한 업데이트 실패 시
			if (!isResult) {
				request.setAttribute("redirect"	, "/front/pay/fail");
			}
			
			mav.setViewName("forward:/servlet/result");
			
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".payProcess()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;	
	}
	
	
	@PostMapping("/checkout")
    public ModelAndView processCheckout(@RequestBody List<CartDto> selectedItems, HttpSession session, RedirectAttributes redirectAttributes,
    		HttpServletRequest request, HttpServletResponse response) {
		
		 ModelAndView mav = new ModelAndView("");
		
        
        mav.addObject("selectedItems",selectedItems);
        mav.setViewName("/front/pay/cstpayForm");
        
        return mav;
    }
	
	
	
	
	@RequestMapping(value = "/front/pay/payForm")
	public ModelAndView payForm(HttpServletRequest request, HttpServletResponse response, DeliveryDto deliveryDto, HttpSession session, CustomerDto customerDto) {
	    ModelAndView mav = new ModelAndView("redirect:/error.web");
	    
	    try {
	    	
	    	
			/* session.removeAttribute("selectedItems"); */
	    	
			
			
	        deliveryDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
	        
	        DeliveryDto userDelivery = DeliveryService.selectpay(deliveryDto);
	        List<DeliveryDto> _deliveryDto = DeliveryService.list(deliveryDto);
	        
	        
	        /////////////////////////////////////////////////////////////
			customerDto.setSeq_cst(Integer.parseInt(getSession(request, "SEQ_CST")));
			
			CustomerDto _customerDto = customerService.select(customerDto);
						
			// 대칭키 암호화
			String staticKey	= "I.am.the.Plutozone!.Thank.you@@@";
			SKwithAES aes		= new SKwithAES(staticKey);
			
			_customerDto.setCst_nm(aes.decode(_customerDto.getCst_nm()));
			_customerDto.setPhone(aes.decode(_customerDto.getPhone()));
			_customerDto.setCst_email(aes.decode(_customerDto.getCst_email()));
	        
	        mav.addObject("customerDto",_customerDto);
	        

	        
	        if (userDelivery != null) {
	            userDelivery.setDev_hm(aes.decode(userDelivery.getDev_hm()));
	            userDelivery.setPostcode(aes.decode(userDelivery.getPostcode()));
	            userDelivery.setAddress(aes.decode(userDelivery.getAddress()));
	            userDelivery.setAddress_dtl(aes.decode(userDelivery.getAddress_dtl()));
	            userDelivery.setPhone_nm(aes.decode(userDelivery.getPhone_nm()));
	            mav.addObject("deliveryDto", userDelivery);
	        }
	   

				for (DeliveryDto dto : _deliveryDto) {
					dto.setDev_hm(aes.decode(dto.getDev_hm()));
					dto.setPostcode(aes.decode(dto.getPostcode()));
					dto.setAddress(aes.decode(dto.getAddress()));
					dto.setAddress_dtl(aes.decode(dto.getAddress_dtl()));
					dto.setPhone_nm(aes.decode(dto.getPhone_nm()));
				}
				
				mav.addObject("_deliveryDto", _deliveryDto);
				mav.setViewName("/front/pay/cstpayForm");
	    } catch (Exception e) {
	        logger.error("[" + this.getClass().getName() + ".deliveryAndPayForm()] " + e.getMessage(), e);
	    }
	    
	    return mav;
}
	
	@RequestMapping(value = "/front/pay/deliveryProc")
	public ModelAndView writeProc(HttpServletRequest request, HttpServletResponse response, DeliveryDto deliveryDto) {

		ModelAndView mav = new ModelAndView("redirect:/error.web");

           
		try {
			DeliveryDto a=DeliveryService.selectDev(Integer.parseInt(getSession(request, "SEQ_CST")));
			
			if (request.getParameter("test").equals("test")){
				deliveryDto.setDev_state("Y");
				
				if (a != null && a.getDev_state() != null && !a.getDev_state().isEmpty()) {
					
					DeliveryService.updateDev(a.getSeq_dev());
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

			if (DeliveryService.insert(deliveryDto)) {
				request.setAttribute("redirect", "/front/pay/payForm");

			} else {
				request.setAttribute("redirect", "/front/pay/payForm");
			}

			mav.setViewName("forward:/servlet/result");

		} catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".deliveryProc()] " + e.getMessage(), e);
		} finally {
		}

		return mav;
	}
	
	@RequestMapping(value = "/front/payup/receiveProcess.api")
	public ModelAndView receiveProcess(@RequestParam Map<String,String> param, HttpServletRequest request) throws NoSuchAlgorithmException {
		
		ModelAndView mav = new ModelAndView();
		
		try {
			
			// logger.info("[" + this.getClass().getName() + ".receiveProcess().RES1st] " + param.toString());
			if ("0000".equals(param.get("res_cd"))) {
				
				String res_cd		= param.get("res_cd");
				String ordr_idxx	= param.get("ordr_idxx");
				String res_msg		= param.get("res_msg");
				String enc_data		= param.get("enc_data");
				String enc_info		= param.get("enc_info");
				String tran_cd		= param.get("tran_cd");
				String buyr_mail	= param.get("buyr_mail");
				
				String url = "https://api.testpayup.co.kr/ap/api/payment/" + ordr_idxx + "/pay";
				Map<String,String> apiMap = new HashMap<>();		
				apiMap.put("res_cd",res_cd);
				apiMap.put("ordr_idxx",ordr_idxx);
				apiMap.put("res_msg",res_msg);
				apiMap.put("enc_data",enc_data);
				apiMap.put("enc_info",enc_info);
				apiMap.put("tran_cd",tran_cd);
				apiMap.put("buyr_mail",buyr_mail);
				
				Map<String,Object> apiResult = new HashMap<>();
				apiResult = payService.JsonApi(request, url, apiMap);
				
				// logger.info("[" + this.getClass().getName() + ".receiveProcess().RES2nd] " + apiResult.toString());
				//System.out.println("API 통신 결과 확인하기 = " + apiResult.toString());
				
				/** 페이업 거래번호 */
				String deal_num = (String) apiResult.get("transactionId");
				boolean isResult = true;
				
				if ("0000".equals(apiResult.get("responseCode"))) {
					
					isResult = buyService.update(deal_num, Integer.parseInt(getSession(request, "SEQ_CST")), "Y");
					
					request.setAttribute("redirect"	, "/front/buy/list");
					
				}
				else {
					logger.error("[" + this.getClass().getName() + ".receiveProcess().RES2nd.FAILURE] " + apiResult.toString());
					isResult = buyService.update(deal_num, Integer.parseInt(getSession(request, "SEQ_CST")), "N");
					
					request.setAttribute("script"	, "alert(MSG_ERR_BUY);");
					request.setAttribute("redirect"	, "/front/buy/searchForm.web");
				}
				
				// 결제 결과에 대한 업데이트 실패 시
				if (!isResult) {
					request.setAttribute("script"	, "alert(MSG_ERR_COMMON);");
					request.setAttribute("redirect"	, "/front/buy/searchForm.web");
				}
			}
			else {
				logger.error("[" + this.getClass().getName() + ".receiveProcess().RES1st.FAILURE] " + param.toString());
				
				request.setAttribute("script"	, "alert(MSG_ERR_COMMON);");
				request.setAttribute("redirect"	, "/front/buy/searchForm.web");
			}
			
			mav.setViewName("forward:/servlet/result.web");
		}
		catch (Exception e) {
			logger.error("[" + this.getClass().getName() + ".receiveProcess()] " + e.getMessage(), e);
		}
		finally {}
		
		return mav;
	}

}
	
