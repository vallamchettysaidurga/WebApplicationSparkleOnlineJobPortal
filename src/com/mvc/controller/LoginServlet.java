package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.SeekerLoginBean;
import com.mvc.bean.SeekerRegisterBean;
import com.mvc.dao.SeekerLoginDao;
import com.mvc.dao.SeekerRegisterDao;

/**
 * Servlet implementation class SeekerLoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("in do post of login servlet");

		String name = request.getParameter("name");
		String password = request.getParameter("password");

		SeekerLoginBean loginbean =new SeekerLoginBean();
		loginbean.setName(name);
		loginbean.setPassword(password);
		
      SeekerLoginDao loginDao = new SeekerLoginDao();
		String userValidate = loginDao.authenticateUser(loginbean); //Calling authenticateUser function
		 
		if(userValidate.equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
		 {
		 request.setAttribute("login", true); //.ge setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
		 request.getRequestDispatcher("/jobsPage.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
		 }
		 else
		 {
		 request.setAttribute("sgn", false); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
		 request.setAttribute("errMessage", userValidate);
		 request.getRequestDispatcher("/SeekerLogin.jsp").forward(request, response);//forwarding the request
		 }
		
	}

}

