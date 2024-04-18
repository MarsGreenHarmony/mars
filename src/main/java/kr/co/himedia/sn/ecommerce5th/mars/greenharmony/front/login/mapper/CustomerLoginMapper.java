package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.login.mapper;

//import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;
//import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.dto.DeliveryDto;


@Mapper
public interface CustomerLoginMapper {
	CustomerDto loginProc(String id);
	CustomerDto findPw(CustomerDto customerDto);
	CustomerDto findId(CustomerDto customerDto);
	int updatePw(CustomerDto customerDto);
	}
