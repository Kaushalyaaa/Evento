package com.customer;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CustomerDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Customer> validate(String userName,String password){
		
		ArrayList<Customer> cus= new ArrayList<>();
				
		//validate
		try{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql= "select * from customer where username='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String location = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				String additionalRequirements = rs.getString(7);
				String date = rs.getString(8);
				int guestcount = rs.getInt(9);
				int budget = rs.getInt(10);
				String mealpreference = rs.getString(11);
				
				Customer c = new Customer(id,name,email,location,userU,passU,additionalRequirements,date,guestcount,budget,mealpreference);
				cus.add(c);
			}
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return cus;
		
		}

	public static boolean insertcustomer(String name,String email,String location,String username,String password,String additionalRequirements,String date,String guestcount,String budget,String mealpreference) {
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
						
			String sql = "insert into customer values (0,'"+name+"','"+email+"','"+location+"','"+username+"','"+password+"','"+additionalRequirements+"','"+date+"','"+guestcount+"','"+budget+"','"+mealpreference+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
			
		return isSuccess;
}
	
	public static boolean updatecustomer(String id, String name, String email, String location, String username,String password,String additionalRequirements,String date,String guestcount,String budget,String mealpreference) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE customer SET name='" + name + "', email='" + email + "', location='" + location + "', username='" + username + "', password='" + password + "', additionalRequirements='" + additionalRequirements + "', date='" + date + "', guestcount='" + guestcount + "', budget='" + budget + "', mealpreference='" + mealpreference + "' "
					+ "WHERE id='" + id + "'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}	
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Customer> getCustomerDetails(String username){
		
//		int convertedID = Integer.parseInt(ID);
		
		ArrayList <Customer> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username = '"+username+"'";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String location = rs.getString(4);
				String userName = rs.getNString(5);
				String password = rs.getString(6);
				String additionalRequirements = rs.getString(7);
				String date = rs.getString(8);
				int guestcount = rs.getInt(9);
				int budget = rs.getInt(10);
				String mealpreference = rs.getString(11);
				
				Customer c = new Customer(id, name, email, location, userName, password, additionalRequirements, date, guestcount, budget, mealpreference);
				cus.add(c);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return cus;
	}
	
	public static boolean deleteCustomer(String id) {
		
		int convID = Integer.parseInt(id);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from customer where id='"+convID+"'";
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}





				

