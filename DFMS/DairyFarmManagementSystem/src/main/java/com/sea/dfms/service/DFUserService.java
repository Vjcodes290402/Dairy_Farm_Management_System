package com.sea.dfms.service;

import java.util.ArrayList;
import java.util.List;

import com.sea.dfms.bean.AddAnimals;
import com.sea.dfms.bean.AnimalCheckUp;
import com.sea.dfms.bean.DFUser;
import com.sea.dfms.bean.TakeMilkRecord;
import com.sea.dfms.dao.DFUserDao;

public class DFUserService {
	
	DFUserDao dao = new DFUserDao();
	
   public boolean validateUser(String userName,long userMobileNo,String passWord) {
        
        boolean flag = dao.validateUser(userName,userMobileNo, passWord);
        return flag;
    }
	
	public boolean signUpDFUser(DFUser df) {
		
		boolean flag = dao.signUpDFUser(df);
		return flag;
		
	}
	
    public DFUser getUserbyMobileNo(long mobileNo){
    	
    	DFUser flag = dao.getUserBymobileNo(mobileNo);
    	return flag;
    	
    }
	
    public boolean addAnimals(AddAnimals aa) {
    	
    	boolean flag = dao.addAnimals(aa);
    	return flag;
    	
    }
	
	public List<TakeMilkRecord> getMilkRecordsByMobileNo(long mobileNo) {
	    List<TakeMilkRecord> milkRecords = dao.getMilkRecordsByMobileNo(mobileNo);
	    return milkRecords;
	}

    public List<AddAnimals> getAnimalByMobileNo(long mobileNo){
    	
    	List<AddAnimals> animalList = dao.getAnimalByMobileNo(mobileNo);
    	return animalList;
    	
    }
    
    public List<AddAnimals> getAnimalByuserMobileNo(long mobileNo){
    	
    	List<AddAnimals> animalList = dao.getAnimalByUserMobileNo(mobileNo);
    	return animalList;
    	
    }
	
    public boolean requestAnimalCheckUp(AnimalCheckUp ac) {
    	
    	boolean flag = dao.requestAnimalCheckUp(ac);
    	return flag;
    	
    }
    
    public List<AnimalCheckUp> getAnimalCheckUpByMobileNo(long mobileNo){
    	
    	List<AnimalCheckUp> requestList = dao.getAnimalCheckUpByMobileNo(mobileNo);
    	return requestList;
    	
    }
    
    public boolean updatePassword(DFUser dfu) {
    	
    	boolean flag = dao.updatePassword(dfu);
    	return flag;
    	
    }

}
