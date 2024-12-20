<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
.error-box {
    	background-color: #ffcccc; /* Light red background color */
    	border: 2px solid #ff3333; /* Red border */
    	border-radius: 8px; /* Rounded corners */
    	padding: 20px; /* Padding inside the box */
   		width: 300px; /* Width of the box */
    	margin: 0 auto; /* Center the box horizontally */
    	text-align: center; /* Center text */
}

.error-message {
    color: #ff3333; /* Red text color */
    font-weight: bold; /* Bold text */
}

.try-again-btn {
    background-color: #ff3333; /* Red button color */
    color: white; /* Button text color */
    border: none; /* Remove button border */
    padding: 10px 20px; /* Padding inside the button */
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; /* Show pointer cursor on hover */
    margin-top: 20px; /* Margin from the error message */
}

.try-again-btn:hover {
    background-color: #cc0000; /* Darker red color on hover */
}
		
	</style>
    <div class="error-box">
        <p class="error-message">Unsuccessful login! Please fill in all fields.</p>
       	<a href="customerInsert.jsp" class="try-again-btn">Try Again</a>
    </div>
</body>
</body>
</html>