package kr.co.himedia.sn.ecommerce5th.mars.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.test.dto.TestDto;
import kr.co.himedia.sn.ecommerce5th.mars.test.mapper.TestMapper;

@Service
public class TestServiceImpl implements TestService {
	@Autowired
	TestMapper mapper;
	
	
	@Override
	public List<TestDto> selectList() {
		return mapper.selectList();
	}

}
