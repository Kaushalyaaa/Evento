package com.details;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/input")
@MultipartConfig
public class InsertCustomer extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		Part file=request.getPart("image");
		String image=file.getSubmittedFileName();//get selected image file name
		String uploadPath="C:/Users/SundarBanu/eclipse-workspace/Event/src/main/webapp/image/"+image; //upload path where we have to upload our actual image
		String description=request.getParameter("description");
		String category = request.getParameter("category");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
	
	boolean isTrue = false;

	//Validate form fields
	if(phone.length() <=10) { //Add phone validation

	//If all fields are not empty and phone number is not greater than 10 digits, display an error message and redirect back to the form page
	isTrue = ExhibitorDB.insertcustomer(name, email, phone, image, description, category);
	}
	else{
		//If any field is empty or phone number is greater than 10 digits, display an error message and redirect back to the form page
		out.println("<script type='text/javascript'>");
		out.println("alert('Phone number should be maximum 10 digits');");
		out.println("location='createCustomer.jsp'");
		out.println("</script>");
		return; //Stop further execution
	}

	try
	{
	FileOutputStream fos=new FileOutputStream(uploadPath);
	InputStream is=file.getInputStream();
	
	byte[] data=new byte[is.available()];
	is.read(data);
	fos.write(data);
	fos.close();
	}
		catch(Exception e)
		{
		e.printStackTrace();
		}
	
		if(isTrue == true){
			List<Exhibitor>cusDetails = ExhibitorDB.getCustomerDetails(category);
			request.setAttribute("cusDetails", cusDetails);
	
			RequestDispatcher dis = request.getRequestDispatcher("readCustomer.jsp");
			dis.forward(request, response);
		}else{
			List<Exhibitor>cusDetails = ExhibitorDB.getCustomerDetails(category);
			request.setAttribute("cusDetails", cusDetails);
	
			RequestDispatcher dis2 = request.getRequestDispatcher("createCustomer.jsp");
			dis2.forward(request, response);
			}
		}
	}