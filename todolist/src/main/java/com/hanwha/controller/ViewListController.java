package com.hanwha.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hanwha.model.TaskService;
import com.hanwha.model.UserDTO;

@Controller
public class ViewListController {
	@Autowired
	TaskService service;
	
	@RequestMapping("/todolist/view_todolist")
	public ModelAndView viewAllTodo( String user_id, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		UserDTO user = (UserDTO)request.getSession().getAttribute("user");
		user_id = user.getUser_id();
		mv.addObject("todolist", service.selectAllTodo(user_id));
		mv.addObject("donelist", service.selectAllDone(user_id));
		mv.setViewName("todolist/view_todolist");
		return mv;
	}
	
	@RequestMapping("/todolist/achieve_todolist")
	public ModelAndView achiveGet(String user_id, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		UserDTO user = (UserDTO)request.getSession().getAttribute("user");
		user_id = user.getUser_id();
		mv.addObject("achievelist", service.selectAllAchieve(user_id));
		mv.setViewName("todolist/achieve_todolist");
		return mv;
	}
}
