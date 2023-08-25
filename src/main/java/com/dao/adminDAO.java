package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.adminLogin;

public class adminDAO {

	private Connection conn;

	public adminDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addAdmin(adminLogin al) {
		
		 boolean f=false;
		
		 try {
			 
			 String LOGIN_QUERY = "select * from user where email=? and password=?";
				
			 PreparedStatement pst = conn.prepareStatement(LOGIN_QUERY);
			 pst.setString(1, al.getEmail());
			 pst.setString(2, al.getPassword());
			 ResultSet rs = pst.executeQuery();
			
			 if(rs.next()) {
				 f=true;
			 }
			 
		 }catch(Exception e) {
			 e.printStackTrace();
		 } 
		
		
		return f;
	}
	
}
