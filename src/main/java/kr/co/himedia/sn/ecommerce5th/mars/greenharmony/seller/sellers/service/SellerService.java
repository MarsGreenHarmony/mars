package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.dto.SellerDto;

public interface SellerService {
	
	boolean insert(SellerDto sellerDto);
	
	public int idCheck(String id);
	
	
}
