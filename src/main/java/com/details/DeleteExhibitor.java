package com.details;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteExhibitor
 */
@WebServlet("/DeleteExhibitor")
public class DeleteExhibitor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = ExhibitorDB.deletecustomer(id);
		
		if(isTrue == true){
			
			List<Exhibitor> cusDetails = ExhibitorDB.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);

			RequestDispatcher dis = request.getRequestDispatcher("createCustomer.jsp");
			dis.forward(request, response);
		}
		
		else{
			
			List<Exhibitor>cusDetails = ExhibitorDB.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);

			RequestDispatcher dis2 = request.getRequestDispatcher("DeleteExhibitor.jsp");
			dis2.forward(request, response);
			}
	}



}