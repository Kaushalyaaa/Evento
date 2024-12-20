<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="UpdateEvent.css" />
<style> body{background-image: url('image/dbg.jpg');background-size:cover;background-repeat:no-repeat;background-position:center center;}
.container {
    width: 100%;
    height: 100vh; /* Set the height of the container to cover the entire viewport */
    display: flex;
    justify-content: center;
    align-items: center;
    backdrop-filter: blur(5px); /* Apply a blur effect to the background */
}

form {
    width: 300px; /* Set the width of the form */
    padding: 20px; /* Add padding for content */
    background-color: rgba(255, 255, 255, 0.8); /* Set a semi-transparent white background for the form */
    border-radius: 10px; /* Add border radius for rounded corners */
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); /* Add box shadow for depth */
}
     </style>
</head>
<body>
 
<center> <h1> Delete Customer Account </h1> </center>
<%
    String id = request.getParameter("id");
    String eventName = request.getParameter("eventName");
    String eventDate = request.getParameter("eventDate");
    String eventTime = request.getParameter("eventTime");
    String location = request.getParameter("location");
    String theme = request.getParameter("theme");
    String noOfAttendee = request.getParameter("noOfAttendee");
    String username = request.getParameter("uname");
    String password = request.getParameter("pass");
%>

<form action="Edelete" method="post">
    Event ID: <input type="text" name="eveid" value="<%= id %>" readonly><br>
    Event Name: <input type="text" name="eventName" value="<%= eventName %>" readonly><br>
    Event Date: <input type="date" name="eventDate" value="<%= eventDate %>" readonly><br>
    Event Time: <input type="time" name="eventTime" value="<%= eventTime %>" readonly><br>
    Event Location: <input type="text" name="location" value="<%= location %>" readonly><br>
    Event Theme: <input type="text" name="theme" value="<%= theme %>" readonly><br>
    No of Attendees: <input type="text" name="noOfAttendee" value="<%= noOfAttendee %>" readonly><br>
    User Name: <input type="text" name="uname" value="<%= username %>" readonly><br>
    
   
    <input type="submit" name="submit" value="Delete my account"><br>
</form>

</body>
</html>