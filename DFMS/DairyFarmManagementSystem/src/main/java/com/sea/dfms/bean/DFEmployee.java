package com.sea.dfms.bean;

import java.util.Date;

public class DFEmployee {
	
	int employeeId;
	String employeeName;
	long employeeMobileNo;
	String employeeEmailId;
	String employeeAddress;
	String gender;
	Date employeeDob;
	int employeeAge;
	String passWord;
	
	@Override
	public String toString() {
		return "DFEmployee [employeeId=" + employeeId + ", employeeName=" + employeeName + ", employeeMobileNo="
				+ employeeMobileNo + ", employeeEmailId=" + employeeEmailId + ", employeeAddress=" + employeeAddress
				+ ", gender=" + gender + ", employeeDob=" + employeeDob + ", employeeAge=" + employeeAge + ", passWord="
				+ passWord + "]";
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public long getEmployeeMobileNo() {
		return employeeMobileNo;
	}

	public void setEmployeeMobileNo(long employeeMobileNo) {
		this.employeeMobileNo = employeeMobileNo;
	}

	public String getEmployeeEmailId() {
		return employeeEmailId;
	}

	public void setEmployeeEmailId(String employeeEmailId) {
		this.employeeEmailId = employeeEmailId;
	}

	public String getEmployeeAddress() {
		return employeeAddress;
	}

	public void setEmployeeAddress(String employeeAddress) {
		this.employeeAddress = employeeAddress;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getEmployeeDob() {
		return employeeDob;
	}

	public void setEmployeeDob(Date employeeDob) {
		this.employeeDob = employeeDob;
	}

	public int getEmployeeAge() {
		return employeeAge;
	}

	public void setEmployeeAge(int employeeAge) {
		this.employeeAge = employeeAge;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public DFEmployee(String employeeName, long employeeMobileNo, String employeeEmailId,
			String employeeAddress, String gender, Date employeeDob, int employeeAge, String passWord) {
		super();
//		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.employeeMobileNo = employeeMobileNo;
		this.employeeEmailId = employeeEmailId;
		this.employeeAddress = employeeAddress;
		this.gender = gender;
		this.employeeDob = employeeDob;
		this.employeeAge = employeeAge;
		this.passWord = passWord;
	}
	
	public DFEmployee(String passWord) {
		
		super();
		this.passWord = passWord;
		
	}
	
	

}
