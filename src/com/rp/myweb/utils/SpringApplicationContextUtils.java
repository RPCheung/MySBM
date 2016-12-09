package com.rp.myweb.utils;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

@Component
public class SpringApplicationContextUtils implements ApplicationContextAware {

	private static ApplicationContext cxt;

	private SpringApplicationContextUtils() {
		System.out.println("SpringApplicationContextUtils..................................");
	}

	@Override
	public void setApplicationContext(ApplicationContext arg0) throws BeansException {

		SpringApplicationContextUtils.cxt = arg0;
		System.out.println(SpringApplicationContextUtils.cxt);
	}

	public static ApplicationContext getApplicationContext() {
		
		return SpringApplicationContextUtils.cxt;
	}
}
