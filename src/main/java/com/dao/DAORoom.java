package com.dao;

import java.sql.ResultSet;

import com.JDBCConnector.Database;
import com.modelsSRP.Room;

public class DAORoom {
	private Room room;
	private Database db;
	private String query;
	private ResultSet rs;

	public DAORoom() {
		super();
		this.room = new Room();
		this.db = new Database();
	}

	public Room getRoomById(int rid) {
		try {
			query = "select * from room where rid=" + rid;
			rs = db.doExecuteQuery(query);
			if (rs.next()) {
				this.room.setMaxAdult(rs.getInt("rmaxAdult"));
				this.room.setMaxChild(rs.getInt("rmaxChild"));
				this.room.setRoomID(rs.getInt("rid"));
				this.room.setRoomImage(rs.getString("rimage"));
				this.room.setRoomPrice(rs.getDouble("rprice"));
				this.room.setRoomRate(rs.getDouble("rrate"));
				this.room.setRoomType(rs.getString("rtype"));
				this.room.setSmokingAllowed(rs.getString("smokingAllowed").equalsIgnoreCase("yes") ? true : false);
				this.room.setStatus(rs.getString("rstatus"));
				this.room.setWifiEnabled(rs.getString("wifiEnable").equalsIgnoreCase("yes") ? true : false);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return this.room;
	}
	public Room getRoom(String type) {
		try {
			int rid = getAvailableRoom(type);
			
			query = "select * from room where rid=" + rid;
			rs = db.doExecuteQuery(query);
			if (rs.next()) {
				this.room.setMaxAdult(rs.getInt("rmaxAdult"));
				this.room.setMaxChild(rs.getInt("rmaxChild"));
				this.room.setRoomID(rs.getInt("rid"));
				this.room.setRoomImage(rs.getString("rimage"));
				this.room.setRoomPrice(rs.getDouble("rprice"));
				this.room.setRoomRate(rs.getDouble("rrate"));
				this.room.setRoomType(rs.getString("rtype"));
				this.room.setSmokingAllowed(rs.getString("smokingAllowed").equalsIgnoreCase("yes") ? true : false);
				this.room.setStatus(rs.getString("rstatus"));
				this.room.setWifiEnabled(rs.getString("wifiEnable").equalsIgnoreCase("yes") ? true : false);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return this.room;
	}

	public int getAvailableRoom(String roomType) {
		int rid = 0;
		try {
			query = "select * from room where rstatus = 'Empty' and rtype ='" + roomType + "' limit 1";
			rs = db.doExecuteQuery(query);
			if (rs.next()) {
				rid = rs.getInt("rid");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rid;
	}

	public boolean updateRoom(int rid) {
		query = "update room set rstatus = 'Used' where rid =" + rid;
		if (db.doExecuteUpdate(query)) {
			return true;
		}
		return false;
	}
}
