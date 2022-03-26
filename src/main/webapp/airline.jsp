<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.mypackage.DbManager" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/Fly/css/flight_search.css" rel="stylesheet" type="text/css" />
<title>Airline</title>
</head>
<body>
	<h1>List of Airlines</h1>
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
		DbManager db=new DbManager();
		Connection con=db.getConnection();
		
		Statement st=con.createStatement();
		String query="select flight_id,airline from flight";
		ResultSet rs=st.executeQuery(query);
		%>
		<div class="display">
		<table>
		<tr><th>Flight ID</th><th>Airline</th></tr>
		<%
		while(rs.next()) { 
		%>
		<tr><td><%= rs.getInt(1) %></td><td><%= rs.getString(2) %></tr>
		
		<% 
		}
		%>
		</table>
		</div>
		<% 
		
		
	%>
	
	<form action="admin.jsp">
		<button type="submit">Back to Admin</button>
	</form>
	
	
</body>
</html>