package com.controller;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.entity.TasksEntity;
import com.entity.UserEntity;
import com.repository.TasksRepository;
import com.repository.UserRepository;

@Controller
public class UserController {

	@Autowired

	TasksRepository tasksrepository;
	UserRepository userrepository;

	@GetMapping("/userhome")
	public String users(Model model, @SessionAttribute("user") UserEntity user, HttpServletRequest req) {
		// TODO Auto-generated method stub

		Date d = new Date();

		LocalDate obj = LocalDate.now();

		model.addAttribute("todaysCount", tasksrepository.countByStartDateAndUserId(obj, user.getUserId()));

		model.addAttribute("Important", tasksrepository.countByImportantAndUserId(user.getUserId()));
		model.addAttribute("UserTasks", tasksrepository.countByUserId(user.getUserId()));

		List<TasksEntity> tasks = tasksrepository.myDay(user.getUserId());
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
	public String userheader(Model model, @SessionAttribute("user") UserEntity user, HttpServletRequest req) {
		// TODO Auto-generated method stub
		List<TasksEntity> task = tasksrepository.myTodayNotification(user.getUserId());
		model.addAttribute("todaytasknotification", task);

		List<TasksEntity> upcomingtask = tasksrepository.myUpcomingTask(user.getUserId());
		model.addAttribute("upcomingtasks", upcomingtask);

		return "userheader";

	}

	@GetMapping("/notes")
	public String notes() {
		// TODO Auto-generated method stub
		return "notes";
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
	public String calendar(Model model, @SessionAttribute("user") UserEntity user, HttpServletRequest req) {
		// TODO Auto-generated method stub
		List<TasksEntity> task = tasksrepository.findByUserId(user.getUserId());
		model.addAttribute("listtaskcal", task);
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

	/*
	 * @GetMapping("/getUser/{userId}") public String
	 * getUser(@PathVariable("userId") Long userId,Model
	 * model,@SessionAttribute("user") UserEntity user,HttpServletRequest req) {
	 * 
	 * List<TasksEntity> task = tasksrepository.myDay(user.getUserId());
	 * model.addAttribute("listtask", task);
	 * 
	 * user = userrepository.getById(userId); model.addAttribute("useredt", user);
	 * 
	 * return "myprofile";
	 * 
	 * }
	 */

	@GetMapping("/getUser/{userId}")
	public String getUser(@PathVariable("userId") Long userId, Model model, @SessionAttribute("user") UserEntity user,
			HttpServletRequest req) {
		/*
		 * List<TasksEntity> task = tasksrepository.myDay(user.getUserId());
		 * model.addAttribute("listtask", task);
		 */
		user = userrepository.getById(userId);
		model.addAttribute("useredt", user);

		return "myprofile";

	}

	@PostMapping("updateUser")
	public String updateUser(UserEntity user) {

		UserEntity u = userrepository.getById(user.getUserId());

		u.setEmail(user.getEmail());
		u.setMobileNo(user.getMobileNo());
		userrepository.save(u);

		return "redirect:/myprofile";

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

	@GetMapping("/addnotes")
	public String addnotes() {
		// TODO Auto-generated method stub
		return "addnotes";

	}

}
