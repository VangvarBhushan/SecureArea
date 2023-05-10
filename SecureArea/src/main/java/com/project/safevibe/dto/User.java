package com.project.safevibe.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class User {

	@Id
	@GeneratedValue
	private int id;
	private String firstname;
	private String lastname;
	private String useremail;
	private String userpassword;
	
	public User() {
		super();
	}
	
	public User(int id) {
		super();
		this.id = id;
	}

	public User(String firstname, String lastname, String useremail, String userpassword) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.useremail = useremail;
		this.userpassword = userpassword;
	}

	public User(int id, String firstname, String lastname, String useremail, String userpassword) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.useremail = useremail;
		this.userpassword = userpassword;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	
}
