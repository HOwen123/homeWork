package com.howen.user.tools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.howen.user.domain.StuInfo;
import com.howen.user.util.DatabaseConnection;

public class PageTool {
	
	//获取总共数据的数量
	public int getCount(){
		int count=0;
		
		String sql = "select count(*) from stu_info";
		try {
			DatabaseConnection connection = new DatabaseConnection();
			Connection conn = connection.getConnection();
		
			PreparedStatement pStatement = conn.prepareStatement(sql);
			ResultSet rSet = pStatement.executeQuery();
			if (rSet.next()) {
				count = rSet.getInt(1);
			}
			pStatement.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	//获取当前页要显示的信息
	public List getPage(int pageIndex,int pageSize){
		List<StuInfo> list = new ArrayList();
		int count = 0;
		
		try {
			DatabaseConnection connection = new DatabaseConnection();
			Connection conn = connection.getConnection();

			String sqlString="select * from stu_info order by id limit "+ pageSize*(pageIndex-1)+","+pageSize;
			System.out.println(sqlString);
			ResultSet resultSet = null;
			PreparedStatement pStatement = conn.prepareStatement(sqlString);
			resultSet = pStatement.executeQuery();
			while (resultSet.next()) {
				StuInfo stuInfo = new StuInfo();
				stuInfo.setId(resultSet.getInt("id"));
				stuInfo.setStuname(resultSet.getString("stuname"));
				stuInfo.setSex(resultSet.getString("sex"));
				stuInfo.setAge(resultSet.getInt("age"));
				stuInfo.setAddress(resultSet.getString("address"));
				stuInfo.setNation(resultSet.getString("nation"));
				stuInfo.setHobby(resultSet.getString("hobby"));
				list.add(stuInfo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//获取总页数
	public int getTotalPages(int pageSize){

		int count = this.getCount();
		int Totalpages=0;
		
		Totalpages = (count%pageSize==0)?(count/pageSize):(count/pageSize+1);
		return Totalpages;
	}
	
	public List pageList(int pageSize,int pageIndex){

		List list = this.getPage(pageSize, pageIndex);
		return list; 
	}
}
