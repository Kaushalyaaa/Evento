package com.event;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteEventServlet")
public class DeleteEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String id = request.getParameter("eveid");
		
		boolean isTrue;
		
		isTrue = NeweventDBUtil.deleteEvent(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("eventinsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Event> eveDetails = NeweventDBUtil.geteveDetails(id);
			request.setAttribute("eveDetails", eveDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("eventread.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
		
	}

}