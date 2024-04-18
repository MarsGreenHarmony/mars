package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.login.service;


//import java.util.List;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;

public interface CustomerLoginService {
    CustomerDto loginProc(String id);
    
public CustomerDto findPw(CustomerDto customerDto);

public CustomerDto findId(CustomerDto customerDto);

public boolean updatePw(CustomerDto customerDto);
}