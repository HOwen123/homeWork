package com.howen.user.action;

import com.howen.user.dao.StuInfoDao;
import com.howen.user.domain.StuInfo;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class StuInfoAction extends ActionSupport implements ModelDriven<StuInfo>{
	private StuInfo stuInfo = new StuInfo();
	
	public String addStuInfo(){
		
//		String stuname=stuInfo.getStuname();
//		int age = stuInfo.getAge();
//		String sex = stuInfo.getSex();
//		String nation = stuInfo.getNation();
//		String address = stuInfo.getAddress();
//		String hobby = stuInfo.getHobby();
		
		StuInfoDao stuInfoDao = new StuInfoDao();
		stuInfoDao.addStuInfo(stuInfo);
		return SUCCESS;
	}
	
	@Override
	public StuInfo getModel() {
		// TODO Auto-generated method stub
		return this.stuInfo;
	}
	
	
}
