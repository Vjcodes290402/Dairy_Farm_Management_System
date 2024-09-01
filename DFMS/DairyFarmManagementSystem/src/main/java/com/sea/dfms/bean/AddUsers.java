package com.sea.dfms.bean;

public class AddUsers {
	
	int userId;
	long mobileNo;
	String userName;
	int numberOfCows;
	
	public AddUsers(int userId, long mobileNo, String userName, int numberOfCows) {
		super();
		this.userId = userId;
		this.mobileNo = mobileNo;
		this.userName = userName;
		this.numberOfCows = numberOfCows;
	}
	
	public AddUsers(int userId,long mobileNo, int numberOfCows) {
		
		super();
		this.userId = userId;
		this.mobileNo = mobileNo;
		this.numberOfCows = numberOfCows;
		
	}
	
	public AddUsers(int userId, String userName, long mobileNo,int numberOfCows) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.mobileNo = mobileNo;
		this.numberOfCows = numberOfCows;
	
	}
	
	public AddUsers(int userId,String userName)
	{
		super();
		this.userId = userId;
		this.userName = userName;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getNumberOfCows() {
		return numberOfCows;
	}

	public void setNumberOfCows(int numberOfCows) {
		this.numberOfCows = numberOfCows;
	}

	@Override
	public String toString() {
		return "AddUsers [userId=" + userId + ", mobileNo=" + mobileNo + ", userName=" + userName + ", numberOfCows="
				+ numberOfCows + "]";
	}
	
	

}
