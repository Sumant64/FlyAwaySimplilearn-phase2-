<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.mypackage.DbManager" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/Fly/css/flight_search.css" rel="stylesheet" type="text/css" />
<title>Flights</title>
</head>
<body>
	<h1>List Of Flights</h1>
	<%
	
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); //for HTTP version 1.1
		
		response.setHeader("Pragma","no-cache"); //HTTP version 1.0
		
		response.setHeader("Expires","0"); //proxies	
	
		if(session.getAttribute("username")==null){
			
			response.sendRedirect("login.jsp");
		}
	
	%>
	<%
		//sql query
		
		try{
		DbManager db=new DbManager();
		Connection con=db.getConnection();
		
		Statement st=con.createStatement();
		String query="select flight_id,airline,flight_name,source, destination,date,time,price from flight";
		ResultSet rs=st.executeQuery(query);
		
		%>
		<div class="display">
		<table>
		<tr><th>Flight ID</th><th>Airline</th><th>Flight Name</th><th>Source</th><th>Destination</th><th>Date</th><th>Time</th><th>Price</th></tr>
		<%
		while(rs.next()) { 
		%>
		<tr><td><%= rs.getInt(1) %></td><td><%= rs.getString(2) %></td><td><%= rs.getString(3) %></td><td><%= rs.getString(4) %></td><td><%= rs.getString(5) %></td><td><%= rs.getString(6) %></td><td><%= rs.getString(7) %></td><td><%= rs.getString(8) %></td></tr>
		
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
	<form action="admin.jsp">
		<button type="submit">Back to Admin</button>
	</form>
	
</body>
</html>