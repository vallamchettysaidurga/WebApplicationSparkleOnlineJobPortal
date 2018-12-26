package com.mvc.dao;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.Part;

import com.mvc.bean.SeekerRegisterBean;
import com.mvc.util.DBConnection;

public class SeekerRegisterDao {

	public String registerUser(SeekerRegisterBean registerbean)
	{
		String jobSeekerId = registerbean.getJobSeekerId();
		String name =registerbean.getName();
		String password =registerbean.getPassword();
		String address =registerbean.getAddress();
		String emailId =registerbean.getEmailId();
		String educationQualification =registerbean.getEducationQualification();
		System.out.println(educationQualification);
		String mobileNumber = registerbean.getMobileNumber();
		String preferredLocation =registerbean.getPreferredLocation();
		String skills = registerbean.getSkills();
		String uploadResume=registerbean.getUploadResume();
		InputStream is = registerbean.getFileData();
		//Blob part=registerbean.getFileData();
		Connection con =null;
		PreparedStatement preparedstatement=null;
		
		try
		{
			con=DBConnection.createConnection();
			System.out.println("in tomcat 8.5");
			String Query = "Insert into jobSeeker(jobSeekerId,name,password,address,emailId,educationQualification,mobileNumber,preferredLocation,skills,uploadResume)values(?,?,?,?,?,?,?,?,?,?)";
			//String Query = "Insert into jobSeeker(jobSeekerId,name,password,address,emailId,educationQualification,mobileNumber,preferredLocation,skills,uploadResume,filedata)values(?,?,?,?,?,?,?,?,?,?,?)";
			
			preparedstatement =con.prepareStatement(Query);
		
			preparedstatement.setString(1, jobSeekerId);
			preparedstatement.setString(2, name);
			preparedstatement.setString(3, password);
			preparedstatement.setString(4, address);
			preparedstatement.setString(5, emailId);
			preparedstatement.setString(6, educationQualification);
			preparedstatement.setString(7, mobileNumber);
			preparedstatement.setString(8, preferredLocation);
			preparedstatement.setString(9, skills);
			preparedstatement.setString(10, uploadResume);
			//preparedstatement.setBlob(11,is);
			 
			System.out.println(jobSeekerId);
			System.out.println(name);
			System.out.println(password);
			System.out.println(address);
			System.out.println(emailId);
			System.out.println(educationQualification);
			System.out.println(mobileNumber);
			System.out.println(preferredLocation);
			System.out.println(skills);
			System.out.println(uploadResume);
            System.out.println("added newly");
			
            int i = preparedstatement.executeUpdate();
            System.out.println("records added..." +i);
			if(i!=0)
				return "SUCCESS";
		
			}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Oops..Something went wrong there..!";
	  }

}