package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security;



import jakarta.servlet.http.HttpServletRequest;

/**
 * @version 1.0.0
 * @author pluto@himedia.co.kr
 * 
 * @since 2023-12-19
 * <p>DESCRIPTION:</p>
 * <p>IMPORTANT:</p>
 */
public class Common {
	
	/**
	 * @param request [요청 서블릿]
	 * @param key [키]
	 * @return String
	 * 
	 * @since 2023-12-19
	 * <p>DESCRIPTION:</p>
	 * <p>IMPORTANT:</p>
	 * <p>EXAMPLE:</p>
	 */
	public static String getSession(HttpServletRequest request, String key) throws Exception {
		return Request.getSession(request, key, "", false);
	}

}
