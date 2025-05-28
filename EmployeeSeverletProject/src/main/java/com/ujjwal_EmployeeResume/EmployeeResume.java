package com.ujjwal_EmployeeResume;

import java.io.IOException;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet("/dis")
public class EmployeeResume extends HttpServlet
{

	public void doPost(ServletRequest req, ServletResponse res) throws ServletException, IOException
	{
		
		req.getRequestDispatcher("display.jsp").forward(req, res);
	}

	
}
