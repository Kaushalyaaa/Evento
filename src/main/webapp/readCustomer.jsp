<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            	<a href="#home">Home</a>
            	<a href="#service">Service</a>
           		<a href="events.jsp" class="gallery">Gallery</a>
            	<a href="Adminlogin.jsp">Admin Login</a>
            	<a href="login.jsp">Staff Login</a>
            	<a href="#join">Join Our Team</a>
            </div>
            <div id="menu-bars" class="fas fa-bars"></div>
        </nav>
    </header>

	<img src="image/cover.jpg" alt="cover" style="width: auto; height: 500px;">
	<div class="content">
			<h1> Our Services </h1>
			<p> "Welcome to our Online Event Mangement System!" </p>
	</div>

<%
	String imgFileName=(String)request.getAttribute("img");
%>
	<div class="order">
	<table>
		<c:forEach var="cus" items="${cusDetails}">
		
			<c:set var="id" value="${cus.id}"/>
			<c:set var="name" value="${cus.name}"/>
			<c:set var="email" value="${cus.email}"/>
			<c:set var="phone" value="${cus.phone}"/>
			<c:set var="category" value="${cus.category}"/>
			<c:set var="imgFileName" value="${cus.image}"/>
			<c:set var="description" value="${cus.description}"/>
		
		<td colspan="5">
			<img src="image/${imgFileName}" style="width: 250px; height: 200px">
			<h1> ${cus.name}</h1>
			<h4> ${cus.description} </h4>
			<h3> ${cus.phone} </h3>
			<h3> ${cus.email}</h3>
		
		<c:url value="updateExhibitor.jsp" var="cusupdate">
			<c:param name="id" value="${id}"/>
			<c:param name="name" value="${name}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="phone" value="${phone}"/>
			<c:param name="image" value="${image}"/>
			<c:param name="description" value="${description}"/>
			<c:param name="Cat" value="${category}"/>
		</c:url>
		<br>
		
		<div class="read">
		<a href="${cusupdate}">
			<button type="submit" name="submit" value="Edit"><i class='bx bxs-edit'> Edit </i> </button>
		</a>
		</div>
		
		<c:url value="DeleteExhibitor.jsp" var="cusdelete">
			<c:param name="id" value="${id}"/>
			<c:param name="name" value="${name}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="phone" value="${phone}"/>
			<c:param name="image" value="${image}"/>
			<c:param name="description" value="${description}"/>
			<c:param name="Cat" value="${category}"/>
		</c:url>
		
		<div class="read">
		<a href="${cusdelete}" onclick="return confirm('Are you sure?')">
			<button type="submit" name="submit" value="Delete"><i class='bx bx-x'> Delete </i></button>
		</a>
		</div>
		
		</td>
		</c:forEach>
	</table>
	</div>
	

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