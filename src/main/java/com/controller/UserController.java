package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.entity.TasksEntity;
import com.entity.UserEntity;
import com.repository.TasksRepository;



@Controller
public class UserController {
	
	@Autowired
	
	  TasksRepository tasksrepository;
	 
	@GetMapping("/userhome")
	public String users(Model model,@SessionAttribute("user") UserEntity user,HttpServletRequest req) {
		// TODO Auto-generated method stub
		 List<TasksEntity> tasks = tasksrepository.findByUserId(user.getUserId());
		  model.addAttribute("listtask", tasks);
		  
		  
		return "userhome";
		
	}
	
	@GetMapping("/forgotpassword")
	public String forgotpassword() {
		// TODO Auto-generated method stub
		return "forgotpassword";
		
	}
	
	@GetMapping("/resetpassword")
	public String resetpassword() {
		// TODO Auto-generated method stub
		return "resetpassword";
		
	}
	
	@GetMapping("/userheader")
	public String userheader() {
		// TODO Auto-generated method stub
		return "userheader";
		
	}
	
	@GetMapping("/usersidebar")
	public String usersidebar() {
		// TODO Auto-generated method stub
		return "usersidebar";
		
	}
	
	@GetMapping("/register")
	public String register() {
		// TODO Auto-generated method stub
		return "register";
		
	}
	
	@GetMapping("/")
	public String login() {
		// TODO Auto-generated method stub
		return "login";
		
	}
	
	
	@GetMapping("/groups")
	public String groups() {
		// TODO Auto-generated method stub
		return "groups";
		
	}
	
	@GetMapping("/calendar")
	public String calendar() {
		// TODO Auto-generated method stub
		return "calendar";
		
	}
	
	@GetMapping("/addtask")
	public String addtask() {
		// TODO Auto-generated method stub
		return "addtask";
		
	}
	
	@GetMapping("/myprofile")
	public String myprofile() {
		// TODO Auto-generated method stub
		return "myprofile";
		
	}
	
	@GetMapping("/editprofile")
	public String editprofile() {
		// TODO Auto-generated method stub
		return "editprofile";
		
	}

	@GetMapping("/notes")
	public String notes() {
		// TODO Auto-generated method stub
		return "notes";
		
	}
	
	@GetMapping("/usersettings")
	public String usersettings() {
		// TODO Auto-generated method stub
		return "usersettings";
		
	}
	
	@GetMapping("/changepassword")
	public String changepassword() {
		// TODO Auto-generated method stub
		return "changepassword";
		
	}
	
	
}
