package com.howen.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.howen.user.domain.StuInfo;
import com.howen.user.util.DatabaseConnection;

public class StuInfoDao {
		DatabaseConnection connection= new DatabaseConnection();
		
		
	public void addStuInfo(StuInfo stuInfo){
		Connection conn = connection.getConnection();
		String sql = "Insert into stu_info(stuname,age,sex,nation,address,hobby) values(?,?,?,?,?,?)";
		try {
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1,stuInfo.getStuname());
			statement.setInt(2,stuInfo.getAge());
			statement.setString(3,stuInfo.getSex());
			statement.setString(4,stuInfo.getNation());
			statement.setString(5,stuInfo.getAddress());
			statement.setString(6,stuInfo.getHobby());
			statement.executeUpdate();
			statement.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
