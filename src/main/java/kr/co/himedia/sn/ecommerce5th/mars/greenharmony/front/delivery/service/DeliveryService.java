package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.service;

import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.dto.DeliveryDto;

public interface DeliveryService {

	public DeliveryDto select(DeliveryDto DeliveryDto);
	boolean insert(DeliveryDto DeliveryDto);
	List<DeliveryDto> list(DeliveryDto deliveryDto);
	public boolean update(DeliveryDto deliveryDto);
	public boolean delete(DeliveryDto deliveryDto);
	public boolean updateDev(int deliveryDto);
	public DeliveryDto selectDev(int DeliveryDto);
	public DeliveryDto selectpay(DeliveryDto deliveryDto);
	
}
