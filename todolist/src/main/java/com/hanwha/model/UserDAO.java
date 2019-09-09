package com.hanwha.model;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {

	@Autowired
	SqlSession session;
	String ns = "com.hanwha.user.";
	
	public int insertUser(UserDTO user) {
		return session.insert(ns + "insert", user);
	}
	
	public UserDTO loginUser(UserDTO user) {
		return session.selectOne(ns + "login", user);
	}
	
}
