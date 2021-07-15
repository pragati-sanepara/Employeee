<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.db.data.DbOperation, com.db.detail.Employee, java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Data</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="CSS/bootstrap.min.css">
  	<script src="JS/jquery.min.js"></script>
  	<script src="JS/popper.min.js"></script>
  	<script src="JS/bootstrap.min.js"></script>
</head>
<body>
	<%  
		List<Employee> list = DbOperation.getAllEmployee();  
		request.setAttribute("empList",list);  
	%>  

	<div class="container">
  	<h1>View Employee</h1>
  	<table class="table table-striped">
    <thead>
      <tr>
        <th>Employee ID</th>
        <th>Employee Name</th>
        <th>Employee Age</th>
        <th>Current Address</th>
        <th>Permanent Address</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${empList}" var="emp"> 
	      <tr>
	        <td>${emp.getEmp_id()}</td>
	        <td>${emp.getName()}</td>
	        <td>${emp.getAge()}</td>
	        <td>${emp.getCurrent_addr()}</td>
	        <td>${emp.getPermanent_addr()}</td>
	      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>