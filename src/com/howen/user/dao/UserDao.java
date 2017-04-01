package com.howen.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


import com.howen.user.domain.User;
import com.howen.user.util.DatabaseConnection;

public class UserDao {
	public User checkLogin(String name,String password){
		Connection connection=DatabaseConnection.getConnection();
		String sql="select * from userdetail where name='"+name+"'and password='"+password+"'";
		try {
			Statement statement=connection.createStatement();
			ResultSet resultSet=statement.executeQuery(sql);
			while(resultSet.next()){
				String username1=resultSet.getString("name");
				String password1= resultSet.getString("password");
				User user=new User();
				user.setName(username1);
				System.out.println(username1);
				user.setPassword(password1);
				return user;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	public void addUser(User user){
		Connection connection=DatabaseConnection.getConnection();
		System.out.println(user.getName());
		String sql="Insert into userdetail(name,password,age,email) values(?,?,?,?) ";
		try {
		PreparedStatement preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1,user.getName());
		preparedStatement.setString(2, user.getPassword());
		preparedStatement.setInt(3, user.getAge());
		preparedStatement.setString(4, user.getEmail());
		preparedStatement.executeUpdate();
		preparedStatement.close();
		connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public User checkname(String name){
		Connection connection=DatabaseConnection.getConnection();
		String sql="select * from userdetail where name='"+name+"'";
		try {
			Statement statement=connection.createStatement();
			ResultSet resultSet=statement.executeQuery(sql);
			while(resultSet.next()){
				String username1=resultSet.getString("name");
//				String password1= resultSet.getString("password");
				User user=new User();
				user.setName(username1);
//				System.out.println(username1);
//				user.setPassword(password1);
				return user;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
}
