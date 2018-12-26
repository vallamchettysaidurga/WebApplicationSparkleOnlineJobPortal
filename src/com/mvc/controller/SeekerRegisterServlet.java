 package com.mvc.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.SeekerRegisterBean;
import com.mvc.dao.SeekerRegisterDao;

/**
 * Servlet implementation class SeekerRegisterServlet
 */
@WebServlet("/SeekerRegisterServlet")
public class SeekerRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeekerRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method 
		System.out.println("in servlet doPost modified");		
		//String jobSeekerId = request.getParameter("jobSeekerId");  //Here we have to give same names as gave in HTML
		String jobSeekerId = request.getParameter("jobSeekerId");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String emailId = request.getParameter("emailId");
		String educationQualification = request.getParameter("educationQualification");
		System.out.println(educationQualification);
		String mobileNumber = request.getParameter("mobileNumber");
		String preferredLocation = request.getParameter("preferredLocation");
		String skills = request.getParameter("skills");
		String uploadResume=request.getParameter("uploadResume");
		InputStream is = null;
		/*Part part=(Part) request.getParts();
		 String uploadResume = extractUploadResume(part);
		 System.out.println(uploadResume);
		 if(uploadResume!=null && uploadResume.length()>0) {
			  is=part.getInputStream();
		  }
	*/
		
		
		SeekerRegisterBean registerbean =new SeekerRegisterBean();
		registerbean.setJobSeekerId(jobSeekerId);
		registerbean.setName(name);
		registerbean.setPassword(password);
		registerbean.setAddress(address);
		registerbean.setEmailId(emailId);
		registerbean.setEducationQualification(educationQualification);
		registerbean.setMobileNumber(mobileNumber);
		registerbean.setPreferredLocation(preferredLocation);
		registerbean.setSkills(skills);
		registerbean.setUploadResume(uploadResume);
		registerbean.setFileData(is);
		
		SeekerRegisterDao registerDao = new SeekerRegisterDao();
		//The core Logic of the Signup application is present here. We are going to insert user data in to the database
		String userRegistered=registerDao.registerUser(registerbean);
		System.out.println("aftet coming back");
		if(userRegistered.equals("SUCCESS"))
		{
			
			request.setAttribute("hmpg", true);
			request.getRequestDispatcher("/HomePage.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("srgt", false);
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/SeekerRegister.jsp").forward(request, response);
		}

	}


}
