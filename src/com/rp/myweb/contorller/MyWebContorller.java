package com.rp.myweb.contorller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rp.myweb.service.MyWebServices;
import com.rp.myweb.utils.CommonUtils;

@Controller
@RequestMapping("/MyWebContorller")
public class MyWebContorller {

	@Autowired
	@Qualifier("webServices")
	MyWebServices webService;

	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public String toSignin() {

		return "signin";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String toSiginup() {

		return "signup";
	}

	@RequestMapping(value = "*", method = RequestMethod.GET)
	public String pageOf404() {
		return "404";
	}

	@RequestMapping(value = "/passwordChecking", method = RequestMethod.POST)
	public void passwordChecking(HttpServletRequest req, HttpServletResponse respon)
			throws ServletException, IOException {

		String inputEmail = (String) req.getParameter("email");
		String inputPassword = (String) req.getParameter("password");

		System.out.println(inputEmail + inputPassword);

		respon.getWriter().print("1"); // 1 为校验正确

		if (inputPassword.equals("")) {

		} else {

		}
	}
	
	@RequestMapping("/userList")
	public String userList() {

		return "user_list";
	}

	@RequestMapping(value = "/userList", method = RequestMethod.POST)
	public void userList(HttpServletRequest req, HttpServletResponse respon) throws ServletException, IOException {

	}
	
	@RequestMapping(value = "/fileList", method = RequestMethod.POST)
	public String fileList(HttpServletRequest req, HttpServletResponse respon){
		
		return "file_list";
	}
	
	

}
