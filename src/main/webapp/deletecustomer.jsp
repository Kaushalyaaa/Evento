<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="customerInsert.css"/>
</head>
<body>

<h1>Delete my profile</h1>

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

	<form action="delete" method="post">
			Customer ID<input type = "text" name="cusid" value= "<%= id %>" readonly><br>
			Name<input type = "text" name="name" value= "<%= name %>" readonly><br>
			Email<input type = "text" name="email" value= "<%= email %>" readonly><br>
			Location<input type = "text" name="location" value= "<%= location %>" readonly><br>
			User Name<input type = "text" name="uname" value= "<%= userName%>" readonly><br>
			Additional Requirements<input type = "text" name="additionalRequirements" value= "<%= additionalRequirements%>" readonly><br>
			Event Date<input type ="date" name="date" value="<%= date %>"readonly><br>
			Number of guests<input type="number" name="guestcount" value="<%= guestcount%>"readonly><br>
			Budgetary Allocation <input type="number" name="budget" value="<%= budget %>"readonly><br>
			Meal Preference<input type = "text" name="mealpreference" value="<%= mealpreference %>"readonly><br>
			
			
			<input type="submit" name="submit" onclick="deleteForm()"value="Delete"><br>
			
		</form>
		
		<script>
			function deleteForm(){
				var result = confirm("Are you sure you want to delete?");
				if(result){
					document.getElementById("deleteForm").submit();
				}
			}
		</script>

</body>
</html>