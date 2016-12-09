package com.rp.myweb.utils;
import java.util.Hashtable;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class CommonUtils {
	
	public static Map<String, Object> getPageRequestParametersMap(HttpServletRequest request) {

		Map<String, String[]> map = request.getParameterMap();
		Hashtable<String, Object> paramMap = new Hashtable<>();
		
		for (String key : map.keySet()) {
			String[] strs = map.get(key);
			if(strs.length != 0) paramMap.put(key, strs[0]);
		}
		return paramMap;
	}
	
	
	
}
