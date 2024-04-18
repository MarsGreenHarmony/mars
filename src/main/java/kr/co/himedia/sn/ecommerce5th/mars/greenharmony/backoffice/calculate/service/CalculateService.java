package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.calculate.service;

import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;


public interface CalculateService {
	
	List<BuyDtlDto> list();
	
	BuyDtlDto listing(BuyDtlDto buyDtlDto);
	
	boolean update(BuyDtlDto buyDtlDto);

}
