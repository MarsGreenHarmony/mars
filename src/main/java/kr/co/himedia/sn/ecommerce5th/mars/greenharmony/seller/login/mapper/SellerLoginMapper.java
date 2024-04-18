package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.login.mapper;

import org.apache.ibatis.annotations.Mapper;
//import org.springframework.stereotype.Component;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.dto.SellerDto;

@Mapper
public interface SellerLoginMapper {
	SellerDto loginProc(String id);

}
