package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;

@Mapper
public interface CustomerMapper {

	int insert(CustomerDto customerDto);
	
	int sequence();
	
	// 아이디 중복체크
	int idCheck(String id);

	int update(CustomerDto customerDto) ;
	
	public CustomerDto select(CustomerDto customerDto) ;
	
	int deletecst(CustomerDto customerDto);
}