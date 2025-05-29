package com.ujjwal.employee_info29may;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/info")
public class EmployeeServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		EmpBean eb = new EmpBean();
		eb.setId(req.getParameter("eid"));
		eb.setName(req.getParameter("name"));
		eb.setDept(req.getParameter("dept"));
		eb.setDesg(req.getParameter("desg"));
		eb.setSal(req.getParameter("sal"));
		eb.setEmail(req.getParameter("email"));
		eb.setPhone(Long.parseLong(req.getParameter("phone")));
		
		req.setAttribute("ab", eb);
		req.getRequestDispatcher("emp_info.jsp").forward(req, resp);;
		
	}
}
