package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.dto.DeliveryDto;

@Mapper
public interface DeliveryMapper {
	public DeliveryDto select(DeliveryDto deliverDto);
	int insert(DeliveryDto DeliveryDto);
	

	int sequence();
	
	List<DeliveryDto> list(DeliveryDto deliveryDto);
	
	int update(DeliveryDto deliveryDto);
	
	int delete(DeliveryDto deliveryDto);
	
	int updateDev(int deliveryDto);
	
	DeliveryDto selectDev(int deliverDto);
	
	DeliveryDto selectpay(DeliveryDto deliveryDto);
}