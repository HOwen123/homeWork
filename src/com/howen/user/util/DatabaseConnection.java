package com.howen.user.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javassist.bytecode.stackmap.BasicBlock.Catch;

public class DatabaseConnection {
	private static final String DRIVER_CLASS="com.mysql.jdbc.Driver";
	private static final String DATABASE_URL="jdbc:mysql://localhost:3306/loginDemo?useUnicode=true&amp;characterEncoding=UTF-8";
	private static final String DATABASE_USER="root";
	private static final String DATABASE_PASSWORD="root";
	
	public static Connection getConnection(){
		Connection dbConnection=null;
	try{
		Class.forName(DRIVER_CLASS);
		dbConnection=DriverManager.getConnection(DATABASE_URL,
				DATABASE_USER,DATABASE_PASSWORD);
		System.out.println("数据连接成功");
	}catch(Exception e){
		e.printStackTrace();
		System.out.println("failure connnection");
	}
	return dbConnection;
	}
	
	public static void closeConnection(Connection dbConnection){
		try {
			if(dbConnection!=null&&(!dbConnection.isClosed())){
				dbConnection.close();
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	public static void closeResultSet(ResultSet res){
		try {
			if (res!=null) {
				res.close();
				res=null;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public static void closeStatement(PreparedStatement pStatement){
		try {
			if (pStatement!=null) {
				pStatement.close();
				pStatement=null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
