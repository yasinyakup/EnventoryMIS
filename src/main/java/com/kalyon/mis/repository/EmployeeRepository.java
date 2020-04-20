package com.kalyon.mis.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kalyon.mis.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
