package com.project.safevibe.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Feedback")
public class Feedback {

	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String email;
	private String feedback;
	
	public Feedback() {
		super();
	}
	public Feedback(int id) {
		super();
		this.id = id;
	}
	public Feedback(String name, String email, String feedback) {
		super();
		this.name = name;
		this.email = email;
		this.feedback = feedback;
	}
	public Feedback(int id, String name, String email, String feedback) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.feedback = feedback;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	
}
