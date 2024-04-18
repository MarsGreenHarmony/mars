package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.login.mapper.LoginMapper;
import kr.co.himedia.sn.ecommerce5th.mars.greenharmony.backoffice.manager.dto.ManagerDto;

@Service
public class LoginServiceimpl implements LoginService {
	
	@Autowired
	LoginMapper mapper;
	
	
	@Override
    public ManagerDto loginProc(String id) {
        return mapper.loginProc(id);
	}
}
