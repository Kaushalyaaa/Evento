<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
	body {
    font-family: Arial, sans-serif;
    background-image:url('image/w6.jpg');
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    border-radius: 10px;
}

table, th, td {
    border: none;
}

th, td {
    padding: 8px;
    text-align: left;
}

th {
    background-color: #f2f2f2; /* Light gray background color for table header */
    font-weight: bold;
}

td{
	background-color: #e6e6e6;
}

tr:nth-child(even) {
	backgroud-color: #f9f9f9
}

input[type="button"] {
    background-color: #ff69b4; /* Pink background color for buttons */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-right: 10px; /* Add margin to separate buttons */
}

input[type="button"]:hover {
    background-color: #d74ea8; /* Lighter pink color on hover */
}

a {
    display: inline-block;
}
	
</style>
<body>
<img src="/image/wedding.jpg">
	<table border = "2">
	  <c:forEach var="cus" items="${cusDetails}">
	  
	  	<c:set var = "id" value ="${cus.id}"/>
	  	<c:set var = "name" value="${cus.name}"/>
	  	<c:set var ="email" value="${cus.email}"/>
	  	<c:set var ="location" value = "${cus.location}"/>
	  	<c:set var ="username" value="${cus.userName}"/>
	  	<c:set var = "password" value="${cus.password}"/>
	  	<c:set var = "additionalRequirements" value="${cus.additionalRequirements}"/>
	  	<c:set var = "date" value="${cus.date}"/>
	  	<c:set var = "guestcount" value="${cus.guestcount}"/>
	  	<c:set var = "budget" value="${cus.budget}"/>
	  	<c:set var = "mealpreference" value="${cus.mealpreference}"/>
	  
	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Location</td>
		<td>${cus.location}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${cus.userName}</td>
	</tr>
	<tr>
		<td>Customer Password</td>
		<td>${cus.password}</td>
	</tr>
	<tr>
		<td>Additional Requirements</td>
		<td>${cus.additionalRequirements}</td>
	</tr>
	<tr>
		<td>Event Date</td>
		<td>${cus.date}</td>
	</tr>
	<tr>
		<td>Number of Guests</td>
		<td>${cus.guestcount}</td>
	</tr>
	<tr>
		<td>Budgetary Allocation</td>
		<td>${cus.budget}</td>
	</tr>
	<tr>
		<td>Meal Preference</td>
		<td>${cus.mealpreference}</td>
	</tr>

	</c:forEach>
	</table>

	<c:url value="updateCustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="location" value="${location}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		<c:param name="additionalRequirements" value="${additionalRequirements}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="guestcount" value="${guestcount}"/>
		<c:param name="budget" value="${budget}"/>
		<c:param name="mealpreference" value="${mealpreference}"/>
		
	</c:url>

	<a href="${cusupdate}">
	<br><br><input type ="button" name="update" value="Update">
	</a>
	<br>

	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="location" value="${location}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		<c:param name="additionalRequirements" value="${additionalRequirements}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="guestcount" value="${guestcount}"/>
		<c:param name="budget" value="${budget}"/>
		<c:param name="mealpreference" value="${mealpreference}"/>
		
	</c:url>
	<a href="${cusdelete}">
		<input type = "button" name="delete" value="delete">
	</a>


</body>
</html>