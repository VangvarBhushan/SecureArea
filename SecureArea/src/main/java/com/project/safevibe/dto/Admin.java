package com.project.safevibe.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Admin")
public class Admin {

	@Id
	@GeneratedValue
	private int adminId;
	private String adminName;
	private String isMaster;
	private String adminEmail;
	private String adminPass;
	
	public Admin() {
		super();
	}
	public Admin(int adminId) {
		super();
		this.adminId = adminId;
	}
	
	public Admin(String adminName, String isMaster, String adminEmail, String adminPass) {
		super();
		this.adminName = adminName;
		this.isMaster = isMaster;
		this.adminEmail = adminEmail;
		this.adminPass = adminPass;
	}
	public Admin(int adminId, String adminName, String isMaster, String adminEmail, String adminPass) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.isMaster = isMaster;
		this.adminEmail = adminEmail;
		this.adminPass = adminPass;
	}
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getIsMaster() {
		return isMaster;
	}
	public void setIsMaster(String isMaster) {
		this.isMaster = isMaster;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminPass() {
		return adminPass;
	}
	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}
}
