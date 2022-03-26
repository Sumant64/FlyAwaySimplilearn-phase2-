<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>    
<%@ page import="com.mypackage.DbManager" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/Fly/css/welcome.css" rel="stylesheet" type="text/css" />
<title>Booking</title>
</head>
<body>
	<h1>This is booking page</h1>
	<%
	
	
	
	int flight_id=Integer.parseInt(request.getParameter("id"));
	
	DbManager db=new DbManager();
	Connection con=db.getConnection();
	

	String query="select * from flight where flight_id=?";
	PreparedStatement st=con.prepareStatement(query);
	st.setInt(1, flight_id);
	
	ResultSet rs=st.executeQuery();
	rs.next();
	int f_id=rs.getInt(1);
	String airline=rs.getString(8);
	String flight=rs.getString(7);
	String date=rs.getString(2);
	String time=rs.getString(3);
	String source=rs.getString(4);
	String destination=rs.getString(5);
	int price=rs.getInt(6);
	
	
	
	%>
	
	<form action="payment.jsp">
	<div style="margin-left: 20px;">
	<label>First Name: </label>
	<input type="text" name="first_name" placeholder="Enter first name" required>
	
	
	<label style="margin-left: 20px;">Last Name: </label>
	<input type="text" name="last_name" placeholder="Enter last name" required>
	
	
	<label style="margin-left: 20px;">Gender: </label>
	<select name="gender" >
		<option value="M">Male</option>
		<option value="F">Female</option>
	</select>
	</div>
	<div style="margin-left: 20px;">
	<label>Enter Age: </label>
	<input type="number" name="age" placeholder="Enter Age" required>
	
	
	<label style="margin-left: 20px;">Enter Address: </label>
	<input type="text" name="address" placeholder="Enter Address" required>
	
	
	<label style="margin-left: 20px;">Enter NO.Of Tickets</label>
	<input type="number" name="tic_no" placeholder="Enter no.of tickets" required>
	</div>
	
	
	<div style="margin-left: 20px;">
	<label>Flight name: </label>
	<input type="text" value="<%=flight %>" name="flight" readonly>
	
	
	<label style="margin-left: 20px;">Airline name: </label>
	<input type="text" value="<%=airline %>" name="flight" readonly>
	
	
	<label style="margin-left: 20px;">Flight ID: </label>
	<input type="text" value="<%=f_id %>" name="f_id" readonly>
	</div>
	<div style="margin-left: 20px;">
	<label >Destination: </label>
	<input type="text" value="<%=destination %>" name="destination" readonly>
	
	
	<label>Source: </label>
	<input type="text" value="<%= source %>" name="source" readonly>
	
	
	<label style="margin-left: 20px;">Date of Journey: </label>
	<input type="text" value="<%= date %>" name="date" readonly>
	</div>
	<div style="margin-left: 20px;">
	<label>Time: </label>
	<input type="time" value="<%= time %>" name="time" readonly>
	</div>
	<div style="margin-left: 20px;">
	<label>Price: </label>
	<input type="number" value="<%= price %>" name="price" readonly>
	</div>
	
	<button type="submit">Submit</button>
	</form>
	
	
	
</body>
</html>