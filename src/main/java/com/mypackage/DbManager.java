package com.mypackage;
import java.sql.*;

public class DbManager {
	public Connection getConnection() {
		
		try {
			String url="jdbc:mysql://localhost:3307/fly";
			String nam="root";
			String pass="sumant";

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, nam, pass);
			
			return con;
		}
		catch(Exception e) {
			e.getStackTrace();
			return null;
		}
	}
}
