package com.staffing;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteStaff")
public class DeleteStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eventId= request.getParameter("event_id");
		boolean isTrue;
		
		isTrue= StaffingDBUtil.deletestaff(eventId);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher=request.getRequestDispatcher("staffing.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Staffing> staffdetails = StaffingDBUtil.getstaffdetails(eventId);
			request.setAttribute("staffdetails", staffdetails);
			RequestDispatcher dispatcher=request.getRequestDispatcher("staffread.jsp");
			dispatcher.forward(request, response);
		}
	}
	

}