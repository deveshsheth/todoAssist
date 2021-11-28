package com.controller;

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



@Controller
public class TaskController {

	

	@Autowired
	TasksRepository tasksrepository; 

	@PostMapping("addTasks")
	public String addTasks(TasksEntity tasks ) {

		
		   tasksrepository.save(tasks);
		 

		return "redirect:/tasks";

	}
	
	
	  @GetMapping("/getTask/{taskId}") 
	  public String getTask(@PathVariable("taskId") Long taskId,Model model) { 
	  
			
			  TasksEntity edittasks = tasksrepository.getById(taskId);
			  model.addAttribute("task", edittasks);
			 
	  
	  return "edittask";
	  
	  }
	 
	
	 @PostMapping("updateTask") public String updateTask(TasksEntity task) {
	  
	  TasksEntity t = tasksrepository.getById(task.getTaskId());
	  
	  t.setTaskName(task.getTaskName()); t.setDescription(task.getDescription());
	  t.setStartDate(task.getStartDate()); t.setEndDate(task.getEndDate());
	  t.setTaskTime(task.getTaskTime());
	  
	  tasksrepository.save(t);
	  
	  return "redirect:/tasks"; 
	  
	 }
	 

	@GetMapping("/tasks")
	public String tasks(Model model,@SessionAttribute("user") UserEntity user,HttpServletRequest req) { // TODO
		// Auto-generated method stub
		
		  List<TasksEntity> tasks = tasksrepository.findByUserId(user.getUserId());
		  model.addAttribute("listtasks", tasks);
		  
		
		 
		return "tasks";

	}
	
	@GetMapping("/myday")
	public String myday(Model model) {
		// TODO Auto-generated method stub
		
		  List<TasksEntity> mydaytasks = tasksrepository.findAllTodayTask();
		  model.addAttribute("mydaytask", mydaytasks);
		 
		 
		return "myday";
		
	}
	
	@GetMapping("impTask/{taskId}")
	public String imptask(TasksEntity tasks, @PathVariable("taskId") Long taskId) {
		TasksEntity utask = tasksrepository.findByTaskId(taskId);
		utask.setImportant(1);
		
		tasksrepository.save(utask);

		return "redirect:/tasks";
	}
	
	@GetMapping("/deleteTask/{taskId}")
	public String deleteUser(@PathVariable("taskId") Long taskId) {
		tasksrepository.deleteById(taskId);

		return "redirect:/tasks";
	}
	
	@GetMapping("unImportant/{taskId}")
	public String unimportnatTasks(TasksEntity tasks,@PathVariable("taskId") Long taskId)
	{
		
		TasksEntity utask = tasksrepository.findByTaskId(taskId);
		utask.setImportant(0);
		
		tasksrepository.save(utask);

		return "redirect:/important";
	}
	
	
	@GetMapping("/important")
	public String important(Model model, @SessionAttribute("user") UserEntity user) {
		// TODO Auto-generated method stub
	
		System.out.println(user.getUserId()+"tasks");
		List<TasksEntity> utasks=tasksrepository.findByUserIdAndImportant(user.getUserId(), 1);
		System.out.println(utasks);
		model.addAttribute("utasks",utasks);
		
		return "important";
		
	}
	
	
}
