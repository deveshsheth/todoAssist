package com.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.Data;

@Data
@Entity
@Table(name = "users")
public class UserEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long userId;
	
	String firstName;
	String lastName;
	String dob;
	int age;
	String mobileNo;
	String authToken;
	
	@CreationTimestamp
	Date createDate;
	
	@UpdateTimestamp
	Date updatedDate;
	
	String email;
	String password;
	
	int roleId;
	
	
	
}
