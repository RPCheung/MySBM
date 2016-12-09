package com.rp.myweb.beans;

public class UserInfo {
	
	

	public UserInfo(String name, String id, String sex) {
		this.name = name;
		this.id = id;
		this.sex = sex;
	}
	
	public UserInfo() {
		
	}

	String name;

	public void setName(String name) {
		this.name = name;
	}

	public void setId(String id) {
		this.id = id;
	}

	String id;

	public String getName() {
		return name;
	}

	public String getId() {
		return id;
	}

	String sex;

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

}
