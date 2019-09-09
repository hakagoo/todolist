package com.hanwha.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hanwha.model.UserDAO;
import com.hanwha.model.UserDTO;

@Controller
public class SignupController {

	@Autowired 
	UserDAO dao;
	
	@RequestMapping(value = "user/signup", method = RequestMethod.GET)
	public String insertUserGet() {
		return "user/signup";
	}
	
	@RequestMapping(value = "user/signup", method = RequestMethod.POST)
	public String insertUserPost(UserDTO user) {
		dao.insertUser(user);
		return "redirect:login";
	}
	
}
