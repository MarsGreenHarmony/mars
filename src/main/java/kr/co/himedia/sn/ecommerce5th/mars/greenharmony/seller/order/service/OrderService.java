package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.order.service;

import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.order.dto.OrderDto;

public interface OrderService {
	List<OrderDto> searchList(OrderDto orderDto);
	public boolean update(OrderDto orderDto);
	
	
	List<BuyDtlDto> revenueList(BuyDtlDto buyDtlDto);
	List<BuyDtlDto> calList(SearchCriteria cri);
	int calCount(SearchCriteria cri);
	
	List<BuyDtlDto> select(BuyDtlDto buyDtlDto);
}
