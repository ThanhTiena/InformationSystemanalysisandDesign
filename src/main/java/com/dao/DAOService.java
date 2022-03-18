package com.dao;

import java.sql.ResultSet;

import com.JDBCConnector.Database;
import com.modelsSRP.Service;

public class DAOService {
	private Service service;
	private Database db;
	private String query;
	private ResultSet rs;

	public DAOService() {
		super();
		this.service = new Service();
		this.db = new Database();
	}

	public Service getService(String rtype) {
		try {
			query = "select * from service where rinclude='" + rtype + "'";
			rs = db.doExecuteQuery(query);
			if(rs.next()) {
				this.service.setSid(rs.getInt("sid"));
				this.service.setsName(rs.getString("sname"));
				this.service.setsDetails(rs.getString("sdescription"));
				this.service.setPrice(rs.getDouble("sprice"));
				this.service.setDiscount(rs.getDouble("sdiscount"));
				this.service.setAvailable(rs.getString("rinclude"));
			}else {
				return new Service();
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return this.service;
	}
}
