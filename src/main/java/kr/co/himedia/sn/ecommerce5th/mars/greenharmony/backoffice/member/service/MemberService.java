package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.member.service;

import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.dto.SellerDto;

public interface MemberService {
	
	List<CustomerDto> frontmember();
	List<SellerDto> sellermember();

}
