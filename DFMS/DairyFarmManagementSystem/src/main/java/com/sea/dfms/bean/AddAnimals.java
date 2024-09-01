package com.sea.dfms.bean;

import java.util.Date;

public class AddAnimals {
	
	int userId;
	int animalId;
	long mobileNo;
	String animalTagNo;
	String animalType;
	Date animalDob;
	String animalAge;
	
	public AddAnimals(int userId,long mobileNo, int animalId, String animalTagNo, String animalType, Date animalDob,
			String animalAge) {
		super();
		this.userId = userId;
		this.mobileNo = mobileNo;
		this.animalId = animalId;
		this.animalTagNo = animalTagNo;
		this.animalType = animalType;
		this.animalDob = animalDob;
		this.animalAge = animalAge;
	}
	
	public AddAnimals(int userId,long mobileNo, String animalType, Date animalDob,
			String animalAge) {
		super();
		this.userId = userId;
		this.mobileNo = mobileNo;
		this.animalType = animalType;
		this.animalDob = animalDob;
		this.animalAge = animalAge;
	}
	
	public AddAnimals(int animalId, String animalTagNo, String animalType, Date animalDob,
			String animalAge) {
		super();
		this.animalId = animalId;
		this.animalTagNo = animalTagNo;
		this.animalType = animalType;
		this.animalDob = animalDob;
		this.animalAge = animalAge;
	}
	
	public AddAnimals(String animaltagNo) {
		
		super();
		this.animalTagNo = animaltagNo;
		
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getAnimalId() {
		return animalId;
	}

	public void setAnimalId(int animalId) {
		this.animalId = animalId;
	}
	
	

	public long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAnimalTagNo() {
		return animalTagNo;
	}

	public void setAnimalTagNo(String animalTagNo) {
		this.animalTagNo = animalTagNo;
	}

	public String getAnimalType() {
		return animalType;
	}

	public void setAnimalType(String animalType) {
		this.animalType = animalType;
	}

	public Date getAnimalDob() {
		return animalDob;
	}

	public void setAnimalDob(Date animalDob) {
		this.animalDob = animalDob;
	}

	public String getAnimalAge() {
		return animalAge;
	}

	public void setAnimalAge(String animalAge) {
		this.animalAge = animalAge;
	}

	@Override
	public String toString() {
		return "AddAnimals [userId=" + userId + ",mobileNo=" + mobileNo + ", animalId=" + animalId + ", animalTagNo=" + animalTagNo
				+ ", animalType=" + animalType + ", animalDob=" + animalDob + ", animalAge=" + animalAge + "]";
	}
	
	

}
