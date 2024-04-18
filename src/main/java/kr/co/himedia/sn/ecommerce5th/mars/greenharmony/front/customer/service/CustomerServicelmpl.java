package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.mapper.CustomerMapper;

@Service
public class CustomerServicelmpl implements CustomerService {
	@Autowired
	CustomerMapper mapper;
	
	@Override
	public int idCheck(String id) {
		int cnt = mapper.idCheck(id);
		System.out.println("cnt: " + cnt);
		return cnt;
	}	
	
	@Override
	public boolean insert(CustomerDto customerDto) {
		
		customerDto.setSeq_cst(mapper.sequence());
		
		int result = mapper.insert(customerDto);
		
		if (result == 1) return true;
		else {
			return false;
		}
	}
	@Override
public boolean update(CustomerDto customerDto) {
		
		int result = mapper.update(customerDto);
		
		if (result == 1) return true;
		else {
			
			return false;
		}
	}
	@Override
	public CustomerDto select(CustomerDto customerDto) {
		return mapper.select(customerDto);
	}
	
	
	@Override
	public boolean deletecst(CustomerDto customerDto) {
	
	int result = mapper.deletecst(customerDto);
	
	if (result == 1)
		return true;
	else {
		
		return false;
	}
}
}
	