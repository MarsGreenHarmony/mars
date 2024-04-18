package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.dto.DeliveryDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.delivery.mapper.DeliveryMapper;

@Service
public class DeliveryServiceImpl implements DeliveryService{
	
	@Autowired
	DeliveryMapper mapper;

	
	
	@Override
	public boolean insert(DeliveryDto DeliveryDto) {
		
		DeliveryDto.setSeq_dev(mapper.sequence());
		
		int result = mapper.insert(DeliveryDto);
		
		if (result == 1) return true;
		else {
			return false;
		}
	}

@Override
public DeliveryDto select(DeliveryDto DeliveryDto) {
	return mapper.select(DeliveryDto);
}

@Override
public List<DeliveryDto> list(DeliveryDto deliveryDto) {
	// TODO Auto-generated method stub
	return mapper.list(deliveryDto);
}

@Override
public boolean update(DeliveryDto deliveryDto) {
		
		int result = mapper.update(deliveryDto);
		
		if (result == 1) return true;
		else {
			
			return false;
		}
}
@Override
public boolean delete(DeliveryDto deliveryDto) {
	

	boolean result = false;
			
	if(mapper.delete(deliveryDto)==1) {
		System.out.println("삭제 성공");
		result=true;
	}
	else {
		System.out.println("삭제 실패");
	}
	return result;
}

@Override
public boolean updateDev(int deliveryDto) {
		
		int result = mapper.updateDev(deliveryDto);
		
		if (result == 1) return true;
		else {
			
			return false;
		}
}
@Override
public DeliveryDto selectDev(int DeliveryDto) {
	return mapper.selectDev(DeliveryDto);
}

@Override
public DeliveryDto selectpay(DeliveryDto deliveryDto) {
	return mapper.selectpay(deliveryDto);
}
}