package com.kalyon.mis.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kalyon.mis.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
	
	
	public User  findByNameAndPassword(String name, String password);
	

}
