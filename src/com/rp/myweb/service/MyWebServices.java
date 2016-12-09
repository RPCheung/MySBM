package com.rp.myweb.service;

import java.util.List;
import java.util.Map;


public interface MyWebServices {
	
	public boolean addUser(String name, String id, String sex);
	public boolean deleteUser();
	public boolean editUser();
	public List<Map<String, Object>> queryUser(Map<String, Object> parameters);
	public boolean checkPassword (String name,String password);
	public List<Map<String, Object>> queryUser();
	

}
