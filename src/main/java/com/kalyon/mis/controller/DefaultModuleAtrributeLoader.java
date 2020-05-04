package com.kalyon.mis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.kalyon.mis.entity.Department;
import com.kalyon.mis.entity.Employee;
import com.kalyon.mis.entity.Login;
import com.kalyon.mis.entity.Position;
import com.kalyon.mis.repository.DepartmentRepository;
import com.kalyon.mis.repository.PositionRepository;

@ControllerAdvice
public class DefaultModuleAtrributeLoader {
	
	@Autowired
	private PositionRepository positionRepository;
	
	@Autowired
	private DepartmentRepository departmentRepository;
	
	

	@ModelAttribute("login")
	public Login defaultLogin() {
		return new Login();
	}
	
	
	
	@ModelAttribute("newEmp")
	public Employee defaultEmployee() {
		return new Employee();
	}
	
	
	@ModelAttribute("positionItems")
	public List<Position> getPositionNames() {
		//return positionRepository.findAll().stream().map(Position::getName).collect(Collectors.toList());
		return positionRepository.findAll();
	}
	
	
	@ModelAttribute("departmentItems")
	public List<Department> getDepartmentNames() {
		//return positionRepository.findAll().stream().map(Position::getName).collect(Collectors.toList());
		return departmentRepository.findAll();
	}
}
