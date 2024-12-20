package com.staffing;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


/**
 * Servlet implementation class NewServlet
 */
@WebServlet("/NewServlet")
public class NewServlet {
	public static HttpServlet createServlet(String servletType) {
		switch(servletType) {
		case "StaffingInsert":
			return new StaffingInsert();
		case "UpdateStaff":
			return new UpdateStaff();
		case "DeleteStaff":
			return new DeleteStaff();
		default:
				throw new IllegalArgumentException("Invalid servlet type:" + servletType);
    }
	}
	}