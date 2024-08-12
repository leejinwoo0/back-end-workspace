package com.kh.model.vo;

public class Employee {

	private int empID;
	private String empName;
	private String email;
	private String phone;
	public Employee(int empID, String empName, String email, String phone) {
		super();
		this.empID = empID;
		this.empName = empName;
		this.email = email;
		this.phone = phone;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Employee [empID=" + empID + ", empName=" + empName + ", email=" + email + ", phone=" + phone + "]";
	}
	
	
}
