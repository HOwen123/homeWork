package com.howen.user.dao;

import com.howen.user.domain.StuInfo;

public interface IStuInfoDao {
	public StuInfo insertStuInfo();
	public StuInfo delStuInfo();
	public Boolean checkStuInfo(); 
	
}
