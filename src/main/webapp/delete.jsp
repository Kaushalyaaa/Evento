<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" href="style.css">
</head>

<body>
<%
String event_id= request.getParameter ("event_id");
String event_name=request.getParameter("event_name");
String customer_req=request.getParameter("customer_req");
String photographer=request.getParameter("photographer");
String catering = request.getParameter("catering");
String decoration = request.getParameter("decoration");
String security= request.getParameter("security");
String technical=request.getParameter("technical");
String salary_range=request.getParameter("salary_range");
String additional_employees = request.getParameter("additional_employees");
String extra_notes=request.getParameter("extra_notes");
String username = request.getParameter("username");
String password= request.getParameter("password");
%>

<div class= "container">
	<div class="box">
	<h2>Event Staffing Delete</h2>
<form action="Staffdelete" method="post">
		Event ID <input type="text" name="event_id" value="<%= event_id %>" readonly>
		<br>
<div>
			<label for="event_name">Event Name:</label>
			<input type = "text" id="event_name" name="event_name" value="<%= event_name %>" readonly>
			</div>
			<br>
			<div>
			<label for = "customer_req"> Customer Requirements (Photography/Catering/Decorations/Security/Technical):</label>
			<input type = "text" id="customer_req" name="customer_req" value="<%= customer_req %>" readonly>
			</div>
			<br>
			<div>
			<label for = "photographer">Photographer In-charge :</label>
			<input type = "text" id= "photographer" name="photographer" value="<%= photographer %>" readonly>
			</div>
			<br>
			<div>
			<label for = "catering">Catering In-charge :</label>
			<input type = "text" id= "catering" name="catering" value="<%= catering %>" readonly>
			</div>
			<br>
			<div>
    		<label for="decoration">Decorations In-charge:</label>
   		 	<input type="text" id="decoration" name="decoration" value="<%= decoration %>" readonly>
			</div>
			<br>
			<div>
			    <label for="security">Security In-charge:</label>
			    <input type="text" id="security" name="security" value="<%= security %>" readonly>
			</div>
			
			<br>
			<div>
			<label for = "technical">Technical In-charge :</label>
			<input type = "text" id= "technical" name="technical" value="<%= technical %>" readonly>
			</div>
			<br>
			<div>
			<label for ="additional_employees"> Additional Employees </label> <br>
			<input type= "radio" id="additional_employees" name="additional_employees" value="<%= additional_employees %>" readonly>
			<label for ="yes">Yes</label>
			<input type ="radio" id="additional_employees" name="additional_employees" value="<%= additional_employees %>" readonly>
			<label for = "no">No</label>
			</div>
			<br>
			<div>
			<label for = "salary_range">Salary-Range :</label>
			<input type = "text" id= "salary_range" name="salary_range" value="<%= salary_range %>" readonly>
			</div>
			<br>
			<div>
			<label for = "extra_notes">Extra Notes :</label>
			<input type = "text" id= "extra_notes" name="extra_notes" value="<%= extra_notes %>" readonly>
			</div>
			<br>
			<div>
			<label for = "username">UserName:</label>
			<input type = "text" id= "username" name="username" value="<%= username %>" readonly>
			</div>
			<br>
			<div>
			<label for = "psw">Password:</label>
			<input type = "text" id= "password" name="password" value="<%= password %>" readonly>
			</div>
			
			<div class="form-row">
			<button type="submit" name="submit" value="Delete My Data">Delete My Data</button>
			</div>
</form>
	</div>
	</div>



</body>
</html>