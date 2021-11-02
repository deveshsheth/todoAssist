package com.entity;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import net.bytebuddy.asm.Advice.Local;

@Data
@Entity
@Table(name = "tasks")
public class TasksEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long taskId;

	String taskName, description;

	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	LocalDate startDate;
	
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	LocalDate endDate;


	String taskTime;
	Long userId;

	/* Integer isDeleted=0; */

	Integer important=0; 

}
