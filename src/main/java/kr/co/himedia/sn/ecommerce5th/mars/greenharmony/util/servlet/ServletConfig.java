package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.servlet;

import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ServletConfig {
	
	@Bean
	public ServletRegistrationBean<Result> getServletRegistrationBean() {
		ServletRegistrationBean<Result> registrationBean = new ServletRegistrationBean<>(new Result());
		registrationBean.addUrlMappings("/servlet/result");
		// registrationBean.addInitParameter("isAbsolutePath", "true");
		// registrationBean.addInitParameter("propertyPath", "src/main/resources/public/rd/");
		return registrationBean;
	}
}
