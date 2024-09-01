package com.sea.dfms.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.sea.dfms.bean.AddAnimals;
import com.sea.dfms.bean.AnimalCheckUp;
import com.sea.dfms.bean.DFUser;
import com.sea.dfms.bean.TakeMilkRecord;
import com.sea.dfms.util.DBUtil;

public class DFUserDao {
	
    public boolean validateUser(String userName,long mobileNo,String passWord) {
        
        try {
            
            Connection con = DBUtil.getConnection();
            String cmd = "select * from dfuser where userName = ? and mobileNo = ? and passWord = ?";
            PreparedStatement ps = con.prepareCall(cmd);
            ps.setString(1, userName);
            ps.setLong(2, mobileNo);
            ps.setString(3, passWord);
            ResultSet rs = ps.executeQuery();
            if(rs.next())
                return true;
            else
                return false;
            
        }
        catch(Exception e) {
            
            e.printStackTrace();
            
        }
        return false;
        
    }
	
	public boolean signUpDFUser(DFUser df) {
		
		try {
			
			Connection con = DBUtil.getConnection();
			String cmd = "insert into dfuser(userName,mobileNo,userAddress,gender,userDob,userAge,numberOfCows,passWord) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setString(1, df.getUserName());
			ps.setLong(2, df.getMobileNo());
			ps.setString(3, df.getUserAddress());
			ps.setString(4, df.getGender());
			SimpleDateFormat smf = new SimpleDateFormat("yyyy-MM-dd");
			java.sql.Date sDate = new java.sql.Date(df.getUserDob().getTime());
			ps.setDate(5, sDate);
			ps.setInt(6, df.getAge());
			ps.setInt(7, df.getNumberOfCows());
			ps.setString(8, df.getPassWord());
			ps.executeUpdate();
			return true;
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return false;
		
	}
	
	public DFUser getUserBymobileNo(long mobileNo){
  	 
  	  try {
  		  
  		  Connection con = DBUtil.getConnection();
  		  String cmd = "select userId,userName,mobileNo,userAddress,gender,userDob,userAge,numberOfCows,passWord from dfuser where mobileNo = ?";
  		  PreparedStatement ps = con.prepareStatement(cmd);
  		  ps.setLong(1, mobileNo);
  		  ResultSet rs = ps.executeQuery();
  		  if(rs.next()) {
  			  int userId = rs.getInt(1);
  			  String userName = rs.getString(2);
  			  long userMobileNo = rs.getLong(3);
  			  String userAddress = rs.getString(4);
  			  String gender = rs.getString(5);
  			  Date userDob = rs.getDate(6);
  			  int age = rs.getInt(7);
  			  int numberOfCows = rs.getInt(8);
  			  String passWord = rs.getString(9);
  			  DFUser dfu = new DFUser(userId,userName,userMobileNo,userAddress,gender,userDob,age,numberOfCows,passWord);
  			  return dfu;
  		  }
  		  
  	  }
  	  
  	  catch(Exception e) {
  		  
  		  e.printStackTrace();
  		  
  	  }
  	  
  	  return null;
    }
	
	public boolean addAnimals(AddAnimals aa) {
  	  
  	  try {
  		  
  		  Connection con = DBUtil.getConnection();
  		  String cmd = "insert into addanimal(userId,mobileNo,animalType,animalDob,animalAge)values(?,?,?,?,?)";
  		  PreparedStatement ps = con.prepareStatement(cmd);
  		  ps.setInt(1, aa.getUserId());
  		  ps.setLong(2, aa.getMobileNo());
  		  ps.setString(3, aa.getAnimalType());
  		  SimpleDateFormat smf = new SimpleDateFormat("yyyy-MM-dd");
  		  java.sql.Date sDate = new java.sql.Date(aa.getAnimalDob().getTime());
  		  ps.setDate(4, sDate);
  		  ps.setString(5, aa.getAnimalAge());
  		  ps.executeUpdate();
  		  return true;
  		  
  	  }
  	  catch(Exception e) {
  		  
  		  e.printStackTrace();
  		  
  	  }
  	  
  	  return false;
  	  
    }
	
	public List<TakeMilkRecord> getMilkRecordsByMobileNo(long mobileNo) {
	    List<TakeMilkRecord> milkRecords = new ArrayList<>();
	    try {
	        Connection con = DBUtil.getConnection();
	        String cmd = "select recordDate, recordSession, milkQuantity, milkFatContent, milkRate from takeMilkRecord where mobileNo = ?";
	        PreparedStatement ps= con.prepareStatement(cmd);
	        ps.setLong(1, mobileNo);
	        ResultSet rs = ps.executeQuery();
	        while(rs.next()) {
	        	Date recordDate = rs.getDate(1);
				  String recordSession = rs.getString(2);
				  String milkQuantity = rs.getString(3);
				  String milkFatContent = rs.getString(4);
				  float milkRate = rs.getFloat(5);
	            TakeMilkRecord mk = new TakeMilkRecord(recordDate, recordSession, milkQuantity, milkFatContent, milkRate);
	            milkRecords.add(mk);
	        }
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return milkRecords;
	}
	
	public boolean requestAnimalCheckUp(AnimalCheckUp ac) {
		
		try {
			
			Connection con = DBUtil.getConnection();
			String cmd = "insert into animalCheckUp(userId,userName,mobileNo,cowTagNo,healthCondition,symptoms,ongoingTreatment,lastVaccinationdate,requestDate,preference) values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setInt(1, ac.getUserId());
			ps.setString(2, ac.getUserName());
			ps.setLong(3, ac.getMobileNo());
			ps.setString(4, ac.getCowTagNo());
			ps.setString(5, ac.getHealthCondition());
			ps.setString(6, ac.getSymptoms());
			ps.setString(7, ac.getOngoingTreatment());
			ps.setString(8, ac.getLastVaccinationDate());
			SimpleDateFormat smf = new SimpleDateFormat("yyyy-MM-dd");
			java.sql.Date sDate = new java.sql.Date(ac.getRequestDate().getTime());
			ps.setDate(9, sDate);
			ps.setString(10, ac.getPreference());
			ps.executeUpdate();
			return true;
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return false;
		
	}
	
	public List<AnimalCheckUp> getAnimalCheckUpByMobileNo(long mobileNo) {
		List<AnimalCheckUp> requestList = new ArrayList<>();
		
  	  try {
  		  
  		  Connection con = DBUtil.getConnection();
  		  String cmd = "select cowTagNo,scheduledDate,preference from animalCheckUp where mobileNo = ?";
  		  PreparedStatement ps = con.prepareStatement(cmd);
		  ps.setLong(1, mobileNo);
  		  ResultSet rs = ps.executeQuery();
  		while(rs.next()) {
  			  
  			  String cowTagNo = rs.getString(1);
  			  Date scheduledDate = rs.getDate(2);
  			  String preference = rs.getString(3);
  			  AnimalCheckUp ac = new AnimalCheckUp(cowTagNo,scheduledDate,preference);
  			  requestList.add(ac);
  		  } 
  		  
  	  }
  	  catch(Exception e) {
			  
			  e.printStackTrace();
			  
		  }
  	  
  	  return requestList;
  	  
    }
	
	public List<AddAnimals> getAnimalByMobileNo(long mobileNo){
  	  
  	  List<AddAnimals> animalList = new ArrayList<AddAnimals>();
  	  try {
  		  
  		  Connection con = DBUtil.getConnection();
  		  String cmd = "select animalId,animalTagNo,animalType,animalDob,animalAge from addAnimal where mobileNo = ? ORDER BY animalId ASC";
  		  PreparedStatement ps = con.prepareStatement(cmd);
  		  ps.setLong(1, mobileNo);
  		  ResultSet rs = ps.executeQuery();
  		  while(rs.next()) {
  			  
  			  int animalId = rs.getInt(1);
  			  String animalTagNo = rs.getString(2);
  			  String animalType = rs.getString(3);
  			  Date animalDob = rs.getDate(4);
  			  String animalAge = rs.getString(5);
  			  AddAnimals am = new AddAnimals(animalId,animalTagNo,animalType,animalDob,animalAge);
  			  animalList.add(am);
  			  
  		  }
  		  
  	  }catch(Exception e) {
  		  
  		  e.printStackTrace();
  		  
  	  }
  	  
  	  return animalList;
  	  
    }
	
	public boolean updatePassword(DFUser dfu) {
		
		try {
			
			Connection con = DBUtil.getConnection();
			String cmd = "update dfuser set passWord = ?";
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setString(1, dfu.getPassWord());
			ps.executeUpdate();
			return true;
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return false;
		
	}
	
	public List<AddAnimals> getAnimalByUserMobileNo(long mobileNo){
	  	  
	  	  List<AddAnimals> animalList = new ArrayList<AddAnimals>();
	  	  try {
	  		  
	  		  Connection con = DBUtil.getConnection();
	  		  String cmd = "select animalId,animalTagNo,animalType,animalDob,animalAge from addAnimal where mobileNo = ? ORDER BY animalId ASC";
	  		  PreparedStatement ps = con.prepareStatement(cmd);
	  		  ps.setLong(1, mobileNo);
	  		  ResultSet rs = ps.executeQuery();
	  		  while(rs.next()) {
	  			  
	  			  int animalId = rs.getInt(1);
	  			  String animalTagNo = rs.getString(2);
	  			  String animalType = rs.getString(3);
	  			  Date animalDob = rs.getDate(4);
	  			  String animalAge = rs.getString(5);
	  			  AddAnimals am = new AddAnimals(animalId,animalTagNo,animalType,animalDob,animalAge);
	  			  animalList.add(am);
	  			  
	  		  }
	  		  
	  	  }catch(Exception e) {
	  		  
	  		  e.printStackTrace();
	  		  
	  	  }
	  	  
	  	  return animalList;
	  	  
	    }

}
