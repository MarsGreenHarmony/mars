package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.calculate.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;

@Mapper
public interface CalculateMapper {
	
	List<BuyDtlDto> list();
	
	BuyDtlDto listing(BuyDtlDto buyDtlDto);

	int update(BuyDtlDto buyDtlDto);

}
