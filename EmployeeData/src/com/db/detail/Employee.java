package com.db.detail;

public class Employee 
{
	private int emp_id;		
	private String name;		
	private int age;		
	private String current_addr;
	private String permanent_addr;
	
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getCurrent_addr() {
		return current_addr;
	}
	public void setCurrent_addr(String current_addr) {
		this.current_addr = current_addr;
	}
	public String getPermanent_addr() {
		return permanent_addr;
	}
	public void setPermanent_addr(String permanent_addr) {
		this.permanent_addr = permanent_addr;
	}
}
