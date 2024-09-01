package com.sea.dfms.bean;

import java.util.Date;

public class AnimalCheckUp {
	
	int requestId;
	int userId;
	String userName;
	long mobileNo;
	String cowTagNo;
	String healthCondition;
	String symptoms;
	String ongoingTreatment;
	String lastVaccinationDate;
	String scheduleStatus;
	Date scheduledDate;
	Date requestDate;
	String preference;
	
	public AnimalCheckUp(int requestId,int userId,String userName, long mobileNo, String cowTagNo, String healthCondition, String symptoms,
			String ongoingTreatment, String lastVaccinationDate,String scheduleStatus,Date scheduledDate ,Date requestDate,String preference) {
		super();
		this.requestId = requestId;
		this.userId = userId;
		this.userName = userName;
		this.mobileNo = mobileNo;
		this.cowTagNo = cowTagNo;
		this.healthCondition = healthCondition;
		this.symptoms = symptoms;
		this.ongoingTreatment = ongoingTreatment;
		this.lastVaccinationDate = lastVaccinationDate;
		this.scheduleStatus = scheduleStatus;
		this.scheduledDate = scheduledDate;
		this.requestDate = requestDate;
		this.preference = preference;
	}
	
	public AnimalCheckUp(int userId,String userName, long mobileNo, String cowTagNo, String healthCondition, String symptoms,
			String ongoingTreatment, String lastVaccinationDate,Date requestDate,String preference) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.mobileNo = mobileNo;
		this.cowTagNo = cowTagNo;
		this.healthCondition = healthCondition;
		this.symptoms = symptoms;
		this.ongoingTreatment = ongoingTreatment;
		this.lastVaccinationDate = lastVaccinationDate;
		this.requestDate = requestDate;
		this.preference = preference;
	}
	
	public AnimalCheckUp(long mobileNo,Date requestDate,String scheduleStatus,Date scheduledDate) {
		
		super();
		this.mobileNo = mobileNo;
		this.requestDate = requestDate;
		this.scheduleStatus = scheduleStatus;
		this.scheduledDate = scheduledDate;
		
	}
	
	public AnimalCheckUp(String cowTagNo,Date scheduledDate,String preference) {
		super();
		this.cowTagNo = cowTagNo;
		this.scheduledDate = scheduledDate;
		this.preference = preference;
	}
	
	public AnimalCheckUp(Date requestDate) {
		super();
		this.requestDate = requestDate;
	}
	
    
	public int getRequestId() {
		return requestId;
	}

	public void setRequestId(int requestId) {
		this.requestId = requestId;
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

	public String getCowTagNo() {
		return cowTagNo;
	}

	public void setCowTagNo(String cowTagNo) {
		this.cowTagNo = cowTagNo;
	}

	public String getHealthCondition() {
		return healthCondition;
	}

	public void setHealthCondition(String healthCondition) {
		this.healthCondition = healthCondition;
	}

	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public String getOngoingTreatment() {
		return ongoingTreatment;
	}

	public void setOngoingTreatment(String ongoingTreatment) {
		this.ongoingTreatment = ongoingTreatment;
	}

	public String getLastVaccinationDate() {
		return lastVaccinationDate;
	}

	public void setLastVaccinationDate(String lastVaccinationDate) {
		this.lastVaccinationDate = lastVaccinationDate;
	}

	public String getScheduleStatus() {
		return scheduleStatus;
	}

	public void setScheduleStatus(String scheduleStatus) {
		this.scheduleStatus = scheduleStatus;
	}

	public Date getScheduledDate() {
		return scheduledDate;
	}

	public void setScheduledDate(Date scheduledDate) {
		this.scheduledDate = scheduledDate;
	}

	public Date getRequestDate() {
		return requestDate;
	}

	public void setRequestDate(Date requestDate) {
		this.requestDate = requestDate;
	}
	

	public String getPreference() {
		return preference;
	}

	public void setPreference(String preference) {
		this.preference = preference;
	}

	@Override
	public String toString() {
		return "AnimalCheckUp [requestId=" + requestId + ", userId=" + userId + ", userName=" + userName + ", mobileNo="
				+ mobileNo + ", cowTagNo=" + cowTagNo + ", healthCondition=" + healthCondition + ", symptoms="
				+ symptoms + ", ongoingTreatment=" + ongoingTreatment + ", lastVaccinationDate=" + lastVaccinationDate
				+ ", scheduleStatus=" + scheduleStatus + ", scheduledDate=" + scheduledDate + ", requestDate="
				+ requestDate + ", preference=" + preference + "]";
	}

	

	
	
	
	
	

}
