package com.staffing;
public class Staffing {
    private int eventId;
    private String eventName;
    private String customerReq;
    private String photographer;
    private String catering;
    private String decoration;
    private String security;
    private String technical;
    private String salaryRange;
    private String additionalEmployees;
    private String extraNotes;
    private String username;
    private String password;

    public Staffing(int eventId, String eventName, String customerReq, String photographer, String catering, String decoration, String security, String technical, String salaryRange, String additionalEmployees, String extraNotes, String username, String password) {
        this.eventId = eventId;
        this.eventName = eventName;
        this.customerReq = customerReq;
        this.photographer = photographer;
        this.catering = catering;
        this.decoration = decoration;
        this.security = security;
        this.technical = technical;
        this.salaryRange = salaryRange;
        this.additionalEmployees = additionalEmployees;
        this.extraNotes = extraNotes;
        this.username = username;
        this.password = password;
    }

	public int getEventId() {
		return eventId;
	}

	public String getEventName() {
		return eventName;
	}

	public String getCustomerReq() {
		return customerReq;
	}

	public String getPhotographer() {
		return photographer;
	}

	public String getCatering() {
		return catering;
	}

	public String getDecoration() {
		return decoration;
	}

	public String getSecurity() {
		return security;
	}

	public String getTechnical() {
		return technical;
	}

	public String getSalaryRange() {
		return salaryRange;
	}

	public String getAdditionalEmployees() {
		return additionalEmployees;
	}

	public String getExtraNotes() {
		return extraNotes;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}


}