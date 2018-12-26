package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.PostJobBean;
import com.mvc.dao.PostJobDao;

/**
 * Servlet implementation class PostJobServlet
 */
@WebServlet("/PostJobServlet")
public class PostJobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostJobServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String providerId=request.getParameter("providerId");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String companyName=request.getParameter("companyName");
		String description=request.getParameter("description");
		String location=request.getParameter("location");
		String emailId=request.getParameter("emailId");
		String websiteAddress=request.getParameter("websiteAddress");
		String mobileNumber=request.getParameter("mobileNumber");
		
		PostJobBean postjobbean=new PostJobBean();
		
		postjobbean.setProviderId(providerId);
		postjobbean.setName(name);
		postjobbean.setPassword(password);
		postjobbean.setCompanyName(companyName);
		postjobbean.setDescription(description);
		postjobbean.setLocation(location);
		postjobbean.setEmailId(emailId);
		postjobbean.setWebsiteAddress(websiteAddress);
		postjobbean.setMobileNumber(mobileNumber);
		
		PostJobDao postjobDao=new PostJobDao();
		
		String userRegistered=postjobDao.postjobUser(postjobbean);
		if(userRegistered.equals("SUCCESS"))
		{
		
			request.getRequestDispatcher("/JobDetails.jsp").forward(request, response);
		}
		else
		{
		
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/postJob.jsp").forward(request, response);
		}
		
	}

}
