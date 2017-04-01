package com.howen.user.service;

import com.howen.user.dao.UserDao;
import com.howen.user.domain.User;

public class UserService {
	public User checkLogin(String name,String password){
		UserDao userDao=new UserDao();
		return userDao.checkLogin(name, password);
		
	}
	
}
