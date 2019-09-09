package com.hanwha.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TaskService {
	
	@Autowired
	TaskDAO dao;
	
	public int insertTask(TaskDTO task) {
		return dao.insertTask(task);
	}

	public int updateTask(TaskDTO task) {
		return dao.updateTask(task);
	}

	public int sendAchieve(TaskDTO task) {
		return dao.sendAchieve(task);
	}

	public int sendDone(TaskDTO task) {
		return dao.sendDone(task);
	}

	public int backDone(TaskDTO task) {
		return dao.backDone(task);
	}

	public int sendTodo(TaskDTO task) {
		return dao.sendTodo(task);
	}

	public int deleteTask(int task_id) {
		return dao.deleteTask(task_id);
	}
	
	
	
	public List<TaskDTO> selectAllTodo(String user_id) {
		return dao.selectAllTodo(user_id);
	}
	
	public List<TaskDTO> selectAllDone(String user_id) {
		return dao.selectAllDone(user_id);
	}
	
	public TaskDTO selectById(int task_id) {
		return dao.selectById(task_id);
	}
	
	public List<TaskDTO> selectAllAchieve(String user_id){
		return dao.selectAllAchieve(user_id);
	}
}
