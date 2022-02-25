package com.sportshoes.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;





@Entity
@Table(name="CustomerDetails")
public class CustomerRegistration {

	@Id
	@Column(name = "custometId")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long custometId;
	@Column(name = "FullName")
	private String fullName;
	@Column(name = "Email")
	private String email;
	@Column(name = "PhoneNumber")
	private String phoneNumber;
	@Column(name = "Password")
	private String password;
	
	public long getCustometId() {
		return custometId;
	}
	public void setCustometId(long custometId) {
		this.custometId = custometId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
