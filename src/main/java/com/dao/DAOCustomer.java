package com.dao;

import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import com.JDBCConnector.Database;
import com.modelsSRP.Customer;

public class DAOCustomer {
	private Customer customer;
	private Database db;
	private String query;
	private ResultSet rs;

	public DAOCustomer() {
		super();
		this.customer = new Customer();
		this.db = new Database();
	}

	public boolean register(int cid, String email) {
		query = "insert into customer (cid, cname, cdob, ccertificate, cphone, cemail) values(" + cid
				+ ",'',null,'',0,'" + email + "')";
		if (db.doExecuteUpdate(query)) {
			System.out.println("register successfully");
			return true;
		} else {
			System.out.println("register failed");
		}
		return false;
	}

	public Customer getCustomer(int cid) {
		query = "select * from customer where cid=" + cid;

		rs = db.doExecuteQuery(query);
		try {
			while (rs.next()) {
				this.customer.setCid(cid);
				this.customer.setCname(rs.getString("cname"));
				this.customer.setCdob(rs.getString("cdob"));
				this.customer.setCertificate(rs.getString("ccertificate"));
				this.customer.setPhone(rs.getInt("cphone"));
				this.customer.setEmail(rs.getString("cemail"));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return this.customer;
	}

	public boolean updateCustomer(Customer c) {
		query = "update customer set cname = '" + c.getCname() + "', cdob = '" + c.getCdob() + "', ccertificate = '"
				+ c.getCertificate() + "',cphone=" + c.getPhone() + " where cid =" + c.getCid();

		if (db.doExecuteUpdate(query)) {
			System.out.println("update customer succesful");
			return true;
		}
		System.out.println("update customer failed");
		return false;
	}

	public boolean needUpdateCustomer(int cid) {
		try {
			query = "select cname from customer where cid=" + cid;
			rs = db.doExecuteQuery(query);
			if (rs.next()) {
				String temp = rs.getString("cname");
				if (temp.equals("")) {
					System.out.println(temp);
					return false;
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return true;
	}
}
