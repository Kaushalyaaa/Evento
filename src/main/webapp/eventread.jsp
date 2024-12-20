<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Account</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('image/w19.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: black;
        }

        table {
            width: 80%; /* Adjust as needed */
            border-collapse: collapse;
            margin: 20px auto; /* Center the table horizontally and add margin on top */
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for depth */
        }

        th, td {
            padding: 12px; /* Increase padding for better spacing */
            border: 2px solid #ccc; /* Increase border thickness for a solid look */
            text-align: left;
        }

        th {
            background-color: #ea428b; /* Solid header background color */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light grey background for even rows */
        }

        tr:hover {
            background-color: #ddd; /* Slightly darker background on hover */
        }

        a {
            text-decoration: none;
            color: #4CAF50; /* Link color */
        }

        input[type="button"] {
            background-color: #ff3366;
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #ff0033; /* Slightly darker color on hover */
        }
    </style>
</head>

</head>
</head>
<body>

<h1>Event Details</h1>
<table border="1">
    <tr>
        <th>Event ID</th>
        <th>Event Name</th>
        <th>Event Date</th>
        <th>Event Time</th>
        <th>Event Location</th>
        <th>Event Theme</th>
        <th>No of Attendees</th>
        <th>User Name</th>
        <th>Password</th>
        
    </tr>
    <c:forEach var="eve" items="${eveDetails}">
    
    
    <c:set var="id" value="${eve.id}" />
    <c:set var="eventName" value="${eve.eventName}" />
    <c:set var="eventDate" value="${eve.eventDate}" />
    <c:set var="eventTime" value="${eve.eventTime}" />
    <c:set var="location" value="${eve.location}" />
    <c:set var="theme" value="${eve.theme}" />
    <c:set var="noOfAttendee" value="${eve.noOfAttendee}" />
    <c:set var="username" value="${eve.username}" />
    <c:set var="password" value="${eve.password}" />
    
    
        <tr>
            <td>${eve.id}</td>
            <td>${eve.eventName}</td>
            <td>${eve.eventDate}</td>
            <td>${eve.eventTime}</td>
            <td>${eve.location}</td>
            <td>${eve.theme}</td>
            <td>${eve.noOfAttendee}</td>
            <td>${eve.username}</td>
            <td>${eve.password}</td>
        </tr>
    </c:forEach>
</table>
     <c:url value="updateEvent.jsp" var="eveupdate">
       <c:param name="id" value="${id}" />
       <c:param name="eventName" value="${eventName}" />
       <c:param name="eventDate" value="${eventDate}" />
       <c:param name="eventTime" value="${eventTime}" />
       <c:param name="location" value="${location}" />
       <c:param name="theme" value="${theme}" />
       <c:param name="noOfAttendee" value="${noOfAttendee}" />
       <c:param name="uname" value="${username}" />
       <c:param name="pass" value="${password}" />
       
     </c:url>
     <a href="${eveupdate}">
     <br><input type="button" name="update" value="Update My data">
     </a>
     
    
     <c:url value="deleteEvent.jsp" var="evedelete">
       <c:param name="id" value="${id}" />
       <c:param name="eventName" value="${eventName}" />
       <c:param name="eventDate" value="${eventDate}" />
       <c:param name="eventTime" value="${eventTime}" />
       <c:param name="location" value="${location}" />
       <c:param name="theme" value="${theme}" />
       <c:param name="noOfAttendee" value="${noOfAttendee}" />
       <c:param name="uname" value="${username}" />
       <c:param name="pass" value="${password}" />
     
     
     </c:url>
     <a href="${evedelete}">
     <input type="button" name="delete" value="Delete My Account">
     </a>
     


</body>
</html>