<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<div class="container" style="margin-top:30px;">
	<div class="row" style="margin-bottom:20px;">
		<h1 class="offset-sm-3 col-sm-6">Add New Employee Details</h1>
	</div>
	<form action="AddEmployeeResponse.jsp" method="post">
	  	<div class="row">
	    	<div class="form-group offset-sm-3 col-sm-6">
	      		<label for="name">Employee Name:</label>
	      		<input type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
	    	</div>
	    </div>
	    <div class="row">
	    	<div class="form-group offset-sm-3 col-sm-6">
	      		<label for="age">Employee Age:</label>
	      		<input type="text" class="form-control" id="age" placeholder="Enter Age " name="age">
	    	</div>
	    </div>
	    <div class="row">
	    	<div class="form-group offset-sm-3 col-sm-6">
	      		<label for="current_addr">Employee Current Address :</label>
	      		<input type="text" class="form-control" id="current_addr" placeholder="Enter Address" name="current_addr">
	    	</div>
	    </div>
	    <div class="row">
	    	<div class="form-group offset-sm-3 col-sm-6">
	      		<label for="permanent_addr">Employee Permanent Address :</label>
	      		<input type="text" class="form-control" id="permanent_addr" placeholder="Enter Address" name="permanent_addr">
	    	</div>
	    </div>
	    <div class="offset-sm-3 col-sm-4">
    		<button type="submit" class="btn btn-info btn-lg">Add Details</button>
    	</div>
	</form>
</div>
</body>
</html>