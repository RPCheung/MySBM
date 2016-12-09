package com.rp.hessian;

import java.util.Date;

public class HessianServletDemo implements HessianInterface{
	Date d;
	public HessianServletDemo() {
		System.out.println("create.........");
	}

	@Override
	public void testHessain() {
		System.out.println("This is Hessian Test................");
	}

	@Override
	public <T> T testHessianSerializer() {
		return null;
	}

}
