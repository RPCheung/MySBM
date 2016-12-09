package com.rp.myweb.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rp.myweb.beans.UserInfo;
import com.rp.myweb.mapper.MyWebSQLMapperInterface;


@Service("webServices")
public class ImplMyWebService implements MyWebServices{
	
	@Autowired
	MyWebSQLMapperInterface interfaces ;

	@Override
	@Transactional(propagation =Propagation.REQUIRED,isolation = Isolation.SERIALIZABLE)
	public boolean addUser(String name, String id, String sex) {
		// TODO Auto-generated method stub
		return  false;
	}
	
	 

	@Override
	@Transactional(propagation =Propagation.REQUIRED,isolation = Isolation.SERIALIZABLE)
	public boolean deleteUser() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	@Transactional(propagation =Propagation.REQUIRED,isolation = Isolation.SERIALIZABLE)
	public boolean editUser() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Map<String, Object>> queryUser(Map<String, Object> parameters) {
		
	
		return interfaces.queryUserList(parameters);
		
	}



	@Override
	public boolean checkPassword(String name, String password) {
		// TODO Auto-generated method stub
		return false;
	}



	@Override
	public List<Map<String, Object>> queryUser() {
		
		return interfaces.queryUser();
	}

}
