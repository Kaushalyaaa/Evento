package com.event;

public class Event {
	    private int id;
	    private String eventName;
	    private String eventDate;
	    private String eventTime;
	    private String location;
	    private String theme;
	    private int noOfAttendee;
	    private String username;
	    private String password;
		public Event(int id, String eventName, String eventDate, String eventTime, String location, String theme,
				 int noOfAttendee, String username, String password) {
			super();
			this.id = id;
			this.eventName = eventName;
			this.eventDate = eventDate;
			this.eventTime = eventTime;
			this.location = location;
			this.theme = theme;
			this.noOfAttendee = noOfAttendee;
			this.username = username;
			this.password = password;
		}
		public int getId() {
			return id;
		}
		
		public String getEventName() {
			return eventName;
		}
	
		public String getEventDate() {
			return eventDate;
		}
		
		public String getEventTime() {
			return eventTime;
		}
		
		public String getLocation() {
			return location;
		}
		
		public String getTheme() {
			return theme;
		}
		
		public int getNoOfAttendee() {
			return noOfAttendee;
		}
		
		public String getUsername() {
			return username;
		}
		
		public String getPassword() {
			return password;
		}
		
}