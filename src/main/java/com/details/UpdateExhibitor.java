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
 * Servlet implementation class UpdateExhibitor
 */
@WebServlet("/UpdateExhibitor")
public class UpdateExhibitor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String image = request.getParameter("image");
		String description = request.getParameter("description");
		String category = request.getParameter("category");
	
		boolean isTrue;

		isTrue = ExhibitorDB.updatecustomer(id, name, email, phone, image, description, category);

	if(isTrue == true){
		
		List<Exhibitor>cusDetails = ExhibitorDB.getCustomerDetails(category);
		request.setAttribute("cusDetails", cusDetails);

		RequestDispatcher dis = request.getRequestDispatcher("readCustomer.jsp");
		dis.forward(request, response);
	}
	
	else{
		List<Exhibitor>cusDetails = ExhibitorDB.getCustomerDetails(category);
		request.setAttribute("cusDetails", cusDetails);

		RequestDispatcher dis = request.getRequestDispatcher("updateExhibitor.jsp");
		dis.forward(request, response);
		}
	}
	
}