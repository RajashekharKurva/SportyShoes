package com.sportshoes.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AdminDetails {
	
	@Id
	private int id;
	String userName;
	String password;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

}
