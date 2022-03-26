<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/Fly/css/welcome.css" rel="stylesheet" type="text/css" />
<title>Welcome Page</title>
</head>
<body>
	
	<h1>Welcome to FlyAway Ticket Portal</h1>
	<h2>Search a flight</h2>
	<form action="flight_search.jsp">
		<div>
		<label style="margin-right: 70px;">Input Date: </label>
		<input type="date" name="date"/>
		</div>
		<div>
		<label style="margin-right: 45px;">Input Source: </label>
		<input type="text" placeholder="Input Source" name="source"/>
		</div>
		<div>
		<label>Input Destination: </label>
		<input type="text" placeholder="Input Destination" name="destination"/>
		</div>
		<button type="submit">Search</button>
	</form>
	
	<h2>For Admin</h2>
	<form action="LoginServlet" method="post">
	<div>
	<label>Username: </label>
	<input type="text" name="username" placeholder="Enter Username: ">
	</div>
	<div>
	<label style="margin-right: 10px;">password:</label>
	<input type="password" name="password" placeholder="Enter Password ">
	</div>
	<button type="submit">Submit</button>
	
	
	</form>
	
</body>
</html>