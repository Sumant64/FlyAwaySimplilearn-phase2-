<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mypackage.DbManager" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/Fly/css/welcome.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>

	<%
	
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); //for HTTP version 1.1
	
	response.setHeader("Pragma","no-cache"); //HTTP version 1.0
	
	response.setHeader("Expires","0"); //proxies	

	if(session.getAttribute("username")==null){
		
		response.sendRedirect("login.jsp");
	}

	%>
	<% 
try {
		
		String newpass=request.getParameter("newpass");
		
		String query="update login set pass=? where uname='admin'";
		DbManager db=new DbManager();
		Connection con=db.getConnection();
		
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1,newpass);
		
		st.executeUpdate();
		
		
		st.close();
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	%>
	<h1>Password Changed Successfully</h1>
	<form action="Welcome.jsp" >
	<button type="submit" style="width: 200px; height: 80px;">Back to Welcome Page</button>
	
	</form>
</body>
</html>