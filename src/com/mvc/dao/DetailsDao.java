package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.JobDetailsBean;
import com.mvc.util.DBConnection;

public class DetailsDao {
	
	public String detailsUser(JobDetailsBean detailsbean)
	{
		//String providerId=detailsbean.getProviderId();
		String jobId=detailsbean.getJobId();
	    String jobTitle=detailsbean.getJobTitle();
	    String categeory=detailsbean.getCategeory();
	    String description=detailsbean.getDescription();
	    String jobLocation=detailsbean.getJobLocation();
	    String jobType=detailsbean.getJobType();
	    String jobRole=detailsbean.getJobRole();
	    
	    Connection con =null;
		PreparedStatement preparedstatement=null;
		
		try
		{
			con=DBConnection.createConnection();
			String Query ="Insert into jobDetails(jobId,jobTitle,categeory,description,jobLocation,jobType,jobRole)values(?,?,?,?,?,?,?)";
	        
			preparedstatement =con.prepareStatement(Query);
            
			//preparedstatement.setString(1, providerId);
			preparedstatement.setString(1, jobId);
			preparedstatement.setString(2, jobTitle);
			preparedstatement.setString(3, categeory);
			preparedstatement.setString(4, description);
			preparedstatement.setString(5, jobLocation);
			preparedstatement.setString(6, jobType);
			preparedstatement.setString(7, jobRole);
			
			//System.out.println(providerId);
			System.out.println(jobId);
			System.out.println(jobTitle);
			System.out.println(categeory);
			System.out.println(description);
			System.out.println(jobLocation);
			System.out.println(jobType);
			System.out.println(jobRole);
			
			int i=preparedstatement.executeUpdate(); 
			if (i!=0)

			return "SUCCESS";
			
		}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	return "Oops..Something went wrong there..!";
  }
}

