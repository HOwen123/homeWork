package com.howen.user.action;

import com.howen.user.dao.UserDao;
import com.howen.user.domain.Register;
import com.howen.user.domain.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	private User user = new User();
	
	public String registerUser(){
		String name=user.getName();
		String password = user.getPassword();
		int age = user.getAge();
		String email=user.getEmail();
		Register register = new Register();
		register.setName(name);
		register.setPassword(password);
		register.setAge(String.valueOf(age));
		register.setEmail(email);
		if (register.isValidate()) {
			User user = new User();
			user.setName(name);
			user.setPassword(password);
			user.setAge(age);
			user.setEmail(email);
		UserDao dao = new UserDao();
		dao.addUser(user);
		return SUCCESS;
		}else {
			register.isValidate();
			return ERROR;
		}
		
		
	}
	
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return this.user;
	}
	
}
