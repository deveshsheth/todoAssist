package com.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.entity.TasksEntity;

@Repository
public interface TasksRepository extends JpaRepository<TasksEntity, Long> {

	
	List<TasksEntity> findByUserId(Long userId);

	@Query(value = "select * from tasks where start_date = CURRENT_DATE and end_date = CURRENT_DATE ",nativeQuery = true)
	List<TasksEntity> findAllTodayTask();
	
	List<TasksEntity> findByUserIdAndImportant(Long userId,Integer important);
	
	TasksEntity findByTaskId(Long taskId);
	

	
	
	
	 
	
	
}
