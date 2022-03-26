<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mypackage.DbManager" %>
<%@ page import="com.mypackage.Flight" %>
<%@ page import="java.util.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/Fly/css/flight_search.css" rel="stylesheet" type="text/css" />
<title>Flight Search</title>
</head>
<body>
	<h1>The Flight Details</h1>
	<%
	String date=request.getParameter("date");
	
	
	
	String source=request.getParameter("source");
	String destination=request.getParameter("destination");
	
	try {
		
		
		DbManager db=new DbManager();
		Connection con=db.getConnection();
		

		String query="select * from flight where date=? && source=? && destination=?";
		PreparedStatement st=con.prepareStatement(query);
		st.setObject(1, date);
		st.setString(2, source);
		st.setString(3, destination);
		
		
		
		
		
		ResultSet rs=st.executeQuery();
		%>
		<div class="display">
		<table>
		<tr><th>Flight ID</th><th>Airline</th><th>Flight Name</th><th>Source</th><th>Destination</th><th>Date</th><th>Time</th><th>Price</th></tr>
		<%
		while(rs.next()) { 
		%>
		<tr><td><%= rs.getInt(1) %></td><td><%= rs.getString(8) %></td><td><%= rs.getString(7) %></td><td><%= rs.getString(4) %></td><td><%= rs.getString(5) %></td><td><%= rs.getString(2) %></td><td><%= rs.getString(3) %></td><td><%= rs.getString(6) %></td></tr>
		
		<% 
		}
		%>
		</table>
		</div>
		<% 
		
		
		
		
		
		
		
		
		
		st.close();
		con.close();
		}catch(Exception e) {
			
		}
	%>
	
	
	<form action="book.jsp">
	<div>
	<label>Flight Id:</label>
	<input type="text" name="id" placeholder="Enter flight ID">
	</div>
	<button type="submit">Book Flight</button>
	</form>
	
</body>
</html>