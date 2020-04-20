package com.kalyon.mis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.kalyon.mis.entity.Department;

public interface DepartmentRepository extends JpaRepository<Department, Long> {

	@Query("select d from Department d where d.id = :id")
	public Department findByIdSingle(@Param("id") Long id);
	
	
}
