package com.kalyon.mis.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.kalyon.mis.entity.Position;

public interface PositionRepository extends JpaRepository<Position, Long> {
	
	public Position findByName(@Param("name") String name);
	

}
