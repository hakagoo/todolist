package com.hanwha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hanwha.model.UserDAO;
import com.hanwha.model.UserDTO;

@Controller
public class LoginController {
	
	@Autowired
	UserDAO dao;
	
	//로그인 화면
	@RequestMapping(value = "/user/login", method = RequestMethod.GET)
	public String loginView() {
		return "user/login";
	}
	
	//로그아웃
	@RequestMapping(value = "/user/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "user/logoutresult";
	}
	
	//로그인처리
	@RequestMapping(value = "/user/login", method = RequestMethod.POST)
	public String loginUser(UserDTO user, HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserDTO login = dao.loginUser(user);
		
		if(login == null) {
			session.setAttribute("user", null);
			return "user/loginfail";
		} else {
			session.setAttribute("user", login);
			return "user/loginresult";
		}
		
	}
	
	
	
}
