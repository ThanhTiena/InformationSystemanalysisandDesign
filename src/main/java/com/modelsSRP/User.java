package com.modelsSRP;

public class User extends Account {

	public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [getAccountID()=" + getAccountID() + ", getUserName()=" + getUserName() + ", getPassword()="
				+ getPassword() + ", getAvatar()=" + getAvatar() + ", getRole()=" + getRole() + "]";
	}
	
}
