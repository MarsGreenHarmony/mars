package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.login.service;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.login.mapper.SellerLoginMapper;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.dto.SellerDto;

@Service
public class SellerLoginServiceImpl implements SellerLoginService {
	@Autowired
	SellerLoginMapper mapper; 
	
	
	@Override
	public SellerDto loginProc(String id) {
		return mapper.loginProc(id);
	}
}
