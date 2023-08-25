package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.student;

public class StudentDAO {
	
	private Connection conn;

	public StudentDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addStudent(student stu) {
		boolean f=false;
		
	
	try {
		
		String SQL_ADD_QUERY = "insert into students(name, email, age, branch, phone, address) values(?,?,?,?,?,?)";
		PreparedStatement pst = conn.prepareStatement(SQL_ADD_QUERY);
		
		pst.setString(1, stu.getName());
		pst.setString(2, stu.getEmail());
		pst.setString(3, stu.getAge());
		pst.setString(4, stu.getBranch());
		pst.setString(5, stu.getPhone());
		pst.setString(6, stu.getAddress());
		
		
		int count = pst.executeUpdate();
		if(count > 0) {
			f=true;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return f;
	
	}
	

	public student getStudentById(int id) {
		
		student s = null;
		
		try {
			
			String GET_USER_BY_ID = "select * from students where id=?";
			
			PreparedStatement pst = conn.prepareStatement(GET_USER_BY_ID);
			pst.setInt(1, id);
			
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				s=new student();
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setEmail(rs.getString(3));
				s.setAge(rs.getString(4));
				s.setBranch(rs.getString(5));
				s.setPhone(rs.getString(6));
				s.setAddress(rs.getString(7));
				s.setStatus(rs.getBoolean(8));
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return s;
	}
	
	
	public boolean updateUser(student stu) {
		boolean f = false;
		
		try {
			
			String SQL_UPDATE_QUERY = "update students set name=?, email=?, phone=?,  age=?, address=?, branch=? where id=?";
			PreparedStatement pst = conn.prepareStatement(SQL_UPDATE_QUERY);
			
			pst.setString(1, stu.getName());
			pst.setString(2, stu.getEmail());
			pst.setString(3, stu.getPhone());
			pst.setString(4, stu.getAge());
			pst.setString(5, stu.getAddress());
			pst.setString(6, stu.getBranch());
			pst.setInt(7, stu.getId());
			
			
			int count = pst.executeUpdate();
			if(count > 0) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	
	public boolean deleteStudent(int id) {
		boolean f=false;
		
		try {
			
			
			String SQL_DELETE_QUERY = "delete from students where id=?";
			PreparedStatement pst = conn.prepareStatement(SQL_DELETE_QUERY);
			
			pst.setInt(1, id);
			
			int count = pst.executeUpdate();
			if(count > 0) {
				f=true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
		
		
	}
	
}
