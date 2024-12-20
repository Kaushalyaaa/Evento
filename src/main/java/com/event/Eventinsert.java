package com.event;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Eventinsert")
public class Eventinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eventName=request.getParameter("name");
		String eventDate=request.getParameter("date");
		String eventTime=request.getParameter("time");
		String location=request.getParameter("location");
		String theme=request.getParameter("theme");
		String noOfAttendee=request.getParameter("noOfAttendee");
		String username=request.getParameter("uid");
		String password=request.getParameter("psw");
		
		if(eventName.isEmpty() || eventDate.isEmpty() || eventTime.isEmpty() || location.isEmpty() || theme.isEmpty() || noOfAttendee.isEmpty()
			    || username.isEmpty() || password.isEmpty()) {

			    request.setAttribute("error", "All fields are required. Please fill in all the fields.");
			    RequestDispatcher dis= request.getRequestDispatcher("unsuccess.jsp");
			    dis.forward(request, response);
			}

		
		boolean isTrue;
		
		isTrue=NeweventDBUtil.insertevent(eventName, eventDate, eventTime, location, theme,noOfAttendee, username, password);
		
		if(isTrue == true) {
			List<Event> eveDetails = NeweventDBUtil.geteveDetails(username);
			request.setAttribute("eveDetails", eveDetails);
			
			RequestDispatcher dis =request.getRequestDispatcher("eventread.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}