package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.member.mapper.MemberMapper;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.sellers.dto.SellerDto;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper mapper;
	
	@Override
	public List<CustomerDto>frontmember(){
		return mapper.frontmember();
	}
	
	@Override
	public List<SellerDto> sellermember(){
		return mapper.sellermember();
	}
	
	

}
