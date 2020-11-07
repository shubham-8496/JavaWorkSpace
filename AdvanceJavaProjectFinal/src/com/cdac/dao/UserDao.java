package com.cdac.dao;

import java.util.List;


import com.cdac.dto.User;

public interface UserDao {
	void insertUser(User user);
	boolean checkUser(User user);
	boolean checkEmail(User user);
	String forgotPassword(String userName);
	
}
