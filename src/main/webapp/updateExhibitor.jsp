<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eVento</title>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link  rel="stylesheet"  href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
<link  rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/crud.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/crud.css">
<style>
	body{
		background: url('image/ex.jpg') no-repeat;
		font-family: Arial, sans-serif;
		margin: 0;
		padding: 0;
		justify-content: center;
		background-size: 100%;
	}	
</style>
</head>
<body>
	<header class="header">
        <a href="" class="logo">
        	<img src="image/ls.png" alt="Evento logo">
        </a>
        <nav class="navbar">
        	<div class="right-links">
            	<a href="vid.jsp">Home</a>
            	<a href="vid.jsp">Service</a>
           		<a href="events.jsp" class="gallery">Gallery</a>
            	<a href="Adminlogin.jsp">Admin Login</a>
            	<a href="login.jsp">Staff Login</a>
            	<a href="createCustomer.jsp">Join Our Team</a>
            </div>
            <div id="menu-bars" class="fas fa-bars"></div>
        </nav>
    </header>
    
	<%
		String id= request.getParameter("id");
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String phone= request.getParameter("phone");
		String imgFileName= (String)request.getParameter("img");
		String description= request.getParameter("description");
		String catergory= request.getParameter("catergory");
	%>
	
	
	<form action="UpdateE" method="post">
	<h1> Update </h1>
		<div class="input-box">
			<label for="id"> ID :  </label>
			<input type="number"  value="<%= id%>" name="id" readonly><br><br>
		</div>
	
		<div class="input-box">
			<label for="name"> Company Name </label><br>
			<input type="text" value="<%= name%>" name="name" required>
			<i class='bx bxs-user-pin bx-sm'></i><br><br>
		</div>
		
		<div class="input-box">
			<label for="email"> Email </label><br>
			<input type="email" value="<%= email%>" name="email" required>
			<i class='bx bxs-envelope bx-sm'></i><br><br>
		</div>
		
		<div class="input-box">
			<label for="phone"> Phone </label><br>
			<input type="tel" value="<%= phone%>" name="phone" required>
			<i class='bx bxs-phone-call bx-sm'></i><br><br>
		</div>
		
		<div class="input-box">
			<label for="logo"> Company Logo </label>
			<input type="file" value="<%= imgFileName%>" name="image" id="logo"><br><br>
		</div>
		
		<div class="input-box">
			<label for="description"> Description </label><br>
			<textarea name="description" id="description" cols="20" rows="3" required><%= description%></textarea><br><br>
			<i class='bx bx-text bx-sm'></i>
		</div>
		
		<div class="input-box">
			<label for="category"> Category </label><br>
			<i class='bx bx-bookmark-heart bx-sm'></i>
			<select name="category" id="Cat" required>
				<option value="catering" ${param.category eq 'caterig' ? 'selected' : ''}> Catering </option>
				<option value="photography" ${param.category eq 'photography' ? 'selected' : ''}> Photography </option>
				<option value="cake" ${param.category eq 'cake' ? 'selected' : ''}> Cake </option>
			</select>	
		</div>
		
		<input type="checkbox" id="terms" name="terms" required>
		<label for="terms"> I accept the terms and conditions</label><br><br>
		<input type="submit" name="submit" value="Update">
		
		
	</form>
	
	
<!-- Footer -->
<footer>
    <div class="footercontainer">
        <div class="socialIcons"> 
            <a href=""><i class="fa-brands fa-facebook"></i></a>
            <a href=""><i class="fa-brands fa-instagram"></i></a>
            <a href=""><i class="fa-brands fa-twitter"></i></a>
            <a href=""><i class="fa-brands fa-youtube"></i></a>
        </div>
        <div class="footerNav">
         <ul>
            <li><a href="">Home</a></li>
            <li><a href="">Services</a></li>
            <li><a href="">Gallery</a></li>
            <li><a href="">Contact</a></li>
            <li><a href="">Our team</a></li>
        </ul>
    	</div>
    </div>
    	<div class="footerBottom">
        	<p>Copyright &copy;2024; Evento website.<span class="designer">All rights reserved</span></p>
    	</div>
</footer>
</body>
</html>