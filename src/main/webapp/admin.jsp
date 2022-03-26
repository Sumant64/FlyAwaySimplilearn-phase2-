<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/Fly/css/welcome.css" rel="stylesheet" type="text/css" />
<title>Admin</title>
</head>
<body>
	<h1>This is admin page</h1>
	<%
	
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); //for HTTP version 1.1
		
		response.setHeader("Pragma","no-cache"); //HTTP version 1.0
		
		response.setHeader("Expires","0"); //proxies	
	
		if(session.getAttribute("username")==null){
			
			response.sendRedirect("login.jsp");
		}
	
	%>
	
	<form action="airline.jsp">
		<button type="submit">Aeroplanes</button>
	</form>
	<form action="listOfFlight.jsp">
		<button type="submit" style="height: 80px;">Master List Of Flights</button>
	</form>
	<form action="changepass.jsp">
		<button type="submit" style="height: 70px;">Change Password</button>
	</form>
	<form action="LogoutServlet" method="post">
		<button type="submit">Logout</button>
	</form>
	
	

</body>
</html>