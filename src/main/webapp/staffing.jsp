<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" href="style.css">

<title>Assign Employees</title>
<script>
function validateForm() {
    var event_name = document.getElementById("event_name").value.trim();
    var customer_req = document.getElementById("customer_req").value.trim();
    var photographer = document.getElementById("photographer").value.trim();
    var catering = document.getElementById("catering").value.trim();
    var decoration = document.getElementById("decoration").value.trim();
    var security = document.getElementById("security").value.trim();
    var technical = document.getElementById("technical").value.trim();
    var username = document.getElementById("username").value.trim();
    var password = document.getElementById("password").value.trim();
    var salary_range = document.getElementById("salary_range").value.trim();

    if (event_name === "") {
        alert("Event Name is required.");
        return false;
    }

    if (customer_req === "") {
        alert("Customer Requirements are required.");
        return false;
    }

    if (photographer === "") {
        alert("Photographer In-charge is required.");
        return false;
    }

    if (catering === "") {
        alert("Catering In-charge is required.");
        return false;
    }

    if (decoration === "") {
        alert("Decorations In-charge is required.");
        return false;
    }

    if (security === "") {
        alert("Security In-charge is required.");
        return false;
    }

    if (technical === "") {
        alert("Technical In-charge is required.");
        return false;
    }

    if (username === "") {
        alert("Username is required.");
        return false;
    }

    if (password === "" || password.length < 4) {
        alert("Password is required and must be at least 4 characters long.");
        return false;
    }

    if (salary_range !== "" && !/^(\d+(\.\d{1,2})?)$/.test(salary_range)) {
        alert("Salary Range must be a valid number.");
        return false;
    }

    return true;
}
</script>

</head>
<body>

    
<div class= "container">
	<div class="box">
	<h2>Event Staffing</h2>
		<form id= "eventform" action="Insert" method="post" onsubmit="return validateForm()">
			<div>
			<label for="event_name">Event Name:</label>
			<input type = "text" id="event_name" name="event_name">
			</div>
			<br>
			<div>
			<label for = "customer_req"> Customer Requirements (Photography/Catering/Decorations/Security/Technical):</label>
			<input type = "text" id="customer_req" name="customer_req">
			</div>
			<br>
			<div>
			<label for = "photographer">Photographer In-charge :</label>
			<input type = "text" id= "photographer" name="photographer">
			</div>
			<br>
			<div>
			<label for = "catering">Catering In-charge :</label>
			<input type = "text" id= "catering" name="catering">
			</div>
			<br>
			<div>
			<label for = "decoration">Decorations In-charge :</label>
			<input type = "text" id= "decoration" name="decoration">
			</div>
			<br>
			<div>
			<label for = "security">Security In-charge :</label>
			<input type = "text" id= "security" name="security">
			</div>
			<br>
			<div>
			<label for = "technical">Technical In-charge :</label>
			<input type = "text" id= "technical" name="technical">
			</div>
			<br>
			<div>
			<label for ="additional_employees"> Additional Employees </label> <br>
			<input type= "radio" id="additional_employees_yes" name="additional_employees" value="yes">
			<label for ="yes">Yes</label>
			<input type ="radio" id="additional_employees_no" name="additional_employees" value="No">
			<label for = "no">No</label>
			</div>
			<br>
			<div>
			<label for = "salary_range">Salary-Range (Enter in Decimal):</label>
			<input type = "text" id= "salary_range" name="salary_range">
			</div>
			<br>
			<div>
			<label for = "extra_notes">Extra Notes :</label>
			<input type = "text" id= "extra_notes" name="extra_notes">
			</div>
			<br>
			<div>
			<label for = "username">UserName:</label>
			<input type = "text" id= "username" name="username">
			</div>
			<br>
			<div>
			<label for = "psw">Password:</label>
			<input type = "password" id= "password" name="password">
			</div>
			
			
			<div class="form-row">
			<button type="submit">Submit</button>
			</div>
		</form>
		</div>
	</div>


</body>
</html>