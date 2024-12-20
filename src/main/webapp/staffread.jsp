<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.staffing.Staffing" %>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staffing Details</title>
<link rel = "stylesheet" href="useracc.css">
</head>
<body>
<h1>Event Staffing</h1>
<table>
	<thead>
		<tr>
		<th>Event ID </th>
		<th> Event Name </th>
		<th>Customer Requirements</th>
                <th>Photographer</th>
                <th>Catering</th>
                <th>Decoration</th>
                <th>Security</th>
                <th>Technical</th>
                <th>Salary Range</th>
                <th>Additional Employees</th>
                <th>Extra Notes</th>
                <th>HR Manager's UserName</th>
                <th>HR Manager's Password</th>
            </tr>
        </thead>
        <tbody>
 <c:forEach var="staff" items="${staffdetails}">
 <c:set var="event_id" value="${staff.eventId}"/>
 <c:set var="event_name" value="${staff.eventName}"/>
 <c:set var="customer_req" value="${staff.customerReq}"/>
 <c:set var="photographer" value="${staff.photographer}"/>
 <c:set var="catering" value="${staff.catering}"/>
 <c:set var="decoration" value="${staff.decoration}"/>
 <c:set var="security" value="${staff.security}"/>
 <c:set var="technical" value="${staff.technical}"/>
 <c:set var="salary_range" value="${staff.additionalEmployees}"/>
 <c:set var="additional_employees" value="${staff.additionalEmployees}"/>
 <c:set var="extra_notes" value="${staff.extraNotes}"/>
 <c:set var="username" value="${staff.username} "/>
 <c:set var="password" value="${staff.password}"/>
 
 
 <tr>
 <td>${staff.eventId}</td>
<td> ${staff.eventName} </td>
 <td>${staff.customerReq}</td>
<td>${staff.photographer}</td>
<td>${staff.catering}</td>
<td>${staff.decoration}</td>
<td>${staff.security}</td>
 <td>${staff.technical}</td>
<td> ${staff.salaryRange}</td>
 <td>${staff.additionalEmployees}</td>
 <td> ${staff.extraNotes} </td>
 <td> ${staff.username} </td>
 <td>${staff.password}</td>
 </c:forEach>
 </tbody>
 </table>
 
 <c:url value="update.jsp" var="staffupdate">
 <c:param name="event_id" value="${event_id}"/>
 <c:param name="event_name" value="${event_name}"/>
 <c:param name="customer_req" value="${customer_req}"/>
 <c:param name="photographer" value="${photographer}"/>
 <c:param name="catering" value="${catering}"/>
 <c:param name="decoration" value="${decoration}"/>
 <c:param name="security" value="${security}"/>
 <c:param name="technical" value="${technical}"/>
 <c:param name="salary_range" value="${additional_employees}"/>
 <c:param name="additional_employees" value="${additional_employees}"/>
 <c:param name="extra_notes" value="${extra_notes}"/>
 <c:param name="username" value="${username} "/>
 <c:param name="password" value="${password}"/>
 </c:url>
 <a href="${staffupdate}">
 <input type="button" name="update" value="Update My Data">
 </a>
 
 
 <c:url value="delete.jsp" var="staffdelete">
  <c:param name="event_id" value="${event_id}"/>
 <c:param name="event_name" value="${event_name}"/>
 <c:param name="customer_req" value="${customer_req}"/>
 <c:param name="photographer" value="${photographer}"/>
 <c:param name="catering" value="${catering}"/>
 <c:param name="decoration" value="${decoration}"/>
 <c:param name="security" value="${security}"/>
 <c:param name="technical" value="${technical}"/>
 <c:param name="salary_range" value="${additional_employees}"/>
 <c:param name="additional_employees" value="${additional_employees}"/>
 <c:param name="extra_notes" value="${extra_notes}"/>
 <c:param name="username" value="${username} "/>
 <c:param name="password" value="${password}"/>
 </c:url>
 <a href="${staffdelete}">
 <input type = "button" name="delete" value="Delete My Account">
 </a>
 

</body>
</html>