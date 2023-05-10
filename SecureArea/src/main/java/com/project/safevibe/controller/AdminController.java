package com.project.safevibe.controller;


import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.project.safevibe.dto.Admin;
import com.project.safevibe.dto.CrimeRating;
import com.project.safevibe.dto.Feedback;
import com.project.safevibe.dto.User;
import com.project.safevibe.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	

	@RequestMapping(value = "/loginUser.htm")		
	public String loginUser(ModelMap model) {
		return "loginUser";
	}
	@RequestMapping(value = "/AddAdmin.htm")
	public String prepRegForm(ModelMap model) {
		model.put("admin",new Admin());
		return "AddAdmin";
	}
	
	@RequestMapping(value = "/registerUser.htm")
	public String regUser(ModelMap model) {
		model.put("user", new User());
		
		System.out.println("i am here");
		
		return "registerUser";
	}
	@RequestMapping(value = "/regUser.htm")
	public String registerUser1(@RequestParam("firstname") String fname, @RequestParam("lastname") String lname,@RequestParam("yourEmail") String email,@RequestParam("password") String pass,@RequestParam("verifypassword") String confPass,ModelMap model) {
		
		
		User user=new User(fname, lname, email, pass);
		adminService.userCreate(user);
		model.put("user", new User());
		
		System.out.println("i am back");
		
		return "loginUser";
	}
	
	
	@RequestMapping(value = "/user_feedback.htm")
	public String add_feeddback(Feedback feedback,@RequestParam("txtName")String username,@RequestParam("txtEmail")String email,@RequestParam("txtMsg")String fed,ModelMap model) {
		Feedback feed=new Feedback(username, email, fed);
		if(!username.isEmpty() && !email.isEmpty() && !fed.isEmpty()) {
			System.out.println(username.isEmpty());
			System.out.println(username.isEmpty());
			adminService.create_feedback(feed);
			feedback.setName(username);
			feedback.setEmail(email);
			feedback.setFeedback(fed);
			
			return "userHomePage";
		}else {
			model.put("msg","Please fill all details");
			return "UserFeedbackForm";
		}
			
		
		
	}
	
	
	@RequestMapping(value = "/userLogin.htm" ,method = RequestMethod.POST )
	public String login_check(User user,@RequestParam("username")String username,@RequestParam("pass")String pass,ModelMap model) {
		user.setUseremail(username);
		user.setUserpassword(pass);
		boolean b=adminService.checkUser(user);
		if(b)
		{
			return "userHomePage";
	
		}else {
			return "loginUser";
		}
	}
	@RequestMapping(value= "/feedbackContr.htm")
	public ModelAndView feedback() {
		
		
		return new ModelAndView("UserFeedbackForm");
	}
	@RequestMapping(value = "/adminDetails.htm")
	public String userList(ModelMap model) {
		List<Admin> ulist = adminService.selectAllUsers();
		model.put("ul", ulist);
		return "AdminDetails";
	}
	@RequestMapping(value = "/reg.htm")
	public String register(Admin admin,ModelMap model) {
		adminService.createadmin(admin);
		model.put("admin", new Admin());
		return "index";
	}
	@RequestMapping(value = "/FeedbackDetails.htm")
	public String feedback_list(ModelMap model) {
		List<Feedback> ulist = adminService.selectall_feedback();
		model.put("ul", ulist);
		return "FeedbackDetails";
	}
	
	@RequestMapping(value = "/login11.htm")   	
	public String login(ModelMap model) {
		
		System.out.println("Admin");
		
		model.put("admin", new Admin());
		return "login";
	}

	@RequestMapping(value="/searchCity.htm")
	public String searchCity(@RequestParam("searchCity") String id, ModelMap model) { 
		CrimeRating cr=adminService.checkcities(id);
		model.put("crimeRate", cr);
		return "maps";
	}
	
	@RequestMapping(value = "/login.htm" ,method = RequestMethod.POST )
	public String login(Admin admin,@RequestParam("username")String username,@RequestParam("pass")String pass,ModelMap model,HttpSession session) {
		
		System.out.println("OKAY");
		
			admin.setAdminEmail(username);
			admin.setAdminPass(pass);
			boolean b=adminService.checkAdmin(admin);
			
		if(b) {
			session.setAttribute("admin", admin);
			return "index";
		
		}
		model.put("admin", new Admin());
		return "login";
	}
	@RequestMapping(value = "/RatingDetails.htm")
	public String rateList(ModelMap model) {
		List<CrimeRating> ulist = adminService.selectAllCrimeRating();
		model.put("ul", ulist);
		return "RatingDetails";
	}
	
	@RequestMapping(value = "/addCrimeRate.htm")
	public String register(ModelMap model) {
		
		model.put("crate", new CrimeRating());
		return "AddCrimeRating";
	}
	@RequestMapping(value = "/addCrime.htm")
	public String add(CrimeRating crate,ModelMap model) {
		adminService.createRate(crate);
		model.put("crate", new CrimeRating());
		return "index";
	}
	@RequestMapping(value ="/updaterating.htm")
	public String  updateRating(ModelMap model,@RequestParam("id") int id) {
		  CrimeRating cr=adminService.getCrimeById(id); 
		  model.put("crimerating", cr); 
		  return "editCrimeRating";
		 
	}
	@RequestMapping(value = "editcrime.htm")
	public String editCrimeRating(ModelMap model,@RequestParam("id") int id,@RequestParam("city")String city,@RequestParam("lan")Double lan,@RequestParam("lat")Double lat,@RequestParam("rating")int rating) {
		CrimeRating cr=new CrimeRating(id,city, lat, lan, rating);
		adminService.editCrime(cr);
		List<CrimeRating> ulist = adminService.selectAllCrimeRating();
		model.put("ul", ulist);
		return "RatingDetails";
		
	}
	
	@RequestMapping(value = "deleteCrimeRating.htm")
	public String  deleteCrimeRating(ModelMap model,@RequestParam("id") int id) {
		  adminService.deleteCrimeRating(id);
		  List<CrimeRating> ulist = adminService.selectAllCrimeRating();
			model.put("ul", ulist);
			return "RatingDetails";
		 
	}
	
}