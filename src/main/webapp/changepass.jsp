<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/Fly/css/welcome.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
	<h1>Change the Password</h1>
	
	<%
	
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); //for HTTP version 1.1
		
		response.setHeader("Pragma","no-cache"); //HTTP version 1.0
		
		response.setHeader("Expires","0"); //proxies	
	
		if(session.getAttribute("username")==null){
			
			response.sendRedirect("login.jsp");
		}
	
	%>
	
	<form action="newpass.jsp" method="post">
		<div>
		<label>Enter New Password: </label>
		<input type="text" name="newpass" placeholder="Enter new Password">
		</div>
		<button type="submit">Change</button>
	
	</form>
</body>
</html>