package com.hanwha.model;

import java.sql.Date;

public class TaskDTO {
	private int task_id;
	private String user_id;
	private String todo;
	private String reason;
	private int priority;
	private Date res_date;
	private Date due_date;
	private Date updated_at;
	private Date deleted_at;
	private int is_done;
	
	public TaskDTO() {}

	public TaskDTO(int task_id, String user_id, String todo, String reason, int priority, Date res_date,
			Date due_date, Date updated_at, Date deleted_at, int is_done) {
		super();
		this.task_id = task_id;
		this.user_id = user_id;
		this.todo = todo;
		this.reason = reason;
		this.priority = priority;
		this.res_date = res_date;
		this.due_date = due_date;
		this.updated_at = updated_at;
		this.deleted_at = deleted_at;
		this.is_done = is_done;
	}

	public int getTask_id() {
		return task_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public String getTodo() {
		return todo;
	}

	public String getReason() {
		return reason;
	}

	public int getPriority() {
		return priority;
	}

	public Date getRes_date() {
		return res_date;
	}

	public Date getDue_date() {
		return due_date;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public Date getDeleted_at() {
		return deleted_at;
	}

	public int getIs_done() {
		return is_done;
	}

	public void setTask_id(int task_id) {
		this.task_id = task_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public void setTodo(String todo) {
		this.todo = todo;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public void setRes_date(Date res_date) {
		this.res_date = res_date;
	}

	public void setDue_date(Date due_date) {
		this.due_date = due_date;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}

	public void setDeleted_at(Date deleted_at) {
		this.deleted_at = deleted_at;
	}

	public void setIs_done(int is_done) {
		this.is_done = is_done;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("TaskDTO [task_id=").append(task_id).append(", user_id=").append(user_id)
				.append(", todo=").append(todo).append(", reason=").append(reason).append(", priority=")
				.append(priority).append(", res_date=").append(res_date).append(", due_date=").append(due_date)
				.append(", updated_at=").append(updated_at).append(", deleted_at=").append(deleted_at)
				.append(", is_done=").append(is_done).append("]");
		return builder.toString();
	}
	
	
}
