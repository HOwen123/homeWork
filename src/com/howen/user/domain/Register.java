package com.howen.user.domain;

import java.util.HashMap;
import java.util.Map;

import com.howen.user.dao.UserDao;

public class Register {
	private String name;
	private String password;
	private String age;
	private String email;
	private Map<String, String> errors=null;
	
	public Register(){
		this.name="";
		this.age="";
		this.email="";
		this.password="";
		this.errors=new HashMap<String,String>();
		
	}
	
	public boolean isExsit(String name){
		UserDao userDao = new UserDao();
		if (userDao.checkname(name)!=null) {
			return true;
		}
		return false;
	}
	
	
	public boolean isValidate(){
		boolean flag=true;
		System.out.println("用户名已经存在"+isExsit(name));
		if(!this.email.matches("\\w+@\\w+\\.\\w.?\\w*")){
			flag=false;
			this.email="";
			this.errors.put("erremail", "输入的email地址不合法");
		}if(!this.name.matches("([a-z]|[A-Z]|[0-9]|[\\u4e00-\\u9fa5])+")||isExsit(name)){
			flag=false;
			this.name="";
			this.errors.put("errname", "用户名不合法或已存在。");
		}if(!this.password.matches("\\w{6,15}")){
			flag=false;
			this.password="";
			this.errors.put("errpassword", "密码为6到15位。");
		}if(!this.age.matches("\\d+")){
			flag=false;
			this.age="";
			this.errors.put("errage", "年龄只能为数字");
		}
		return flag;
	}
	
	public String getErrorMsg(String key){
		String value=this.errors.get(key);
		return value==null?"":value;
		
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	
}
