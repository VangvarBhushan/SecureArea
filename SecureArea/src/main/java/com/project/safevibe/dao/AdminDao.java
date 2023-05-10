package com.project.safevibe.dao;


import java.util.List;

import com.project.safevibe.dto.Admin;
import com.project.safevibe.dto.CrimeRating;
import com.project.safevibe.dto.Feedback;
import com.project.safevibe.dto.User;

public interface AdminDao {
	
	public void saveUser(User user);
	public void save_feedback(Feedback feedback);		
	public List<CrimeRating> getAllRating() ;
	public boolean validateAdmin(Admin admin);
	public boolean validateUser(User user);
	public CrimeRating checkCity(String city);
	public List<Admin> getAll();
	public void save(Admin admin);
	public List<Feedback> getAllfeedback();
	public void saveRate(CrimeRating crate);
	public void editCrime(CrimeRating cr);
	public CrimeRating getCrimeById(int id);
	public void deleteCrimeById(int id);
}
