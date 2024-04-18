package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util;

import java.io.PrintWriter;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Interceptor implements HandlerInterceptor {

	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
		if (!isUserAuthenticated(request)) {
	        // 인증되지 않은 경우 요청을 중단하고 로그인 페이지로 리다이렉트
			
			response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('로그인 후 이용해주세요.');window.location.href='/front/login/loginForm';</script>");
			
			/*
			 * PrintWriter out = response.getWriter();
			 * out.println("<script>alert('로그인이 필요합니다.');</script>");
			 * 
			 * response.sendRedirect("/front/login/loginForm");
			 */
	        return false; // 요청 중단
	    }

	    return true; // true를 반환하면 요청을 계속 진행
    }
	
	private boolean isUserAuthenticated(HttpServletRequest request) {
	    // 사용자의 인증 여부를 확인하는 로직
	    // 예를 들어, 세션을 확인하거나 토큰을 검증할 수 있습니다.
	    // 여기에서는 단순히 세션에 사용자 정보가 있는지 확인하는 예제를 제공합니다.
	    HttpSession session = request.getSession(true);
	    return session != null && session.getAttribute("ID") != null;
	}

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
        // 핸들러 실행 후에 수행할 작업
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
            Exception ex) throws Exception {
        // 뷰가 완전히 처리된 후에 수행할 작업
    	if (ex != null) {
            // 예외가 발생한 경우 로깅
        }
    	
    }
	
}
