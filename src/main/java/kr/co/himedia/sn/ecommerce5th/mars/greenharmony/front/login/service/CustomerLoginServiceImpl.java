package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.login.service;

//import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.login.mapper.CustomerLoginMapper;


@Service
public class CustomerLoginServiceImpl implements CustomerLoginService {
	
    @Autowired
    CustomerLoginMapper mapper;
    
    @Override
    public CustomerDto loginProc(String id) {
        // mapper 객체의 메서드를 호출하고 그 결과를 반환
        return mapper.loginProc(id);
    }
    
    @Override
    public CustomerDto findId(CustomerDto customerDto) {
    	return mapper.findId(customerDto);
    }

	@Override
	public CustomerDto findPw(CustomerDto customerDto) {
		// TODO Auto-generated method stub
		return mapper.findPw(customerDto);		
	}
	
	@Override
	public boolean updatePw(CustomerDto customerDto) {
		
		int result = mapper.updatePw(customerDto);
		
		if (result == 1) 
			
			return true;
		else {
			return false;
		}
	}

}