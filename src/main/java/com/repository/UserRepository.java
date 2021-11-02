package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.UserEntity;

public interface UserRepository  extends JpaRepository<UserEntity, Long>{
	
	UserEntity findByEmailAndPassword(String email,String password);
	

}
