package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.member.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.dto.SellerDto;


@Mapper
public interface MemberMapper {
	
	List<CustomerDto> frontmember();
	List<SellerDto> sellermember();
}
