package com.customer;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String location = request.getParameter("location");
		String username = request.getParameter("uid");
		String password = request.getParameter("pwd");
		String additionalRequirements = request.getParameter("additionalRequirements");
		String date = request.getParameter("date");
		String guestcount = request.getParameter("guestcount");
		String budget = request.getParameter("budget");
		String mealpreference = request.getParameter("mealpreference");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(name, email, location, username, password, additionalRequirements, date, guestcount, budget, mealpreference);
		
		if(isTrue == true) {
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(username);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
