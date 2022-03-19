package com.modelsSRP;

import java.util.Date;

public class Payment {

	private Booking booking;
	private double serviceChargePercentage = 0.05;
	private double totalPayment = 0;
	private Date date;

	public Payment(Booking booking) {
		super();
		this.booking = booking;
		this.date = new Date();
	}

	public Booking getBooking() {
		return booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}

	public double getServiceChargePercentage() {
		return serviceChargePercentage;
	}

	public void setServiceChargePercentage(double serviceChargePercentage) {
		this.serviceChargePercentage = serviceChargePercentage;
	}

	public double getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(double totalPayment) {
		this.totalPayment = totalPayment;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public double calculateBill() {
		this.totalPayment += this.booking.getRoom().getRoomPrice();
		this.totalPayment += this.booking.getService().getPrice() * (1 - this.booking.getService().getDiscount());
		return this.totalPayment;
	}
}
