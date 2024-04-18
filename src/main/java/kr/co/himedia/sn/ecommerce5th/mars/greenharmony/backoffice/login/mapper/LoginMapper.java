package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.manager.dto.ManagerDto;

@Mapper
public interface LoginMapper {
	
	ManagerDto loginProc(String id);


}
