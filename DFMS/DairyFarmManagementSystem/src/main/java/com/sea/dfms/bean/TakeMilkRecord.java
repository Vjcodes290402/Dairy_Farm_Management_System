package com.sea.dfms.bean;

import java.util.Date;

public class TakeMilkRecord {
	
	int recordId;
	int userId;
	String userName;
	long mobileNo;
	Date recordDate;
	String recordSession;
	String milkQuantity;
	String milkFatContent;
	float milkRate;
	public TakeMilkRecord(int recordId,int userId, String userName,long mobileNo, Date recordDate, String recordSession,
			String milkQuantity, String milkFatContent, float milkRate) {
		super();
		this.recordId = recordId;
		this.userId = userId;
		this.userName = userName;
		this.mobileNo = mobileNo;
		this.recordDate = recordDate;
		this.recordSession = recordSession;
		this.milkQuantity = milkQuantity;
		this.milkFatContent = milkFatContent;
		this.milkRate = milkRate;
	}
	
	public TakeMilkRecord(int userId, String userName,long mobileNo, Date recordDate, String recordSession,
			String milkQuantity, String milkFatContent, float milkRate) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.mobileNo = mobileNo;
		this.recordDate = recordDate;
		this.recordSession = recordSession;
		this.milkQuantity = milkQuantity;
		this.milkFatContent = milkFatContent;
		this.milkRate = milkRate;
	}
	
	public TakeMilkRecord(Date recordDate, String recordSession,
			String milkQuantity, String milkFatContent, float milkRate) {
		super();
		this.recordDate = recordDate;
		this.recordSession = recordSession;
		this.milkQuantity = milkQuantity;
		this.milkFatContent = milkFatContent;
		this.milkRate = milkRate;
	}
	
	public TakeMilkRecord(Date recordDate,String milkQuantity,float milkRate) {
	
		super();
		this.recordDate = recordDate;
		this.milkQuantity = milkQuantity;
		this.milkRate = milkRate;
	}
	
	public TakeMilkRecord(Date startDate,Date endDate) {
		
		super();
		this.recordDate = startDate;
		this.recordDate = endDate;	
	}
	
	public int getRecordId() {
		return recordId;
	}

	public void setRecordId(int recordId) {
		this.recordId = recordId;
	}

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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

	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public Date getRecordDate() {
		return recordDate;
	}
	public void setRecordDate(Date recordDate) {
		this.recordDate = recordDate;
	}
	public String getRecordSession() {
		return recordSession;
	}
	public void setRecordSession(String recordSession) {
		this.recordSession = recordSession;
	}
	public String getMilkQuantity() {
		return milkQuantity;
	}
	public void setMilkQuantity(String milkQuantity) {
		this.milkQuantity = milkQuantity;
	}
	public String getMilkFatContent() {
		return milkFatContent;
	}
	public void setMilkFatContent(String milkFatContent) {
		this.milkFatContent = milkFatContent;
	}
	public float getMilkRate() {
		return milkRate;
	}
	public void setMilkRate(float milkRate) {
		this.milkRate = milkRate;
	}
	@Override
	public String toString() {
		return "TakeMilkRecord [recordId=" + recordId + ",userId=" + userId + ", userName=" + userName + ",mobileNo=" + mobileNo + ", recordDate="
				+ recordDate + ", recordSession=" + recordSession + ", milkQuantity=" + milkQuantity
				+ ", milkFatContent=" + milkFatContent + ", milkRate=" + milkRate + "]";
	}
	
	
	

	

}
