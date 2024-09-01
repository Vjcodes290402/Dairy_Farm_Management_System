package com.sea.dfms.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.eclipse.jdt.internal.compiler.tool.EclipseBatchRequestor;

import com.sea.dfms.bean.AddAnimals;
import com.sea.dfms.bean.AddUsers;
import com.sea.dfms.bean.AnimalCheckUp;
import com.sea.dfms.bean.DFEmployee;
import com.sea.dfms.bean.DFUser;
import com.sea.dfms.bean.TakeMilkRecord;
import com.sea.dfms.util.DBUtil;

public class DFEmployeeDao<DfUser> {
	
      public boolean validateUser(String employeeName,String employeeEmailId,String passWord) {
        
        try {
            
            Connection con = DBUtil.getConnection();
            String cmd = "select * from dfemployee where employeeName = ? and employeeEmailId = ? and passWord = ?";
            PreparedStatement ps = con.prepareCall(cmd);
            ps.setString(1, employeeName);
            ps.setString(2, employeeEmailId);
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
     
      public boolean signUpDFEmployee(DFEmployee dfe) {
  		
  		try {
  			
  			Connection con = DBUtil.getConnection();
  			String cmd = "insert into dfemployee(employeeName,employeeMobileNo,employeeEmailId,employeeAddress,gender,employeeDob,employeeAge,passWord) values(?,?,?,?,?,?,?,?)";
  			PreparedStatement ps = con.prepareStatement(cmd);
  			ps.setString(1, dfe.getEmployeeName());
  			ps.setLong(2, dfe.getEmployeeMobileNo());
  			ps.setString(3, dfe.getEmployeeEmailId());
  			ps.setString(4, dfe.getEmployeeAddress());
  			ps.setString(5, dfe.getGender());
  			SimpleDateFormat smf = new SimpleDateFormat("yyyy-MM-dd");
  			java.sql.Date sDate = new java.sql.Date(dfe.getEmployeeDob().getTime());
  			ps.setDate(6, sDate);
  			ps.setInt(7, dfe.getEmployeeAge());
  			ps.setString(8, dfe.getPassWord());
  			ps.executeUpdate();
  			return true;
  			
  		}
  		catch(Exception e) {
  			
  			e.printStackTrace();
  			
  		}
  		
  		return false;
  		
  	}
      
      public ArrayList<AddUsers> getAllUsers(){
    	  
    	  ArrayList<AddUsers> uList = new ArrayList<AddUsers>();
    	  try {
    		  
    		  Connection con = DBUtil.getConnection();
    		  String cmd = "select userId,mobileNo,userName,numberOfCows from dfUser";
    		  PreparedStatement ps = con.prepareStatement(cmd);
    		  ResultSet rs = ps.executeQuery();
    		  while(rs.next()) {
    			  
    			  int userId = rs.getInt(1);
    			  long mobileNo = rs.getLong(2);
    			  String userName = rs.getString(3);
    			  int numberOfCows = rs.getInt(4);
    			  AddUsers au = new AddUsers(userId,mobileNo,userName,numberOfCows);
    			  uList.add(au);
    			  
    		  }
    		  return uList;
    		  
    	  }
    	  catch(Exception e) {
    		  
    		  e.printStackTrace();
    		  
    	  }
    	  
    	  return uList;
    	  
      }
      
      public ArrayList<DFUser> getUser(){
    	  
    	  ArrayList<DFUser> dfList = new ArrayList<DFUser>();
    	  try {
    		  
    		  Connection con = DBUtil.getConnection();
    		  String cmd = "select userId,userName,mobileNo,userAddress,gender,userDob,userAge,numberOfCows,passWord from dfuser where userId = ?";
    		  PreparedStatement ps = con.prepareStatement(cmd);
    		  ps.setInt(1, 0);
    		  ResultSet rs = ps.executeQuery();
    		  while(rs.next()) {
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
    			  dfList.add(dfu);
    			  
    		  }
    		  return dfList;
    		  
    	  }catch(Exception e) {
    		  
    		  e.printStackTrace();
    		  
    	  }
    	  
    	  return dfList;
    	  
      }
      
       public ArrayList<DFUser> getUserDetails(){
    	  
    	  ArrayList<DFUser> dfList = new ArrayList<DFUser>();
    	  try {
    		  
    		  Connection con = DBUtil.getConnection();
    		  String cmd = "select userId,userName,mobileNo,userAddress,gender,userDob,userAge,numberOfCows,passWord from dfuser";
    		  PreparedStatement ps = con.prepareStatement(cmd);
    		  ResultSet rs = ps.executeQuery();
    		  while(rs.next()) {
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
    			  dfList.add(dfu);
    			  
    		  }
    		  return dfList;
    		  
    	  }catch(Exception e) {
    		  
    		  e.printStackTrace();
    		  
    	  }
    	  
    	  return dfList;
    	  
      }
      
      public ArrayList<DFUser> getUserById(int userId){
    	  
    	  ArrayList<DFUser> userList = new ArrayList<DFUser>();
    	  try {
    		  
    		  Connection con = DBUtil.getConnection();
    		  String cmd = "select userId,userName,mobileNo,userAddress,gender,userDob,userAge,numberOfCows,passWord from dfuser where userId = ?";
    		  PreparedStatement ps = con.prepareStatement(cmd);
    		  ps.setInt(1, userId);
    		  ResultSet rs = ps.executeQuery();
    		  while(rs.next()) {
    			  int userid = rs.getInt(1);
    			  String userName = rs.getString(2);
    			  long userMobileNo = rs.getLong(3);
    			  String userAddress = rs.getString(4);
    			  String gender = rs.getString(5);
    			  Date userDob = rs.getDate(6);
    			  int age = rs.getInt(7);
    			  int numberOfCows = rs.getInt(8);
    			  String passWord = rs.getString(9);
    			  DFUser dfu = new DFUser(userid,userName,userMobileNo,userAddress,gender,userDob,age,numberOfCows,passWord);
    			  userList.add(dfu);
    			  
    		  }
    		  return userList;
    		  
    	  }
    	  
    	  catch(Exception e) {
    		  
    		  e.printStackTrace();
    		  
    	  }
    	  
    	  return userList;
      }
      
      public ArrayList<AddAnimals> getAllAnimals(){
    	  
    	  ArrayList<AddAnimals> anList = new ArrayList<AddAnimals>();
    	  try {
    		  
    		  Connection con = DBUtil.getConnection();
    		  String cmd = "select userId,mobileNo,animalId,animalTagNo,animalType,animalDob,animalAge from addanimal ORDER BY userId ASC, animalId ASC";
    		  PreparedStatement ps = con.prepareStatement(cmd);
    		  ResultSet rs = ps.executeQuery();
    		  while(rs.next()) {
    			  
    			  int userId = rs.getInt(1);
    			  long mobileNo = rs.getLong(2);
    			  int animalId = rs.getInt(3);
    			  String animalTagNo = rs.getString(4);
    			  String animalType = rs.getString(5);
    			  Date animalDob = rs.getDate(6);
    			  String animalAge = rs.getString(7);
    			  AddAnimals aa = new AddAnimals(userId,mobileNo,animalId,animalTagNo,animalType,animalDob,animalAge);
    			  anList.add(aa);
    			  
    		  }
    		  return anList;
    		  
    	  }
    	  catch(Exception e) {
    		  
    		  e.printStackTrace();
    		  
    	  }
    	  
    	  return anList;
    	  
      }
      
      public List<AddAnimals> getAnimalByUserId(int userId){
    	  
    	  List<AddAnimals> animalList = new ArrayList<AddAnimals>();
    	  try {
    		  
    		  Connection con = DBUtil.getConnection();
    		  String cmd = "select animalId,animalTagNo,animalType,animalDob,animalAge from addAnimal where userId = ? ORDER BY animalId ASC";
    		  PreparedStatement ps = con.prepareStatement(cmd);
    		  ps.setInt(1, userId);
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
      
      public DFUser getUserDetailById(int userId) {
    	  
    	  try {
    		  
    		  Connection con = DBUtil.getConnection();
    		  String cmd = "select userId,userName,mobileNo from dfUser where userId = ?";
    		  PreparedStatement ps = con.prepareStatement(cmd);
    		  ps.setInt(1, userId);
    		  ResultSet rs = ps.executeQuery();
    		  if(rs.next()) {
    			  
    			  int userid = rs.getInt(1);
    			  String userName = rs.getString(2);
    			  long userMobileNo = rs.getLong(3);
    			  DFUser dfu = new DFUser(userid,userName,userMobileNo);
    			  return dfu;
    			  
    		  }
    		  
    	  }catch(Exception e) {
    		  
    		  e.printStackTrace();
    		  
    	  }
    	  
    	  return null; 
    	  
      }
      
      public boolean takeMilkRecord(TakeMilkRecord mk) {
    	  
    	  try{
    		  
    		  Connection con = DBUtil.getConnection();
    		  String cmd = "insert into takeMilkRecord(userId,userName,mobileNo,recordDate,recordSession,milkQuantity,milkFatContent,milkRate) values(?,?,?,?,?,?,?,?)";
    		  PreparedStatement ps = con.prepareStatement(cmd);
    		  ps.setInt(1, mk.getUserId());
    		  ps.setString(2, mk.getUserName());
    		  ps.setLong(3, mk.getMobileNo());
    		  SimpleDateFormat smf = new SimpleDateFormat("yyyy-MM-dd");
    		  java.sql.Date sDate = new java.sql.Date(mk.getRecordDate().getTime());
    		  ps.setDate(4, sDate);
    		  ps.setString(5, mk.getRecordSession());
    		  ps.setString(6, mk.getMilkQuantity());
    		  ps.setString(7, mk.getMilkFatContent());
    		  ps.setFloat(8, mk.getMilkRate());
    		  ps.executeUpdate();
    		  return true;
    		  
    	  }
    	  catch(Exception e) {
    		  
    		  e.printStackTrace();
    		  
    	  }
    	  
    	  return false;
    	  
      }
      
      public ArrayList<TakeMilkRecord> getAllMilkRecords(){
    	  
    	  ArrayList<TakeMilkRecord> mkList = new ArrayList<TakeMilkRecord>();
    	  try {
    		  
    		  Connection con = DBUtil.getConnection();
    		  String cmd = "select recordId,userId,userName,mobileNo,recordDate,recordSession,milkQuantity,milkFatContent,milkRate from takeMilkRecord ORDER BY recordId ASC";
    		  PreparedStatement ps = con.prepareStatement(cmd);
    		  ResultSet rs = ps.executeQuery();
    		  while(rs.next()) {
    			  
    			  int recordId = rs.getInt(1);
    			  int userId = rs.getInt(2);
    			  String userName = rs.getNString(3);
    			  long  mobileNo = rs.getLong(4);
    			  Date recordDate = rs.getDate(5);
    			  String recordSession = rs.getString(6);
    			  String milkQuantity = rs.getString(7);
    			  String milkFatContent = rs.getString(8);
    			  float milkRate = rs.getFloat(9);
    			  TakeMilkRecord mk = new TakeMilkRecord(recordId,userId,userName,mobileNo,recordDate, recordSession, milkQuantity, milkFatContent, milkRate);
    			  mkList.add(mk);
    			  
    		  }
    		  return mkList;
    		  
    	  }
    	  catch(Exception e) {
    		  
    		  e.printStackTrace();
    		  
    	  }
    	  
    	  return mkList;
    	  
      }
      
      public ArrayList<AnimalCheckUp> getAllAnimalCheckRequest(){
    	  
    	  ArrayList<AnimalCheckUp> acList = new ArrayList<AnimalCheckUp>();
    	  try {
    		  
    		  Connection con = DBUtil.getConnection();
    		  String cmd = "select requestId,userId,userName,mobileNo,cowTagNo,healthCondition,symptoms,ongoingTreatment,lastVaccinationDate,scheduleStatus,scheduledDate,requestDate,preference from animalCheckUp";
    		  PreparedStatement ps = con.prepareStatement(cmd);
    		  ResultSet rs = ps.executeQuery();
    		  while(rs.next()) {
    			  
    			  int requestId = rs.getInt(1);
    			  int userId = rs.getInt(2);
    			  String userName = rs.getString(3);
    			  long mobileNo = rs.getLong(4);
    			  String cowTagNo = rs.getString(5);
    			  String healthCondition = rs.getString(6);
    			  String symptoms = rs.getString(7);
    			  String ongoingTreatment = rs.getString(8);
    			  String lastVaccinationDate = rs.getString(9);
    			  String scheduleStatus = rs.getString(10);
    			  Date scheduledDate = rs.getDate(11);
    			  Date requestDate = rs.getDate(12);
    			  String preference = rs.getString(13);
    			  AnimalCheckUp ac = new AnimalCheckUp(requestId,userId,userName,mobileNo,cowTagNo,healthCondition,symptoms,ongoingTreatment,lastVaccinationDate,scheduleStatus,scheduledDate,requestDate,preference);
    			  acList.add(ac);
    			  
    		  } 
    		  return acList;
    		  
    	  }
    	  catch(Exception e) {
			  
			  e.printStackTrace();
			  
		  }
    	  
    	  return acList;
    	  
      }
      
      public boolean modifyScheduleStatus(AnimalCheckUp ac) {
    	    try {
    	        Connection con = DBUtil.getConnection();
    	        String cmd = "UPDATE animalCheckUp SET scheduleStatus = ?, scheduledDate = ? WHERE mobileNo = ? and requestDate = ?";
    	        PreparedStatement ps = con.prepareStatement(cmd);
    	        ps.setString(1, ac.getScheduleStatus());
    	        ps.setDate(2, new java.sql.Date(ac.getScheduledDate().getTime()));
    	        ps.setLong(3, ac.getMobileNo());
    	        ps.setDate(4, new java.sql.Date(ac.getRequestDate().getTime()));
    	        ps.executeUpdate();
    	        return true;
    	    } catch(Exception e) {
    	        e.printStackTrace();
    	    }
    	    return false;
    	}
      
      public boolean updatePassword(DFEmployee dfe) {
    	  
    	  try {
    		  
    		  Connection con = DBUtil.getConnection();
    		  String cmd = "update dfemployee set passWord = ? ";
    		  PreparedStatement ps = con.prepareStatement(cmd);
    		  ps.setString(1, dfe.getPassWord());
    		  ps.executeUpdate();
    		  return true;
    		  
    	  }
    	  catch(Exception e) {
    		  
    		  e.printStackTrace();
    		  
    	  }
    	  
    	  return false;
    	  
      }
      
      public ArrayList<TakeMilkRecord> getDFReport(java.util.Date startDate, java.util.Date endDate) {
    	    ArrayList<TakeMilkRecord> reportList = new ArrayList<>();
    	    try {
    	        Connection con = DBUtil.getConnection();
    	        String cmd = "SELECT recordDate, SUM(milkQuantity) AS milkQuantity, SUM(milkRate) AS milkRate " +
    	                     "FROM takeMilkRecord " +
    	                     "WHERE recordDate BETWEEN ? AND ? " +
    	                     "GROUP BY recordDate";
    	        PreparedStatement ps = con.prepareStatement(cmd);
    	        ps.setDate(1, new java.sql.Date(startDate.getTime()));
    	        ps.setDate(2, new java.sql.Date(endDate.getTime()));
    	        ResultSet rs = ps.executeQuery();
    	        while (rs.next()) {
    	            Date recordDate = rs.getDate("recordDate");
    	            String milkQuantity = rs.getString("milkQuantity");
    	            float milkRate = rs.getFloat("milkRate");
    	            TakeMilkRecord record = new TakeMilkRecord(recordDate, milkQuantity, milkRate);
    	            reportList.add(record);
    	        }
    	    } catch (Exception e) {
    	        e.printStackTrace();
    	    }
    	    return reportList;
    	}
      
      public boolean deleteAllRecordsByUserId(int userId) {
    	  
    	  try {
    	  Connection con = DBUtil.getConnection();
    	  String cmd = "DECLARE " +
    			    "    v_userId NUMBER := ?; " +
    			    "BEGIN " +
    			    "    DELETE FROM addAnimal WHERE userId = v_userId; " +
    			    "    DELETE FROM takeMilkRecord WHERE userId = v_userId; " +
    			    "    DELETE FROM animalCheckUp WHERE userId = v_userId; " +
    			    "    DELETE FROM dfUser WHERE userId = v_userId; " +
    			    "    COMMIT; " +
    			    "END;";
    	  PreparedStatement ps = con.prepareStatement(cmd);
    	  ps.setInt(1, userId);
    	  ps.executeUpdate();
    	  return true;
    	  
    	  }catch(Exception e) {
    		  
    		  e.printStackTrace();
    		  
    	  }
    	  
    	  return false;
    	   
      }

      


}
