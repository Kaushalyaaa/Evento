<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Details</title>
<link rel = "stylesheet" href="login.css">

</head>
<body>
<div class="box">
 <form action = "Log" method ="post" >
 <div>
 <label for="uid">UserName</label>
 <input type="text" name="uid">
  <br>
  </div>
  <div>
 <label for= "pass">Password</label> 
 <input type ="password" name="pass">
  <br>
  </div>
 <input type="submit" name="submit" value="Login" class="login-button">
 
 </form>
 </div>

</body>
</html>