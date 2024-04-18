package kr.co.himedia.sn.ecommerce5th.mars.test.controller;

//import java.util.List;
//import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;

//import kr.co.himedia.sn.ecommerce5th.mars.test.dto.TestDto;
import kr.co.himedia.sn.ecommerce5th.mars.test.service.TestServiceImpl;

@Controller
public class TestController {
	@Autowired
	TestServiceImpl service;
	
	

}
