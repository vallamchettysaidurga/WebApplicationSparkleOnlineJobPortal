package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.PostJobBean;
import com.mvc.util.DBConnection;

public class PostJobDao {
     public String postjobUser(PostJobBean postjobbean) {
    	 String providerId=postjobbean.getProviderId();
		 String name=postjobbean.getName();
		 String password=postjobbean.getPassword();
		 String companyName=postjobbean.getCompanyName();
		 String description=postjobbean.getDescription();
		 String location=postjobbean.getLocation();
		 String emailId=postjobbean.getEmailId();
		 String websiteAddress=postjobbean.getWebsiteAddress();
		 String mobileNumber=postjobbean.getMobileNumber();
		 
		 Connection con=null;
		 PreparedStatement preparedstatement=null;
		 
		 try
		 {
			 con=DBConnection.createConnection();
			 String query="Insert into employer(providerId,name,password,companyName,description,location,emailId,websiteAddress,mobileNumber)values(?,?,?,?,?,?,?,?,?)";
			 preparedstatement=con.prepareStatement(query);
			 
			 preparedstatement.setString(1, providerId);
			 preparedstatement.setString(2, name);
			 preparedstatement.setString(3, password);
			 preparedstatement.setString(4, companyName);
			 preparedstatement.setString(5, description);
			 preparedstatement.setString(6, location);
			 preparedstatement.setString(7, emailId);
			 preparedstatement.setString(8, websiteAddress);
			 preparedstatement.setString(9, mobileNumber);
			 
			    System.out.println(providerId);
				System.out.println(name);
				System.out.println(password);
				System.out.println(companyName);
				System.out.println(description);
				System.out.println(location);
				System.out.println(emailId);
				System.out.println(websiteAddress);
				System.out.println(mobileNumber);
				
				int i= preparedstatement.executeUpdate();
				
				if (i!=0)	

				
					return "SUCCESS";
				
			}
			catch (SQLException e)
			{
				e.printStackTrace();
				
			}
			return "SUCCESS";

           }
	}
