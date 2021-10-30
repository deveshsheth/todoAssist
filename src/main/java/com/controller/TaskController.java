package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class TaskController {

	

	@Autowired
	/* TasksRepository tasksrepository; */

	@PostMapping("addTasks")
	public String addTasks(/* TasksEntity tasks */) {

		/*
		 * System.out.println(tasks.getTaskName()); tasksrepository.save(tasks);
		 */

		return "redirect:/tasks";

	}

	@GetMapping("/tasks")
	public String tasks() { // TODO
		// Auto-generated method stub
		/*
		 * List<TasksEntity> tasks = tasksrepository.findAll();
		 * model.addAttribute("listtasks", tasks);
		 */
		return "tasks";

	}
	
	@GetMapping("/myday")
	public String myday() {
		// TODO Auto-generated method stub
		/*
		 * List<TasksEntity> mydaytasks = tasksrepository.findAllTodayTask();
		 * model.addAttribute("mydaytask", mydaytasks);
		 */
		 
		return "myday";
		
	}
	
}
