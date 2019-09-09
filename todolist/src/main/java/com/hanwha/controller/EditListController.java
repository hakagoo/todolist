package com.hanwha.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hanwha.model.TaskDTO;
import com.hanwha.model.TaskService;

@Controller
public class EditListController {
	@Autowired
	TaskService service;
	
	@RequestMapping(value = "/todolist/edit_todolist", method = RequestMethod.GET)
	public ModelAndView editTaskGet(int task_id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("todo", service.selectById(task_id));
		mv.setViewName("todolist/edit_todolist");
		return mv;
	}

	@RequestMapping(value = "/todolist/edit_todolist", method = RequestMethod.POST)
	public ModelAndView editTaskPost(TaskDTO task) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("todo", service.updateTask(task));
		mv.setViewName("redirect:view_todolist");
		return mv;
	}
	
	@RequestMapping(value = "/todolist/send_achieve", method = RequestMethod.GET)
	public ModelAndView sendAchieve(TaskDTO task) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("todo", service.sendAchieve(task));
		mv.setViewName("redirect:achieve_todolist");
		return mv;
	}

	@RequestMapping(value = "/todolist/send_done", method = RequestMethod.GET)
	public ModelAndView sendDone(TaskDTO task, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", session.getAttribute("user"));
		mv.addObject("todo", service.sendDone(task));
		mv.setViewName("redirect:view_todolist");
		return mv;
	}

	@RequestMapping(value = "/todolist/send_todo", method = RequestMethod.GET)
	public ModelAndView sendTodo(TaskDTO task) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("todo", service.sendTodo(task));
		mv.setViewName("redirect:view_todolist");
		return mv;
	}

	@RequestMapping(value = "/todolist/back_done", method = RequestMethod.GET)
	public ModelAndView backDone(TaskDTO task) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("todo", service.backDone(task));
		mv.setViewName("redirect:view_todolist");
		return mv;
	}
	
}
