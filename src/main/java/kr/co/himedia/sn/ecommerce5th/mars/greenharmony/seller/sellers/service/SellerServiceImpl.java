package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.dto.SellerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.mapper.SellerMapper;

@Service
public class SellerServiceImpl implements SellerService {
	
	@Autowired
	SellerMapper mapper;
	
	@Override
	public boolean insert(SellerDto sellerDto) {
		sellerDto.setSeq_sll(mapper.sequence());
		sellerDto.setTc_state(3);
		
		int result = mapper.insert(sellerDto);
		
		if (result == 1) return true;
		else {
			return false;
		}
		
	}
	// 아이디 중복체크
	@Override
	public int idCheck(String id) {
		int cnt = mapper.idCheck(id);
		System.out.println("cnt: " + cnt);
		return cnt;
	}	

}
