package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.JobDetailsBean;
import com.mvc.dao.DetailsDao;

/**
 * Servlet implementation class DetailsServlet
 */
@WebServlet("/DetailsServlet")
public class DetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailsServlet() {
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
		// TODO Auto-generated method stub
		//String providerId=request.getParameter("providerId");
		String jobId=request.getParameter("jobId");
		String jobTitle=request.getParameter("jobTitle");
		String categeory=request.getParameter("categeory");
		String description=request.getParameter("description");
		String jobLocation=request.getParameter("jobLocation");
		String jobType=request.getParameter("jobType");
		String jobRole=request.getParameter("jobRole");
		
		JobDetailsBean detailsbean=new JobDetailsBean ();
		//detailsbean.setProviderId(providerId);
		detailsbean.setJobId(jobId);
		detailsbean.setJobTitle(jobTitle);
		detailsbean.setCategeory(categeory);
		detailsbean.setDescription(description);
		detailsbean.setJobLocation(jobLocation);
		detailsbean.setJobType(jobType);
		detailsbean.setJobRole(jobRole);
		
		DetailsDao detailsDao =new DetailsDao();
		String userRegistered=detailsDao.detailsUser(detailsbean);
		if(userRegistered.equals("Success"))
		{
			request.setAttribute("jpage",true);
			request.getRequestDispatcher("/jobsPage.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("job",false);
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/JobDetails.jsp").forward(request, response);
		
		}
		
	}

}
