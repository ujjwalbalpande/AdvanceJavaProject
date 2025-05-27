package com.ujjwal_pizza_panel;

import java.io.IOException;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;


@WebServlet("/display")
public class PizzaOrder extends GenericServlet 
{

	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException
	{
		String cardNO = req.getParameter("cc");
		String rCardNO = req.getParameter("cv");
		if (cardNO != null && cardNO.equals(rCardNO))
		{
            req.getRequestDispatcher("user.jsp").include(req, res);
        } else
        {
            req.getRequestDispatcher("invalid.jsp").include(req, res);
        }

	}

}
