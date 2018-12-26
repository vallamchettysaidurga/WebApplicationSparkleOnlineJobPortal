package com.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mvc.bean.SeekerLoginBean;
import com.mvc.bean.SeekerRegisterBean;
import com.mvc.util.DBConnection;

public class SeekerLoginDao {
	public String authenticateUser(SeekerLoginBean loginbean)
	{
		
		String name =loginbean.getName();
		String password =loginbean.getPassword();
		
		 Connection con =null;
		 Statement statement=null;
		 ResultSet resultset=null;
		 System.out.println("in authenticate new");
		 String nameDB=" ";
		 String passwordDB=" ";
		 System.out.println(password);
		 try {
				con = DBConnection.createConnection();
				System.out.println("connected");
				statement =con.createStatement();
				System.out.println("1111111...");
				resultset = statement.executeQuery("select name ,password from jobseeker where "
						+ "name='" + name + "'and password = '" + password +"'");
				if(resultset.next()==true)
				{
					System.out.println("opened resultset " + name);
					System.out.println(password);
					System.out.println("record found..");
					return "SUCCESS"; ////If the user entered values are already present in database, which means user has already registered so I will return SUCCESS message.
					
				}
				else
					
					return "Invalid user credentials";
			}
					catch(SQLException e)
					{
					e.printStackTrace();
					}
		return "SUCCESS";
		 // Just returning appropriate message otherwise
	}
	}			
				
		
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		
	