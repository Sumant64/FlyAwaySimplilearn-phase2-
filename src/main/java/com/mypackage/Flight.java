package com.mypackage;

public class Flight {
	int flight_id;
	String flight_name;
	String date;
	String time;
	String source;
	String destination;
	String price;
	public Flight(int flight_id, String flight_name, String date, String time, String source, String destination,
			String price) {
		super();
		this.flight_id = flight_id;
		this.flight_name = flight_name;
		this.date = date;
		this.time = time;
		this.source = source;
		this.destination = destination;
		this.price = price;
	}
	public Flight() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getFlight_id() {
		return flight_id;
	}
	public void setFlight_id(int flight_id) {
		this.flight_id = flight_id;
	}
	public String getFlight_name() {
		return flight_name;
	}
	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Flight [flight_id=" + flight_id + ", flight_name=" + flight_name + ", date=" + date + ", time=" + time
				+ ", source=" + source + ", destination=" + destination + ", price=" + price + "]";
	}
	
	
}
