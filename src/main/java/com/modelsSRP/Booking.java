package com.modelsSRP;

import java.util.*;

public class Booking {

	private int bid;

	private Customer customer;
	private Room room;
	private int numPeople;
	private Service service;
	private String arrivalDay;
	private String leaveDay;
	private String remark;
	private String status;
	private String date;
	private List<Service> listOfServices;

	public Booking() {
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	public String getArrivalDay() {
		return arrivalDay;
	}

	public void setArrivalDay(String arrivalDay) {
		this.arrivalDay = arrivalDay;
	}

	public String getLeaveDay() {
		return leaveDay;
	}

	public void setLeaveDay(String leaveDay) {
		this.leaveDay = leaveDay;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<Service> getListOfServices() {
		return listOfServices;
	}

	public void setListOfServices(List<Service> listOfServices) {
		this.listOfServices = listOfServices;
	}

	public int getNumPeople() {
		return numPeople;
	}

	public void setNumPeople(int numPeople) {
		this.numPeople = numPeople;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void confirmBooking(String remark, String status) {
		this.remark = remark;
		if (!this.status.equalsIgnoreCase(status) && this.status.equalsIgnoreCase("Pending")) {
			this.status = "approval".toUpperCase();
		}
	}

	@Override
	public String toString() {
		return "Booking [bid=" + bid + ", customer=" + customer + ", room=" + room + ", numPeople=" + numPeople
				+ ", service=" + service + ", arrivalDay=" + arrivalDay + ", leaveDay=" + leaveDay + ", remark="
				+ remark + ", status=" + status + ", listOfServices=" + listOfServices + "]";
	}

}
