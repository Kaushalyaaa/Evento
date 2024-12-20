package com.customer;

public class Customer {
	
	private int id;
	private String name;
	private String email;
	private String location;
	private String userName;
	private String password;
	private String additionalRequirements;
	private String date;
	private int guestcount;
	private int budget;
	private String mealpreference;
	
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getlocation() {
		return location;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
	
	public String getadditionalRequirements() {
		return additionalRequirements;
	}
	
	public String getdate() {
		return date;
	}
	
	public int getguestcount() {
		return guestcount;
	}
	public int getbudget() {
		return budget;
	}
	public String getmealpreference() {
		return mealpreference;
	}
	
	

	public Customer(int id, String name, String email, String location, String userName, String password,String additionalRequirements,String date,int guestcount,int budget,String mealpreference) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.location = location;
		this.userName = userName;
		this.password = password;
		this.additionalRequirements = additionalRequirements;
		this.date = date;
		this.guestcount = guestcount;
		this.budget = budget;
		this.mealpreference = mealpreference;
	}
}
