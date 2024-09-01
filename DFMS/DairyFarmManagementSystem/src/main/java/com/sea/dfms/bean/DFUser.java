package com.sea.dfms.bean;

import java.util.Date;

public class DFUser {
	
	int userId;
	String userName;
	long mobileNo;
	String userAddress;
	String gender;
	Date userDob;
	int age;
	int numberOfCows;
	String passWord;
	
	public DFUser(int userId,String userName, long mobileNo, String userAddress, String gender, Date userDob, int age,int numberOfCows,
			String passWord) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.mobileNo = mobileNo;
		this.userAddress = userAddress;
		this.gender = gender;
		this.userDob = userDob;
		this.age = age;
		this.numberOfCows = numberOfCows;
		this.passWord = passWord;
	}
	
	public DFUser(int userId,String userName, long mobileNo, String userAddress, String gender, Date userDob, int age,
			String passWord) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.mobileNo = mobileNo;
		this.userAddress = userAddress;
		this.gender = gender;
		this.userDob = userDob;
		this.age = age;
		this.passWord = passWord;
	}
	
	public DFUser(String userName, long mobileNo, String userAddress, String gender, Date userDob, int age,int numberOfCows,
			String passWord) {
		super();
		this.userName = userName;
		this.mobileNo = mobileNo;
		this.userAddress = userAddress;
		this.gender = gender;
		this.userDob = userDob;
		this.age = age;
		this.numberOfCows = numberOfCows;
		this.passWord = passWord;
	}
	
	public DFUser(int userId,String userName,long mobileNo) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.mobileNo = mobileNo;
	}
	
	public int getUserId() {
		return userId;
	}



	public void setUserId(int userId) {
		this.userId = userId;
	}

	public DFUser(String passWord) {
		super();
		this.passWord = passWord;
	}	

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public long getMobileNo() {
		return mobileNo;
	}

	public void setUserMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getUserDob() {
		return userDob;
	}

	public void setUserDob(Date userDob) {
		this.userDob = userDob;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	public int getNumberOfCows() {
		return numberOfCows;
	}

	public void setNumberOfCows(int numberOfCows) {
		this.numberOfCows = numberOfCows;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	@Override
	public String toString() {
		return "DFUser [userId=" + userId + ",userName=" + userName + ", mobileNo=" + mobileNo + ", userAddress=" + userAddress
				+ ", gender=" + gender + ", userDob=" + userDob + ", age=" + age + ", numberOfCows=" + numberOfCows + " passWord=" + passWord + "]";
	}
	
	

}
