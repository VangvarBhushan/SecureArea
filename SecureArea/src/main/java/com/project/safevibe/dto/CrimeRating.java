package com.project.safevibe.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class CrimeRating {

	@Id
	@GeneratedValue
	private int Id;
	private String City;
	private double Lat;
	private double Lan;
	private int rating;
	
	public CrimeRating() {
		super();
	}

	public CrimeRating(int id) {
		super();
		Id = id;
	}

	public CrimeRating(String city, double lat, double lan, int rating) {
		super();
		City = city;
		Lat = lat;
		Lan = lan;
		this.rating = rating;
	}

	public CrimeRating(int id, String city, double lat, double lan, int rating) {
		super();
		Id = id;
		City = city;
		Lat = lat;
		Lan = lan;
		this.rating = rating;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public double getLat() {
		return Lat;
	}

	public void setLat(double lat) {
		Lat = lat;
	}

	public double getLan() {
		return Lan;
	}

	public void setLan(double lan) {
		Lan = lan;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}
	
}
