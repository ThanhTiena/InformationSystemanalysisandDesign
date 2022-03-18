package com.modelsSRP;

public class Customer {

	private int cid;
	private String cname;
	private String cdob;
	private String certificate;
	private int phone;
	private String email;
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCdob() {
		return cdob;
	}
	public void setCdob(String cdob) {
		this.cdob = cdob;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void updateCustomer(String name, String dob, String certi, int phone) {
		this.cname = name;
		this.cdob = dob;
		this.certificate = certi;
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Customer [cid=" + cid + ", cname=" + cname + ", cdob=" + cdob + ", certificate=" + certificate
				+ ", phone=" + phone + ", email=" + email + "]";
	}
	
}
