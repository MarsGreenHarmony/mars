package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.pay.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.pay.dto.PayDto;

@Mapper
public interface PayMapper {
	 int insert(PayDto payDto);
	 int sequence() ;
	 PayDto select(PayDto payDto);
	 int update(PayDto payDto);
}