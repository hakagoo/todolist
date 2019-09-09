package com.hanwha.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hanwha.model.TaskService;

@Controller
public class DetailListController {
	
	@Autowired
	TaskService service;
	
	@RequestMapping("/todolist/detail_todolist")
	public ModelAndView detailTodo(int task_id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("todo", service.selectById(task_id));
		mv.setViewName("todolist/detail_todolist");
		return mv;
	}

	@RequestMapping("/todolist/detail_achieve")
	public ModelAndView detailAchieve(int task_id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("todo", service.selectById(task_id));
		mv.setViewName("todolist/detail_achieve");
		return mv;
	}
	
	
}
