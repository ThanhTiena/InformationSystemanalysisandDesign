package com.dao;

import java.sql.ResultSet;
import java.util.*;

import com.JDBCConnector.Database;
import com.modelsSRP.Booking;
import com.modelsSRP.Customer;
import com.modelsSRP.Room;

public class DAOBooking {
	private Booking booking;
	private Room room;
	private Database db;
	private String query;
	private ResultSet rs;
	private DAOCustomer daoCustomer;
	private DAORoom daoRoom;
	private DAOService daoService;
	private List<Booking> list;

	public DAOBooking() {
		super();
		this.booking = new Booking();
		this.room = new Room();
		this.db = new Database();
		this.daoCustomer = new DAOCustomer();
		this.daoRoom = new DAORoom();
		this.daoService = new DAOService();
		this.list = new ArrayList<Booking>();
	}

	public void updateBookingCustomer(Customer c) {
		this.booking.setCustomer(c);
	}

	public boolean booking(int cid, int numPeople, String arr, String lev, String roomType) {
		int bid = new Random().nextInt(1000000);
		this.room = daoRoom.getRoom(roomType);
		try {
			query = "insert into booking (bid, cid, num_cus, rid, arrival_date, leaving_date, remark, status,date_booking) values("
					+ bid + "," + cid + "," + numPeople + "," + this.room.getRoomID() + ",'" + arr + "','" + lev
					+ "','','Pending','" + new Date() + "')";
			if (db.doExecuteUpdate(query)) {
				System.out.println("booking successfull");
				return true;
			} else {
				System.out.println("booking failed");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return false;
	}

	public Booking getBooking(int cid, int bid) {
		try {
			this.booking.setCustomer(daoCustomer.getCustomer(cid));

			query = "select * from booking where bid=" + bid;
			rs = db.doExecuteQuery(query);
			if (rs.next()) {
				this.booking.setBid(rs.getInt("bid"));
				this.booking.setNumPeople(rs.getInt("num_cus"));
				this.booking.setRoom(daoRoom.getRoomById(rs.getInt("rid")));
				this.booking.setArrivalDay(rs.getString("arrival_date"));
				this.booking.setLeaveDay(rs.getString("leaving_date"));
				this.booking.setRemark(rs.getString("remark"));
				this.booking.setStatus(rs.getString("status"));
				this.booking.setService(daoService.getService(this.booking.getRoom().getRoomType()));
				this.booking.setDate(rs.getString("date_booking"));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return this.booking;
	}

	public List<Booking> getBookingList(int cid) {
		try {
			Customer customer = daoCustomer.getCustomer(cid);

			query = "select * from booking where cid=" + cid;
			rs = db.doExecuteQuery(query);

			while (rs.next()) {
				Booking bookingTemp = new Booking();
				bookingTemp.setBid(rs.getInt("bid"));
				bookingTemp.setNumPeople(rs.getInt("num_cus"));
				bookingTemp.setRoom(daoRoom.getRoomById(rs.getInt("rid")));
				bookingTemp.setArrivalDay(rs.getString("arrival_date"));
				bookingTemp.setLeaveDay(rs.getString("leaving_date"));
				bookingTemp.setRemark(rs.getString("remark"));
				bookingTemp.setStatus(rs.getString("status"));
				bookingTemp.setCustomer(customer);
				bookingTemp.setService(daoService.getService(bookingTemp.getRoom().getRoomType()));
				bookingTemp.setDate(rs.getString("date_booking"));
				this.list.add(bookingTemp);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return this.list;
	}

	public Booking getEachBooking(int bid) {
		try {
			this.booking = new Booking();
			query = "select * from booking where bid=" + bid;
			rs = db.doExecuteQuery(query);

			while (rs.next()) {
				Booking bookingTemp = new Booking();

				bookingTemp.setBid(rs.getInt("bid"));

				int cid = rs.getInt("cid");
				Customer customer = daoCustomer.getCustomer(cid);

				bookingTemp.setNumPeople(rs.getInt("num_cus"));
				bookingTemp.setRoom(daoRoom.getRoomById(rs.getInt("rid")));
				bookingTemp.setArrivalDay(rs.getString("arrival_date"));
				bookingTemp.setLeaveDay(rs.getString("leaving_date"));
				bookingTemp.setRemark(rs.getString("remark"));
				bookingTemp.setStatus(rs.getString("status"));
				bookingTemp.setCustomer(customer);
				bookingTemp.setService(daoService.getService(bookingTemp.getRoom().getRoomType()));
				bookingTemp.setDate(rs.getString("date_booking"));
				this.booking = bookingTemp;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return this.booking;
	}

	public List<Integer> getListBookingID() {
		List<Integer> list = new ArrayList<Integer>();
		try {
			query = "select bid from booking";
			rs = db.doExecuteQuery(query);
			while (rs.next()) {
				list.add(rs.getInt("bid"));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}

	public int getCIDByBID(int bid) {
		int cid = 0;
		try {
			query = "select cid from booking where bid=" + bid;
			rs = db.doExecuteQuery(query);
			if (rs.next()) {
				cid = rs.getInt("cid");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return cid;
	}

	public boolean confirmBooking(Booking b) {
		try {
			query = "update booking set remark ='" + b.getRemark() + "', status = '" + b.getStatus() + "' where bid ="
					+ b.getBid();
			if (db.doExecuteUpdate(query)) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	public boolean cancelBooking(int bid) {
		try {
			query = "delete from booking where bid =" + bid;
			if (db.doExecuteUpdate(query)) {
				System.out.println("cancel the booking " + bid + " successful");
				return true;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

}
