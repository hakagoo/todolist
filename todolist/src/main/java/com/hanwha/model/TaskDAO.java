package com.hanwha.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TaskDAO {
	
	@Autowired
	SqlSession session;
	String ns = "com.hanwha.task.";
	
	public int insertTask(TaskDTO task) {
		return session.insert(ns + "insert", task);
	}
	
	public int updateTask(TaskDTO task) {
		return session.update(ns + "update", task);
	}
	
	public int sendAchieve(TaskDTO task) {
		return session.update(ns + "sendachieve", task);
	}

	public int sendDone(TaskDTO task) {
		return session.update(ns + "senddone", task);
	}

	public int sendTodo(TaskDTO task) {
		return session.update(ns + "sendtodo", task);
	}

	public int backDone(TaskDTO task) {
		return session.update(ns + "backdone", task);
	}

	public int deleteTask(int task_id) {
		return session.delete(ns + "delete", task_id);
	}
	
	public List<TaskDTO> selectAllTodo(String user_id){
		return session.selectList(ns + "selectalltodo", user_id);
	}
	
	public List<TaskDTO> selectAllDone(String user_id){
		return session.selectList(ns + "selectalldone", user_id);
	}

	public List<TaskDTO> selectAllAchieve(String user_id){
		return session.selectList(ns + "selectallachieve", user_id);
	}
	
	public TaskDTO selectById(int task_id) {
		return session.selectOne(ns + "selectbyid", task_id);
	}
	
}
