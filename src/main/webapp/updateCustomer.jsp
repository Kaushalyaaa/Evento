<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="updateCustomer.css"/>
</head>

<body>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.ParseException" %>

<%
	String id =request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String location = request.getParameter("location");
	String userName = request.getParameter("uname");
	String password = request.getParameter("pass");
	String additionalRequirements = request.getParameter("additionalRequirements");
    String date = request.getParameter("date");
    String guestcount = request.getParameter("guestcount");
    String budget = request.getParameter("budget");
    String mealpreference = request.getParameter("mealpreference");
%>
		<form action="UpdateCustomerServlet" method="post">
			Customer ID<input type = "text" name="cusid" value="<%= id %>"><br>
			Name<input type = "text" name="name" value="<%= name %>"><br>
			Email<input type = "text" name="email" value="<%= email %>"><br>
			Location<input type = "text" name="location" value="<%= location %>"><br>
			User Name<input type = "text" name="uname" value="<%= userName %>"><br>
			Password<input type = "password" name="pass" value="<%= password %>"><br>
			<label for="additionalRequirements">Special Services:</label>
				<select name="additionalRequirements" id="specialServices">
					<option value="none" <%= additionalRequirements.equals("none") ? "selected" : "" %>>None</option>
		  			<option value="catering"<%= additionalRequirements.equals("catering") ? "selected" : "" %>>Catering</option>
 		  			<option value="photography" <%= additionalRequirements.equals("photography") ? "selected" : "" %>>Photography</option>
  		  			<option value="music" <%= additionalRequirements.equals("music") ? "selected" : "" %>>Music</option>
          			<option value="decoration" <%= additionalRequirements.equals("decoration") ? "selected" : "" %>>Decoration</option>
          			<option value="security" <%= additionalRequirements.equals("security") ? "selected" : "" %>>Security</option>
    			</select><br>
			Date<input type = "date" name="date" value="<%= date %>"><br>
			Number of Guests<input type = "number" name ="guestcount" value="<%= guestcount %>"><br>
			Budgetary Allocation<input type = "number" name ="budget" value="<%= budget %>"><br>
			Meal Preference<input type="text" name="mealpreference" value="<%= mealpreference %>"><br>
			
			<input type="submit" name="submit" value="Done"><br>
			
		</form>
<script>

//Validate name
function validateName(name) {
var re = /^[a-zA-Z\s]*$/;
return re.test(name);
}

//Validate email
function validateEmail(email) {
var re = /\S+@\S+\.\S+/;
return re.test(email);
}

//Validate password
function validatePassword(password) {
	return password.length >= 8;
}

//Validate guest count
function validateGuestCount(count) {
	return count <= 5000;
}

function handleSubmit() {
	var nameInput = document.getElementById('name');
	var emailInput = document.getElementById('email');
	var passwordInput = document.getElementById('pwd');
	var guestCountInput = document.getElementById('guestcount');

	var name = nameInput.value.trim();
	var email = emailInput.value.trim();
	var password = passwordInput.value.trim();
	var guestCount = parseInt(guestCountInput.value.trim(), 10);

	if (!validateName(name)) {
 		alert('Please enter a valid name without numbers!');
  	nameInput.focus();
  	return false;
	}
	
	if (!validateEmail(email)) {
  	alert('Please enter a valid email address!');
  	emailInput.focus();
  	return false;
	}

	if (!validatePassword(password)) {
  	alert('Please enter a password with at least 8 characters!');
  	passwordInput.focus();
  	return false;
	}

	if (!validateGuestCount(guestCount)) {
  	alert('Number of guests cannot exceed 5000!');
  	guestCountInput.focus();
  	return false;
	}

	// If all validations are true
	return true;
}

document.querySelector('form').addEventListener('submit', function(event) {
if (!handleSubmit()) {
  event.preventDefault();
}
});
</script>



</body>
</html>