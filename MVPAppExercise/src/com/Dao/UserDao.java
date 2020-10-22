package com.Dao;

import com.dto.User;

public interface UserDao {
	int insertUser(User user);
	boolean loginhere(User user);
}
