package com.mypackage;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class FlyDao {
	
	
	public boolean check(String uname, String pass) {
	
	
	try {
	
	DbManager db=new DbManager();
	Connection con=db.getConnection();
	
	
	String query="select * from login where uname=? && pass=? ";
	PreparedStatement st=con.prepareStatement(query);
	st.setString(1, uname);
	st.setString(2, pass);
	
	ResultSet rs=st.executeQuery();
	if(rs.next()) {
	
	return true;
	}
	
	
	
	
	}catch(Exception e) {
		e.printStackTrace();	
	
	}
	return false;
}
}

