package com.dao;

import java.sql.ResultSet;
import java.util.Random;

import com.JDBCConnector.Database;
import com.modelsSRP.User;

public class DAOUser {
	private User user;
	private Database db;
	private String query;
	private ResultSet rs;

	public DAOUser() {
		super();
		this.user = new User();
		this.db = new Database();
	}

	public int login(String name, String password) {
		String pass = "";
		int cid = 0;
		try {
			query = "select password, cid from user where username='" + name + "'";
			rs = db.doExecuteQuery(query);

			if (rs.next()) {
				pass = rs.getString("password");
				cid = rs.getInt("cid");
			}
			if (password.equals(pass)) {
				System.out.println("login successful");
			} else {
				System.out.println("login fail");
				return 0;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return cid;
	}

	public boolean checkUserName(String userName) {
		try {
			query = "select username from user where username='" + userName + "'";
			rs = db.doExecuteQuery(query);

			if (rs.next()) {
				System.out.println("user is existed!");
				return false;
			} else {
				System.out.println("can register new account");
				return true;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	public int register(String username, String password, String email) {
		int cid = new Random().nextInt(1000000);
		try {
			if (checkUserName(username)) {
				query = "insert into user (cid, username,password,avatar,role) values(" + cid + ",'" + username + "','"
						+ password + "','abc','customer')";
				if (db.doExecuteUpdate(query)) {
					return cid;
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0;
	}

	public User getUser(int cid) {
		try {
			query = "select * from user where cid=" + cid;
			rs = db.doExecuteQuery(query);

			while (rs.next()) {
				user.setAccountID(cid);
				user.setUserName(rs.getString("username"));
				user.setPassword("");
				user.setAvatar(rs.getString("avatar"));
				user.setRole(rs.getString("role"));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return user;
	}

	public boolean changePassword(int cid, String password) {
		try {
			query = "update user set password='" + password + "' where cid=" + cid;
			if (db.doExecuteUpdate(query)) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return false;
	}

	public boolean updateAvatar(int cid, String newAvatar) {
		try {
			query = "update user set avatar='" + newAvatar + "' where cid=" + cid;
			if (db.doExecuteUpdate(query)) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
}
