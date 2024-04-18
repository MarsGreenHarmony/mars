package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.customer.dto.CustomerDto;

public interface CustomerService {

	boolean insert(CustomerDto customerDto);
	public int idCheck(String id);
	public boolean update(CustomerDto customerDto);
	public CustomerDto select(CustomerDto customerDto) ;
	public boolean deletecst(CustomerDto customerDto);
 }





