package com.sea.dfms.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sea.dfms.bean.AddAnimals;
import com.sea.dfms.bean.AnimalCheckUp;
import com.sea.dfms.bean.DFUser;
import com.sea.dfms.bean.TakeMilkRecord;
import com.sea.dfms.service.DFUserService;

/**
 * Servlet implementation class DFUserServlet
 */
public class DFUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public DFUserServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		DFUserService service = new DFUserService();
		String target = "";
		String action = request.getParameter("action");
		
        if(action.equals("Login")) {
            
            String userName = request.getParameter("userName");
            long userMobileNo = Long.parseLong(request.getParameter("userMobileNo"));
            String passWord = request.getParameter("passWord");
            boolean f1 = service.validateUser(userName,userMobileNo, passWord);
            if(f1) {
                
                HttpSession sn = request.getSession();
                sn.setAttribute("userName", userName);
                sn.setAttribute("userMobileNo", userMobileNo);
                target = "DFUser.jsp";
                
            } else
                target = "Error.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(target);
            rd.forward(request, response);
            
        }
        
       else if(action.equals("Logout")) {
			
			HttpSession sn=request.getSession(false);
			sn.invalidate();
			response.sendRedirect("DFUserLogin.jsp");
			
		}
        else {
		
		switch(action) {
		
		case "Sign Up":
			String userName = request.getParameter("userName");
			long userMobileNo = Long.parseLong(request.getParameter("mobileNo"));
			String userAddress = request.getParameter("userAddress");
			String gender = request.getParameter("gender");
			String userDob = request.getParameter("userDob");
			int userAge = Integer.parseInt(request.getParameter("userAge"));
			int numberOfCows = Integer.parseInt(request.getParameter("numberOfCows"));
			String passWord = request.getParameter("passWord");
			SimpleDateFormat rsmf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				
				Date ruserDob = rsmf.parse(userDob);
				DFUser df = new DFUser(userName,userMobileNo,userAddress,gender,ruserDob,userAge,numberOfCows,passWord);
				boolean flag = service.signUpDFUser(df);
				target = "UserSignUpSuccessfull.jsp";
				
			}
			catch(Exception e) {
				
				e.printStackTrace();
				
			}
			break;
			
		case "Add Animal":
			int userid = Integer.parseInt(request.getParameter("userId"));
			long mobilenom = Long.parseLong(request.getParameter("mobileNo"));
			String animalType = request.getParameter("animalType");
			String animalDob = request.getParameter("animalDob");
			String animalAge = request.getParameter("animalAge");
			SimpleDateFormat smf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				
				Date ranimalDob = smf.parse(animalDob);
				AddAnimals aa = new AddAnimals(userid,mobilenom,animalType,ranimalDob,animalAge);
				boolean flag1 = service.addAnimals(aa);
				target = "AnimalAdded.jsp";
				
			}catch(Exception e) {
				
				e.printStackTrace();
				
			}
			break;
			
		case "View Daily Milk Record":
			long mobileNo = Long.parseLong(request.getParameter("mobileNo"));
	        List<TakeMilkRecord> milkRecords = service.getMilkRecordsByMobileNo(mobileNo);
	        request.setAttribute("mk", milkRecords);
	        target = "ViewDailyMilkRecord.jsp";
			break;
			
		case "Request CheckUp":
			int userId = Integer.parseInt(request.getParameter("userId"));
			String username = request.getParameter("userName");
			long mobileno = Long.parseLong(request.getParameter("mobileNo"));
			String cowTagNo = request.getParameter("cowTagNo");
			String healthCondition =request.getParameter("healthCondition");
			String symptoms = request.getParameter("symptoms");
			String ongoingTreatment = request.getParameter("ongoingTreatment");
			String lastVaccinationDate = request.getParameter("lastVaccinationDate");
			String requestDate = request.getParameter("requestDate");
			String preference = request.getParameter("preference");
			SimpleDateFormat rmf = new SimpleDateFormat("yyyy-MM-dd");
		    try {
		        
		        Date rrequestDate = rmf.parse(requestDate);
		        AnimalCheckUp ac = new AnimalCheckUp(userId,username,mobileno,cowTagNo,healthCondition,symptoms,ongoingTreatment,lastVaccinationDate,rrequestDate,preference);
				boolean flag = service.requestAnimalCheckUp(ac);
				target = "RequestSuccessfull.jsp";
		        
		    } catch(Exception e) {
		        
		        e.printStackTrace();
		        
		    }
			break;
			
		case "Message":
			long mobileNum = Long.parseLong(request.getParameter("mobileNo"));
			List<TakeMilkRecord> milkRecord = service.getMilkRecordsByMobileNo(mobileNum);
			request.setAttribute("mk", milkRecord);
			List<AnimalCheckUp> ac2 = service.getAnimalCheckUpByMobileNo(mobileNum);
			request.setAttribute("ac", ac2);
			List<AddAnimals> animalList = service.getAnimalByMobileNo(mobileNum);
			request.setAttribute("anl", animalList);
			DFUser df = service.getUserbyMobileNo(mobileNum);
			request.setAttribute("df", df);
			target = "MessageBox.jsp";
			break;
			
		case "Update Password":
			String password = request.getParameter("passWord");
			DFUser dfu = new DFUser(password);
			boolean flag1 = service.updatePassword(dfu);
			target = "UserProfile.jsp";
			break;
			
		case "View Animals":
			long mobile = Long.parseLong(request.getParameter("mobileNo"));
			List<AddAnimals> animalsList = service.getAnimalByuserMobileNo(mobile);
			request.setAttribute("anl", animalsList);
			
		
		}
		RequestDispatcher rd = request.getRequestDispatcher(target);
		rd.forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
