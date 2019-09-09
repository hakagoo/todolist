package com.hanwha.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hanwha.model.TaskDAO;
import com.hanwha.model.TaskDTO;
import com.hanwha.model.TaskService;

@Controller
public class AddListController {
	
	@Autowired
	TaskService service;
	
	@RequestMapping(value = "/todolist/add_todolist", method = RequestMethod.GET)
	public String taskInsertGet(TaskDTO task) {
		return "todolist/add_todolist";
	}
	
	@RequestMapping(value = "todolist/add_todolist", method = RequestMethod.POST)
	public String taskInsertPost(TaskDTO task) {
		service.insertTask(task);
		return "redirect:view_todolist";
	}
	
}
