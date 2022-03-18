package com.modelsSRP;

public class Service {

	private int sid;
	private String sName;
	private String sDetails;
	private double price;
	private double discount;
	private String available;
	private String[] daysAvailable;

	public Service() {
		super();
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getsDetails() {
		return sDetails;
	}

	public void setsDetails(String sDetails) {
		this.sDetails = sDetails;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double prices) {
		this.price = prices;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}

	public void getDays() {
		this.daysAvailable = this.available.split(" ");
	}

	public boolean checkServiceAvailable(int sid, String date) {
		boolean result = false;
		for (int i = 0; i < this.daysAvailable.length; i++) {
			if (this.available.equalsIgnoreCase(this.daysAvailable[i])) {
				result = true;
			}
		}

		return result;
	}
}
