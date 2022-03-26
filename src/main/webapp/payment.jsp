<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mypackage.DbManager" %>

<!DOCTYPE html>


<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://localhost:9090/Fly/css/payment.css" rel="stylesheet" type="text/css" />
<title>Payment Page</title>
</head>
<body>
<%

	String first=request.getParameter("first_name");
	String last=request.getParameter("last_name");
	String gender=request.getParameter("gender");
	int age=Integer.parseInt(request.getParameter("age"));
	String address=request.getParameter("address");
	int ticket=Integer.parseInt(request.getParameter("tic_no"));
	
	String flight=request.getParameter("flight");
	String airline=request.getParameter("airline");
	int f_id=Integer.parseInt(request.getParameter("f_id"));
	String destination=request.getParameter("destination");
	String source=request.getParameter("source");
	String date=request.getParameter("date");
	String time=request.getParameter("time");
	int price=Integer.parseInt(request.getParameter("price"));
	
	int total=ticket*price;
	
	try{
		DbManager db=new DbManager();
		Connection con=db.getConnection();
		

		String query="insert into passenger (first,last,gender,age,address,tickets_no,flight_id) values (?,?,?,?,?,?,?)";
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1,first);
		st.setString(2,last);
		st.setString(3, gender);
		st.setInt(4, age);
		st.setString(5, address);
		st.setInt(6,ticket);
		st.setInt(7,f_id);
		
		int count=st.executeUpdate();
		st.close();
		
		
		
		con.close();
		
		}catch(Exception e) {
			
		}
		
	
	
	%>

	<h2>Preview of the Details Entered</h2>
	<div class="details">
	<h5>First Name: <%=first %></h5>
	<h5>Last Name: <%=last %></h5>
	<h5>Gender: <%=gender %></h5>
	<h5>Age: <%=age %></h5>
	<h5>Address: <%=address %></h5>
	<h5>No Of Ticket: <%=ticket %></h5>
	
	<h5>Flight Name: <%=flight %></h5>
	<h5>Airline Name: <%=airline %></h5>
	<h5>Flight ID: <%=f_id %></h5>
	<h5>Destination: <%=destination %></h5>
	<h5>Source: <%=source %></h5>
	<h5>Date: <%=date %></h5>
	<h5>Time: <%=time %></h5>
	</div>
	
	<h3>Total Payment Amount</h3>
	<h5>Total Amount= <%= total %></h5>
	
	<form action="payment_gate.jsp">
	<input type="hidden" value="<%= total %>" name="total">
	<button type="submit">Click to Pay</button>
	
	</form>
	
</body>
</html>