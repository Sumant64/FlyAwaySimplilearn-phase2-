<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/Fly/css/welcome.css" rel="stylesheet" type="text/css" />
<title>Payment Gateway</title>
</head>
<body>
	<h1>Payment Gateway: </h1>
	
	<form action="success.jsp">
	<div>
	<label>Full Name: </label>
	<input type="text" placeholder="Enter Name" >
	</div>
	<div>
	<label>Enter Debit Card Number: </label>
	<input type="number" min="16" max="16">
	</div>
	<div>
	<label>Enter CVV: </label>
	<input type="number" min="3" max="3">
	</div>
	<div>
	<label>Enter pin: </label>
	<input type="password">
	</div>
	
	<button type="submit">Make Payment</button>
	</form>
	
	
	
</body>
</html>