package com.details;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.DBConnect;

public class ExhibitorDB {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Method to retrieve customer details based on category
	public static List<Exhibitor> getCustomerDetails(String Category){
		ArrayList<Exhibitor> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM exhibitor WHERE category='"+Category+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String imgFileName = rs.getString(5);
				String description = rs.getString(6);
				String category = rs.getString(7);
				
				Exhibitor c = new Exhibitor(id, name, email, phone, imgFileName, description, category);
				cus.add(c);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	public static boolean insertcustomer(String name, String email, String phone, String image, String description, String category) {
		boolean isSuccess = false;
		
		Connection connection = null;
		
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "INSERT INTO exhibitor VALUES (0, '"+name+"', '"+email+"', '"+phone+"', '"+image+"', '"+description+"', '"+category+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else
					isSuccess = false;
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
	}
	
	//update
	public static boolean updatecustomer(String id, String name, String email, String phone, String image, String description, String category) {
		boolean isSuccess = false;
		
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "UPDATE exhibitor set name = '"+name+"', email='"+email+"', phone='"+phone+"', image='"+image+"', description='"+description+"', category='"+category+"' WHERE id='"+id+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else
					isSuccess = false;
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
	}
	
	//Delete
	public static boolean deletecustomer(String id) {
		int convId = Integer.parseInt(id);
		boolean isSuccess = false;
	
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "DELETE FROM exhibitor WHERE id='"+convId+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else
					isSuccess = false;
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
	}
	
}