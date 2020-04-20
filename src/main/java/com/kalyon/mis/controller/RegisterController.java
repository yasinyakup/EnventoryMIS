package com.kalyon.mis.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.kalyon.mis.entity.Employee;
import com.kalyon.mis.entity.Login;
import com.kalyon.mis.repository.EmployeeRepository;

import javassist.expr.NewArray;

@Controller
public class RegisterController {

	@Autowired
	EmployeeRepository employeeRepository;

	@PostMapping("/registerEmp")
	public String RegisterEmp(@Valid @ModelAttribute("newEmp") Employee employee, BindingResult result, Model model) {

		if (!result.hasErrors()) {
			employeeRepository.save(employee);
			return "login";
		} else {
			return "register";
		}

	}

}
