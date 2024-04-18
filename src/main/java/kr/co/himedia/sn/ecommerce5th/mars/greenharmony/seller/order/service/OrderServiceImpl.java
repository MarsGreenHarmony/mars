package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.common.paging.SearchCriteria;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.buy.dto.BuyDtlDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.order.dto.OrderDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.seller.order.mapper.OrderMapper;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderMapper mapper;
	
	@Override
	public int calCount(SearchCriteria cri) {
		return mapper.calCount(cri);
	}
	
	@Override
	public List<BuyDtlDto> calList(SearchCriteria cri) {
		return mapper.calList(cri);
	}
	
	@Override
	public List<BuyDtlDto> revenueList(BuyDtlDto buyDtlDto) {
		return mapper.revenueList(buyDtlDto);
	}
	
	@Override
	public List<OrderDto> searchList(OrderDto orderDto) {
		return mapper.searchList(orderDto);
	}
	@Override
	public boolean update(OrderDto orderDto) {
	    int result = mapper.update(orderDto);
	    return result == 1;
	}
	
	@Override
	public List<BuyDtlDto> select(BuyDtlDto buyDtlDto) {
		return mapper.select(buyDtlDto);
	}
}