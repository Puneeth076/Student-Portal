package com.entity;

public class student {

	private int id;
	private String name;
	private String email;
	private String branch;
	private String age;
	private String phone;
	private String address;
	private boolean status;
	public boolean getStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public student() {
		super();
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public student(int id, String name, String email, String phone, String age, String address, String branch) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.branch = branch;
		this.age = age;
		this.phone = phone;
		this.address = address;
	}
	public student(String name, String email, String phone, String age, String address, String branch) {
		super();
		this.name = name;
		this.email = email;
		this.branch = branch;
		this.age = age;
		this.phone = phone;
		this.address = address;
	}
	@Override
	public String toString() {
		return "student [id=" + id + ", name=" + name + ", email=" + email + ", branch=" + branch + ", age=" + age
				+ ", phone=" + phone + ", address=" + address + "]";
	}
	
	
	
	
}
