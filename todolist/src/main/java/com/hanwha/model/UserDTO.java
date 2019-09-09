package com.hanwha.model;

public class UserDTO {
	private String user_id;
	private String user_pass;
	private String user_email;
	
	public UserDTO() {}
	
	public UserDTO(String user_id, String user_pass, String user_email) {
		super();
		this.user_id = user_id;
		this.user_pass = user_pass;
		this.user_email = user_email;
	}

	public String getUser_id() {
		return user_id;
	}

	public String getUser_pass() {
		return user_pass;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("UserDTO [user_id=").append(user_id).append(", user_pass=").append(user_pass)
				.append(", user_email=").append(user_email).append("]");
		return builder.toString();
	}
	
	
	
	
}
