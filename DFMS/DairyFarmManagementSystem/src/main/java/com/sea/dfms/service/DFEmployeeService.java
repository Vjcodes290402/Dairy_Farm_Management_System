package com.sea.dfms.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import com.sea.dfms.bean.AddAnimals;
import com.sea.dfms.bean.AddUsers;
import com.sea.dfms.bean.AnimalCheckUp;
import com.sea.dfms.bean.DFEmployee;
import com.sea.dfms.bean.DFUser;
import com.sea.dfms.bean.TakeMilkRecord;
import com.sea.dfms.dao.DFEmployeeDao;

public class DFEmployeeService {
	
	DFEmployeeDao dao = new DFEmployeeDao();
	
    public boolean validateUser(String employeeName,String employeeEmailId,String passWord) {
        
        boolean flag = dao.validateUser(employeeName,employeeEmailId, passWord);
        return flag;
    }
    
    public boolean signUpDFEmployee(DFEmployee dfe) {
		
		boolean flag = dao.signUpDFEmployee(dfe);
		return flag;
		
	}
    
    public DFUser getUserDetailById(int userId) {
    	
    	DFUser flag = dao.getUserDetailById(userId);
    	return flag;
    	
    }
    
    public boolean takeMilkRecord(TakeMilkRecord mk) {
    	
    	boolean flag = dao.takeMilkRecord(mk);
    	return flag;
    	
    }
    
    public ArrayList<AddUsers> getAllUsers(){
    	
    	ArrayList<AddUsers> uList = dao.getAllUsers();
    	return uList;
    	
    }
    
    public ArrayList<DFUser> getUser(){
    	
    	ArrayList<DFUser> dfList = dao.getUser();
    	return dfList;
    	
    }
    
    public ArrayList<DFUser> getuserDetails(){
    	
    	ArrayList<DFUser> dfList = dao.getUserDetails();
    	return dfList;
    	
    }
    
    public ArrayList<DFUser> getUserById(int userId){
    	
    	ArrayList<DFUser> dfList = dao.getUserById(userId);
    	return dfList;
    	
    }
    
    public ArrayList<AddAnimals> getAllAnimals(){
    	
    	ArrayList<AddAnimals> anList = dao.getAllAnimals();
    	return anList;
    	
    }
    
    public List<AddAnimals> getAnimalByUserId(int userId){
    	
    	List<AddAnimals> animalList = dao.getAnimalByUserId(userId);
    	return animalList;
    	
    }
    
    public ArrayList<TakeMilkRecord> getAllMilkRecords(){
    	
    	ArrayList<TakeMilkRecord> mkList = dao.getAllMilkRecords();
    	return mkList;
    	
    }
    
    public ArrayList<AnimalCheckUp> getAllAnimalCheckRequest(){
    	
    	ArrayList<AnimalCheckUp> acList = dao.getAllAnimalCheckRequest();
    	return acList;
    	
    }
    
    public boolean modifyScheduleStatus(AnimalCheckUp ac) {
    	
    	boolean flag = dao.modifyScheduleStatus(ac);
    	return flag;
    	
    }
    
    public boolean updatePassword(DFEmployee dfe) {
    	
    	boolean flag = dao.updatePassword(dfe);
    	return flag;
    	
    }
    
    public ArrayList<TakeMilkRecord> getDFReport(java.util.Date startDate, java.util.Date endDate){
    	
    	ArrayList<TakeMilkRecord> reportList = dao.getDFReport(startDate, endDate);
    	return reportList;
    	
    }
    
    public boolean deleteAllRecordsByUserid(int userId) {
    	
    	boolean flag = dao.deleteAllRecordsByUserId(userId);
    	return flag;
    	
    }
    

}
