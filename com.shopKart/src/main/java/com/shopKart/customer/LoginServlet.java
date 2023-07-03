package com.shopKart.customer;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Log")
public class LoginServlet extends HttpServlet{
	

	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException{
		String uname = req.getParameter("uname");
	
		String pass = req.getParameter("pass");
	
		boolean val = Validator.isValid(uname,pass);
		if(uname.equals("admin") && val==true){
			resp.sendRedirect("admin.jsp");
		}
		else if(val==true) {
			
			resp.sendRedirect("home.jsp");
		}
		else {
			resp.sendRedirect("login.jsp");
		}
		
		
	}
}