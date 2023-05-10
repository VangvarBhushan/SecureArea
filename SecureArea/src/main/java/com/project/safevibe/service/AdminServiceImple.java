package com.project.safevibe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.safevibe.dao.AdminDao;
import com.project.safevibe.dto.Admin;
import com.project.safevibe.dto.CrimeRating;
import com.project.safevibe.dto.Feedback;
import com.project.safevibe.dto.User;

@Service
public class AdminServiceImple implements AdminService{

	@Autowired
	public AdminDao adminDao;
	
	public boolean checkAdmin(Admin admin) {
		
		System.out.println("Checking Admin");
		
		return adminDao.validateAdmin(admin);
	}

	public List<CrimeRating> selectAllCrimeRating() {	
		return adminDao.getAllRating();
	}
	public List<Admin> selectAllUsers() {
		return adminDao.getAll();
	}
	public CrimeRating checkcities(String city) {	
		
		return adminDao.checkCity(city);
	}

	public void userCreate(User user) {	
		
		System.out.println("creating user");
		
		adminDao.saveUser(user);
		
	}

	public void create_feedback(Feedback feedback) {	
		// TODO Auto-generated method stub
		adminDao.save_feedback(feedback);
	}
	public List<Feedback> selectall_feedback() {
		
		return adminDao.getAllfeedback();
	}

	

	public boolean checkUser(User user) {	
		
		return adminDao.validateUser(user);
	}

	public void createadmin(Admin admin) {
		adminDao.save(admin);
	}
	public void createRate(CrimeRating crate) {
		adminDao.saveRate(crate);
		
	}
public CrimeRating getCrimeById(int id) {
		
		return adminDao.getCrimeById(id);
	}

	public void editCrime(CrimeRating cr) {
		adminDao.editCrime(cr);
		
	}

	public void deleteCrimeRating(int id) {
		adminDao.deleteCrimeById(id);
		
	}


}
