package com.hanwha.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hanwha.model.TaskDAO;
import com.hanwha.model.TaskDTO;
import com.hanwha.model.TaskService;

@Controller
public class DeleteListController {
	
	@Autowired
	TaskService service;
	
	@RequestMapping(value = "/todolist/delete_todolist", method = RequestMethod.GET)
	public String taskDeleteGet(int task_id) {
		service.deleteTask(task_id);
		return "redirect:achieve_todolist";
	}
	
}
