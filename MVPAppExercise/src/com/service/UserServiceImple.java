package com.service;


import com.Dao.UserDao;
import com.Dao.UserDaoImple;
import com.dto.User;

public class UserServiceImple implements UserService {
	
	private UserDao userDao;
	 public UserServiceImple() {
		userDao=new UserDaoImple();
	}
	
	
	@Override
	public int registerUser(User user) {
				return userDao.insertUser(user);
	}

	@Override
	public boolean login(User user) {
		
		return userDao.loginhere(user);
	}

}
