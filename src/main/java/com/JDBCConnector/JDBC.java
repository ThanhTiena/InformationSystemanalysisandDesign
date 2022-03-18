package com.JDBCConnector;

import java.sql.*;
import java.util.logging.*;

public class JDBC{
	Connection con;

	public Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "123456789");
		} catch (SQLException ex) {
			Logger.getLogger(JDBC.class.getName()).log(Level.SEVERE, null, ex);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return con;

	}

}
