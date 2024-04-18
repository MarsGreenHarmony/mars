package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.dto.SellerDto;

@Mapper
public interface SellerMapper {
	
	int insert(SellerDto sellerDto);
	
	int sequence();
	
	// 아이디 중복체크
		int idCheck(String id);

}
