package com.staffing;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.customer.DBConnect;

public class StaffingDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt=null;
	private static ResultSet rs =null;
	
	//Retrieving Data after user login

 public static List <Staffing> validate (String userName, String Password){
	 ArrayList<Staffing> staff = new ArrayList <> ();
	 
	 try {
		con = DBConnect.getConnection();
		stmt=con.createStatement();
		String sql = "select * from event_staffing where username = '" +userName+ "' and password = '" +Password+ "'";
		rs=stmt.executeQuery(sql);
		 
		 if(rs.next()) {
			int eventId= rs.getInt (1);
			 String eventName=rs.getString(2);
			 String customerReq=rs.getString(3);
			 String photographer=rs.getString(4);
			 String catering = rs.getString(5);
			 String decoration = rs.getString(6);
			 String security= rs.getString(7);
			 String technical=rs.getString(8);
			 String salaryRange=rs.getString(9);
			 String additionalEmployees = rs.getString(10);
			 String extraNotes=rs.getString(11);
			 String username = rs.getString(12);
			 String password= rs.getString(13);
			
			 Staffing s = new Staffing(eventId,eventName,customerReq,photographer,catering,decoration,security,technical,salaryRange,additionalEmployees,extraNotes,username,password);
			 staff.add(s);
		 }
		   
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	 
	 return staff;
 }
 
 //Assign Staff using form
	public static boolean insertStaff (String event_name,String customer_req,String photographer, String catering, String decoration, String security, String technical, String salary_range, String additional_employees, String extra_notes,String username,String password) {
		

	
				try {
					con = DBConnect.getConnection();
					stmt=con.createStatement();
					String sql ="INSERT INTO event_staffing (event_name, customer_req, photographer, catering, decoration, security, technical, salary_range, additional_employees, extra_notes, username, password) VALUES ('"+event_name+"','"+customer_req+"','"+photographer+"','"+catering+"','"+decoration+"','"+security+"','"+technical+"','"+salary_range+"','"+additional_employees+"','"+extra_notes+"','"+username+"','"+password+"')";
				
					int rs=stmt.executeUpdate(sql);


					
			      //sql values can be either 1 or 0
					//1 is success, 0 fail
				
					 
					
					if(rs > 0) {
						isSuccess = true;
					
					}else {
						isSuccess = false;
					}
				
					
				}
					
				catch(Exception e)
				{
					e.printStackTrace();
				}
				
				return isSuccess;
	}
	//Updating staffing form
	public static boolean updatestaff(String event_id,String event_name,String customer_req,String photographer, String catering, String decoration, String security, String technical, String salary_range, String additional_employees, String extra_notes,String username,String password) {
		
		
       try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "UPDATE event_staffing SET event_name='" +event_name+ "', customer_req='" +customer_req+ "', photographer='" +photographer+ "', catering='" +catering+ "', decoration='" +decoration+ "', security='" +security+ "', technical='" +technical+ "', salary_range='" +salary_range+ "', additional_employees='" +additional_employees+ "', extra_notes='" +extra_notes+ "', username='" +username+ "', password='" +password+ "' WHERE event_id='" +event_id+ "'";

			int rs=stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess=true;	
			}
			else {
				isSuccess=false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//Retrieving staffing details after inserting 
	public static List <Staffing> getstaffdetails (String userName){
		ArrayList <Staffing> staff= new ArrayList <>();
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "select * from event_staffing where username = '" +userName+ "'";
			rs=stmt.executeQuery(sql);
			 
			 while(rs.next()) {
				int eventId= rs.getInt (1);
				 String eventName=rs.getString(2);
				 String customerReq=rs.getString(3);
				 String photographer=rs.getString(4);
				 String catering = rs.getString(5);
				 String decoration = rs.getString(6);
				 String security= rs.getString(7);
				 String technical=rs.getString(8);
				 String salaryRange=rs.getString(9);
				 String additionalEmployees = rs.getString(10);
				 String extraNotes=rs.getString(11);
				 String username = rs.getString(12);
				 String password= rs.getString(13);
				
				 Staffing s = new Staffing(eventId,eventName,customerReq,photographer,catering,decoration,security,technical,salaryRange,additionalEmployees,extraNotes,username,password);
				 staff.add(s);
			 }
			   
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		
		return staff;
	}
	
	//Delete staffing required
	public static boolean deletestaff(String event_id) {
		int convId = Integer.parseInt(event_id);
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "delete from event_staffing where event_id='"+convId+"'";

			int r =stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		
		
		return isSuccess;
	}
	}