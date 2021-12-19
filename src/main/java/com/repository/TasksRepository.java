package com.repository;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.entity.TasksEntity;

@Repository
public interface TasksRepository extends JpaRepository<TasksEntity, Long> {

	
	List<TasksEntity> findByUserId(Long userId);
	
	List<TasksEntity> findByUserIdAndImportant(Long userId,Integer important);
	
	TasksEntity findByTaskId(Long taskId);

	@Query(value="select * from tasks t where t.start_date=CURRENT_DATE and t.end_date=CURRENT_DATE and t.user_id=:userid",nativeQuery = true)
	List<TasksEntity> myDay(@Param("userid")Long userid);

	@Query(value="select count(*) from tasks t where t.start_date=:obj and t.user_id=:userId",nativeQuery = true) 
	Long countByStartDateAndUserId(LocalDate obj, Long userId);
	  
    @Query(value="select count(*) from tasks t where t.important=1 and t.user_id=:userId",nativeQuery = true) 
	Long countByImportantAndUserId(Long userId); 
    
    Long countByUserId(Long userId);
	  

	
	
	
	 
	
	
}
