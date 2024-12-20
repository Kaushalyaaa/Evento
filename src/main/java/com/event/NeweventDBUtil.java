package com.event;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.customer.DBConnect;

public class NeweventDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<Event> validate(String username,String password){
		ArrayList<Event> eve = new ArrayList<>();
		
	
		
		//validate
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="select * from events where username='"+username+"' and password='"+password+"'";
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String eventName = rs.getString(2);
				String eventDate = rs.getString(3);
				String eventTime = rs.getString(4);
				String location = rs.getString(5);
				String theme = rs.getString(6);
				int noOfAttendee = rs.getInt(7);
				String userU = rs.getString(8);
				String passU = rs.getString(9);
				
				Event ee  = new Event(id,eventName,eventDate,eventTime,location,theme,noOfAttendee,userU,passU);
				eve.add(ee);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
			
		}
		
		return eve;
		
	}
	

	
	public static boolean insertevent(String eventName,String eventDate,String eventTime,String location,String theme,String noOfAttendee,String username,String password) {
		boolean isSuccess = false;

		
		try {	
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="insert into events values(0,'"+eventName+"','"+eventDate+"','"+eventTime+"','"+location+"','"+theme+"','"+noOfAttendee+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			
			
			if(rs>0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateEvent(String id,String eventName,String eventDate,String eventTime,String location,
			String theme, String noOfAttendee,String username,String password) {
		
	
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update events set eventName='"+eventName+"',eventDate='"+eventDate+"',eventTime='"+eventTime+"',location='"+location+"',theme='"+theme+"',noOfAttendee='"+noOfAttendee+"', username='"+username+"', password='"+password+"'"
					+ " where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
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
	
	public static List<Event> geteveDetails(String username){
		
		
		
		ArrayList<Event> eve = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from events where username='"+username+"' ";
			rs = stmt .executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String eventName = rs.getString(2);
				String eventDate = rs.getString(3);
				String eventTime = rs.getString(4);
				String location = rs.getString(5);
				String theme = rs.getString(6);
				int noOfAttendee = rs.getInt(7);
				String userName = rs.getString(8);
				String password = rs.getString(9);
				
				
				Event ee = new Event(id,eventName,eventDate,eventTime,location,theme,noOfAttendee,userName,password);
				eve.add(ee);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return eve;
	}
   
	public static boolean deleteEvent(String id) {
		 
		int convId = Integer.parseInt(id);
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="delete from events where id='"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
        }
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
		return isSuccess;
		
	}
	
}