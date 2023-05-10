package com.project.safevibe.service;

import java.util.List;

import com.project.safevibe.dto.Admin;
import com.project.safevibe.dto.CrimeRating;
import com.project.safevibe.dto.Feedback;
import com.project.safevibe.dto.User;

public interface AdminService {
	
	public void userCreate(User user);
	public void create_feedback(Feedback feedback);
	public List<CrimeRating> selectAllCrimeRating();
	public boolean checkAdmin(Admin admin);
	public boolean checkUser(User user);
	public CrimeRating checkcities(String city);
	public List<Admin> selectAllUsers();
	public void createadmin(Admin admin);
	public List<Feedback> selectall_feedback();
	public void createRate(CrimeRating crate);
	public void deleteCrimeRating(int id);
	public void editCrime(CrimeRating cr);
	public CrimeRating getCrimeById(int id);
}

