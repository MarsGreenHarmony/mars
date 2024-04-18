package kr.co.himedia.sn.ecommerce5th.mars.greenharmony.front.pay.service;


import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.http.HttpServletRequest;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

@Component
public class PayupSrvc {
	
	/** Logger */
	private static Logger logger = LoggerFactory.getLogger(PayupSrvc.class);
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> JsonApi(HttpServletRequest requests, String url, Map<String,String> map) {
		
		Map<String,Object> returnMap = new HashMap<>();
		
		OkHttpClient client = new OkHttpClient();
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		String jsonBody = "";
		try {
			jsonBody = objectMapper.writeValueAsString(map);
		}
		catch (JsonProcessingException e) {
			logger.error("[" + this.getClass().getName() + ".JsonApi().1st] " + e.getMessage(), e);
		}
		
		MediaType JSON = MediaType.get("application/json; charset=utf-8");
		RequestBody requestBody = RequestBody.create(jsonBody, JSON);
		
		Request request = null;
		
		String userAgent = "PC";
		
		if (kr.co.himedia.sn.ecommerce5th.mars.greenharmony.util.security.Request.isDevice(requests, "mobile")) {
			
			if (requests.getHeader("User-Agent").indexOf("iPhone") > -1) {
				userAgent = "iPhone";
			}
			else if (requests.getHeader("User-Agent").indexOf("Android") > -1) {
				userAgent = "Linux Android";
			}
			
			request = new Request.Builder()
					.url(url)
					.addHeader("User-Agent", userAgent)
					.post(requestBody)
					.build();
		}
		else {
			request = new Request.Builder()
					.url(url)
					.post(requestBody)
					.build();
		}
		
		// logger.info("[" + this.getClass().getName() + ".JsonApi()] userAgent=" + userAgent);
		
		try {
			Response response = client.newCall(request).execute();
			returnMap = objectMapper.readValue(response.body().string(), Map.class);
		}
		catch (IOException e) {
				logger.error("[" + this.getClass().getName() + ".JsonApi().2nd] " + e.getMessage(), e);
		}
		
		return returnMap;
	}
	
	public String getSHA256Hash(String input) throws NoSuchAlgorithmException {
		
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		
		byte[] bytes = md.digest(input.getBytes(StandardCharsets.UTF_8));
		
		StringBuilder hexStringBuilder = new StringBuilder();
		
		for (byte b : bytes) {
			String hex = String.format("%02x", b);
			hexStringBuilder.append(hex);
		}
		
		return hexStringBuilder.toString();
	}
}
