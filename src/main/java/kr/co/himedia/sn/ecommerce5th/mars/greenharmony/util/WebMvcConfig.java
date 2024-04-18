package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

	 @Override
	    public void addInterceptors(InterceptorRegistry registry) {
	        registry.addInterceptor(new Interceptor())
	                .addPathPatterns("/front/**")
	                .excludePathPatterns(
	                        "/front/main/**",
	                        "/front/buy/list/**",
	                        "/front/buy/detail/**",
							/*
							 * "/front/main/main", "/front/main/about", "/front/main/blog",
							 * "/front/main/blogdetail",
							 */
	                        "/front/login/**",
	                        "/front/customer/writeForm",
	                        "/front/customer/writeProc",
	                        
	                        
	                        "/front/login/loginForm"
	                        
	                        
	                		);
	    }
	
}
