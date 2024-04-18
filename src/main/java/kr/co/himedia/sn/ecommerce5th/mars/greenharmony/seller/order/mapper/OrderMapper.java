package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.order.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.order.dto.OrderDto;


@Mapper
public interface OrderMapper {
	List<OrderDto> searchList(OrderDto orderDto);
	
	int update(OrderDto orderDto);
	
	List<BuyDtlDto> revenueList(BuyDtlDto buyDtlDto);
	
	List<BuyDtlDto> calList(SearchCriteria cri);
	int calCount(SearchCriteria cri);
	
	List<BuyDtlDto> select(BuyDtlDto buyDtlDto);
	
}
