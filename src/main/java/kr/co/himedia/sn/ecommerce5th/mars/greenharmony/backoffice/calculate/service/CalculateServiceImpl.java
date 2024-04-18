package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.calculate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.calculate.mapper.CalculateMapper;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;

@Service
public class CalculateServiceImpl implements CalculateService  {
	
	@Autowired
	CalculateMapper mapper;
	
	@Override
    public List<BuyDtlDto> list() {
        return mapper.list();
    }
	
	 @Override
	    public BuyDtlDto listing(BuyDtlDto buyDtlDto) {
	        return mapper.listing(buyDtlDto);
	    }
	 
	 @Override
		public boolean update(BuyDtlDto buyDtlDto) {
			int result = mapper.update(buyDtlDto);
			return result == 1;
	 }
}