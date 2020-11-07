package com.cdac.service;

import java.util.List;


import com.cdac.dto.User;

public interface UserService {
	public void addUser(User user);
	boolean findUser(User user);
	boolean verifymail(User user);
	String forgotPassword(String userName);
	
}
