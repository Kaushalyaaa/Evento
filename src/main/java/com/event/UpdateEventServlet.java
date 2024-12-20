
package com.event;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateEventServlet")
public class UpdateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("eveid");
		String eventName = request.getParameter("eventName");
		String eventDate = request.getParameter("eventDate");
		String eventTime = request.getParameter("eventTime");
		String location = request.getParameter("location");
		String theme = request.getParameter("theme");
		String noOfAttendee = request.getParameter("noOfAttendee");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		
		boolean isTrue;
		
		isTrue = NeweventDBUtil.updateEvent(id, eventName, eventDate, eventTime, location, theme, noOfAttendee, username, password);
		if(isTrue == true) {
			
			List<Event> eveDetails = NeweventDBUtil.geteveDetails(username);
			request.setAttribute("eveDetails", eveDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("eventread.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<Event> eveDetails = NeweventDBUtil.geteveDetails(username);
			request.setAttribute("eveDetails", eveDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("eventread.jsp");
			dis.forward(request, response);
			
		}
		
	}

}