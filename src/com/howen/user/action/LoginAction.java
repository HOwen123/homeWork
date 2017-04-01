package com.howen.user.action;


import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import com.howen.user.dao.UserDao;
import com.howen.user.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements ModelDriven<User>{
	private User user=new User();
	private Map<String, Object> session;
	public String checkLogin(){
		session = ActionContext.getContext().getSession();
		session.put("name",user.getName());
		String name = user.getName();
		String password = user.getPassword();
		UserDao userDao = new UserDao();
		user = userDao.checkLogin(name, password);
		if (user!=null) {
			return "success";
		}else {
			return ERROR;
		}
		
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return this.user;
	}

}
