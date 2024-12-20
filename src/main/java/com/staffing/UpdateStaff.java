package com.staffing;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateStaff")
public class UpdateStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eventId= request.getParameter ("event_id");
		String eventName=request.getParameter("event_name");
		String customerReq=request.getParameter("customer_req");
		String photographer=request.getParameter("photographer");
		String catering = request.getParameter("catering");
		String decoration = request.getParameter("decoration");
		String security= request.getParameter("security");
		String technical=request.getParameter("technical");
		String salaryRange=request.getParameter("salary_range");
		String additionalEmployees = request.getParameter("additional_employees");
		String extraNotes=request.getParameter("extra_notes");
		String username = request.getParameter("username");
		String password= request.getParameter("password");
		
		///Check if any required field is empty
				if(eventName.isEmpty() || customerReq.isEmpty() || photographer.isEmpty() || catering.isEmpty() || decoration.isEmpty() || security.isEmpty()
						|| technical.isEmpty() || salaryRange.isEmpty() || additionalEmployees.isEmpty() || username.isEmpty() || password.isEmpty()) {
					
					request.setAttribute("error", "All field are required.Please fill in all the fields.");
					RequestDispatcher dis= request.getRequestDispatcher("unsuccess.jsp");
					dis.forward(request, response);
				}
		
		boolean isTrue;

		isTrue = StaffingDBUtil.updatestaff(eventId, eventName, customerReq, photographer, catering, decoration, security, technical, salaryRange, additionalEmployees, extraNotes, username, password);
		
		if(isTrue == true) {
			List<Staffing> staffdetails = StaffingDBUtil.getstaffdetails(username);
			request.setAttribute("staffdetails", staffdetails);
			
			RequestDispatcher dis =request.getRequestDispatcher("staffread.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Staffing> staffdetails = StaffingDBUtil.getstaffdetails(username);
			request.setAttribute("staffdetails", staffdetails);
		RequestDispatcher dis =request.getRequestDispatcher("unsuccess.jsp");
		dis.forward(request, response);
	}
		}	
	}