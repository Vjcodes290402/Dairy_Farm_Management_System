package com.sea.dfms.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.sea.dfms.bean.AddAnimals;
import com.sea.dfms.bean.AddUsers;
import com.sea.dfms.bean.AnimalCheckUp;
import com.sea.dfms.bean.DFEmployee;
import com.sea.dfms.bean.DFUser;
import com.sea.dfms.bean.TakeMilkRecord;
import com.sea.dfms.service.DFEmployeeService;

/**
 * Servlet implementation class DFEmployeeServlet
 */
public class DFEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DFEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		DFEmployeeService service = new DFEmployeeService();
		String target = "";
		String action = request.getParameter("action");
		
        if(action.equals("Login")) {
            
        	String employeeName = request.getParameter("employeeName");
            String employeeEmailId = request.getParameter("employeeEmailId");
            String passWord = request.getParameter("passWord");
            boolean f1 = service.validateUser(employeeName,employeeEmailId, passWord);
            if(f1) {
                
                HttpSession sn = request.getSession();
                sn.setAttribute("employeeName", employeeName);
                target = "DFEmployee.jsp";
                
            } else
                target = "Error.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(target);
            rd.forward(request, response);
            
        }
       else if(action.equals("Logout")) {
			
			HttpSession sn=request.getSession(false);
			sn.invalidate();
			response.sendRedirect("DFEmployeeLogin.jsp");
			
		}
        else {
		switch(action) {
		
		case "Sign Up":
		    String employeeName = request.getParameter("employeeName");
		    long employeeMobileNo = Long.parseLong(request.getParameter("employeeMobileNo"));
		    String employeeEmailId = request.getParameter("employeeEmailId");
		    String employeeAddress = request.getParameter("employeeAddress");
		    String gender = request.getParameter("gender");
		    String employeeDob = request.getParameter("employeeDob");
		    int employeeAge = Integer.parseInt(request.getParameter("employeeAge"));
		    String passWord = request.getParameter("passWord");
		    SimpleDateFormat rsmf = new SimpleDateFormat("yyyy-MM-dd");
		    try {
		        Date remployeeDob = rsmf.parse(employeeDob);
		        DFEmployee dfe = new DFEmployee(employeeName, employeeMobileNo, employeeEmailId, employeeAddress, gender, remployeeDob, employeeAge, passWord);
		        boolean flag = service.signUpDFEmployee(dfe);
		        target = "EmployeeSignUpSuccessfull.jsp";
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    break;
		    
		case "Get User Details":
			int userID1 = Integer.parseInt(request.getParameter("userId"));
			DFUser dud = service.getUserDetailById(userID1);
			request.setAttribute("uId", dud);
			request.setAttribute("uName", dud);
			request.setAttribute("uMobileNo", dud);
			target = "TakeMilkRecord.jsp";
			break;
			
		case "Take Milk Record":
		    int userId11 = Integer.parseInt(request.getParameter("userId"));
		    String username = request.getParameter("userName");
		    long mobileNo = Long.parseLong(request.getParameter("mobileNo"));
		    String recordDate = request.getParameter("recordDate");
		    String recordSession = request.getParameter("recordSession");
		    String milkQuantity = request.getParameter("milkQuantity");
		    String milkFatContent = request.getParameter("milkFatContent");
		    float milkRate = Float.parseFloat(request.getParameter("milkRate")); // Parsing milk rate directly from request parameter
		    SimpleDateFormat rmf = new SimpleDateFormat("yyyy-MM-dd");
		    try {
		        
		        Date rrecordDate = rmf.parse(recordDate);
		        TakeMilkRecord mk = new TakeMilkRecord(userId11,username,mobileNo,rrecordDate,recordSession,milkQuantity,milkFatContent,milkRate);
		        boolean flag2 = service.takeMilkRecord(mk);
		        target = "RecordAddedSuccessful.jsp";
		        
		    } catch(Exception e) {
		        
		        e.printStackTrace();
		        
		    }
		    break;
		    
		case "View User":
			ArrayList<AddUsers> uList = service.getAllUsers();
			request.setAttribute("au", uList);
			target = "ViewUser.jsp";
			break;
			
		case "View More":
			int userId = Integer.parseInt(request.getParameter("userId"));
			ArrayList<DFUser> userList = service.getUserById(userId);
			request.setAttribute("df", userList);
			target = "ViewMoreDetails.jsp";
			break;
			
		case "Message":
			ArrayList<DFUser> dflist = service.getuserDetails();
			request.setAttribute("df", dflist);
			ArrayList<AddAnimals> anList1 = service.getAllAnimals();
			request.setAttribute("an", anList1);
			target = "Message.jsp";
			break;
			
		case "View Animal":
			ArrayList<AddAnimals> anList = service.getAllAnimals();
			request.setAttribute("an", anList);
			target = "ViewAnimal.jsp";
			break;
			
		case "Search":
			int userid1 = Integer.parseInt(request.getParameter("userId"));;
			List<AddAnimals> animalList = service.getAnimalByUserId(userid1);
			request.setAttribute("anl", animalList);
			target = "SearchAnimal.jsp";
			break;
		    
		case "Milk Record List":
			ArrayList<TakeMilkRecord> mkList = service.getAllMilkRecords();
			request.setAttribute("mk", mkList);
			target = "ViewMilkRecord.jsp";
			break;
			
		case "Animal CheckUP Request List":
			ArrayList<AnimalCheckUp> acList = service.getAllAnimalCheckRequest();
			request.setAttribute("acList", acList);
			target = "ViewAnimalCheckUpRequest.jsp";
			break;
			
		case "Schedule Date":
			Long mobileNu = Long.parseLong(request.getParameter("mobileNo"));
			String requestDate = request.getParameter("requestDate");
			String scheduleStatus = request.getParameter("scheduleStatus");
			String scheduledDate = request.getParameter("scheduledDate");
			SimpleDateFormat mf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Date rrequestDate = mf.parse(requestDate);
				Date rscheduledDate = mf.parse(scheduledDate);
			AnimalCheckUp ac = new AnimalCheckUp(mobileNu,rrequestDate,scheduleStatus,rscheduledDate);
			boolean flag3 = service.modifyScheduleStatus(ac);
			target = "SuccessfulDateSheduled.jsp";
			}
			catch(Exception e) {
				
				e.printStackTrace();
				
			}
			break;
			
		case "Update Password":
			String password = request.getParameter("passWord");
			DFEmployee dfe = new DFEmployee(password);
			boolean flag4 = service.updatePassword(dfe);
			target = "EmployeeProfile.jsp";
			break;
			
		case "Get Report":
		    String month = request.getParameter("month");
		    try {
		        // Parse the month to create the start and end dates of the selected month
		        SimpleDateFormat monthFormat = new SimpleDateFormat("MM");
		        Date parsedMonth = monthFormat.parse(month);
		        Calendar cal = Calendar.getInstance();
		        cal.setTime(parsedMonth);
		        int year = Calendar.getInstance().get(Calendar.YEAR);  // Use the current year
		        cal.set(Calendar.YEAR, year);
		        cal.set(Calendar.DAY_OF_MONTH, 1);
		        Date startDate = cal.getTime();
		        cal.add(Calendar.MONTH, 1);
		        cal.add(Calendar.DAY_OF_MONTH, -1);
		        Date endDate = cal.getTime();

		        TakeMilkRecord tmk = new TakeMilkRecord(startDate, endDate);
		        ArrayList<TakeMilkRecord> reportList = service.getDFReport(startDate, endDate);
		        request.setAttribute("report", reportList);
		        target = "DFReport.jsp";
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    break;
		    
		case "Delete Records":
			int dfUserId = Integer.parseInt(request.getParameter("userId"));
            boolean flg = service.deleteAllRecordsByUserid(dfUserId);
            request.setAttribute("userId", dfUserId);
            target = "RecordDeletedSuccessFully.jsp";
            break;
		
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
