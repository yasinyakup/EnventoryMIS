package com.kalyon.mis.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.kalyon.mis.entity.Employee;
import com.kalyon.mis.entity.Login;
import com.kalyon.mis.entity.Role;
import com.kalyon.mis.entity.User;
import com.kalyon.mis.repository.EmployeeRepository;
import com.kalyon.mis.repository.UserRepository;

import javassist.expr.NewArray;

@Controller
public class RegisterController {
	
	private static final String INIT_PASSWORD = new BCryptPasswordEncoder().encode("12345");
	private static final Role INIT_ROLE =new Role(2L, "user");

	@Autowired
	EmployeeRepository employeeRepository;
	
	@Autowired
	UserRepository userRepository;

	@PostMapping("/registerEmp")
	public String RegisterEmp(@Valid @ModelAttribute("newEmp") Employee employee, BindingResult result, Model model) {

		if (!result.hasErrors()) {
			//employeeRepository.save(employee);
			userRepository.save(new User(employee.getEmpCode(), INIT_PASSWORD, false, employee, INIT_ROLE ));
			model.addAttribute("msg", "Kayıt başarılı!");
			System.out.println("sisteme kayd edildi"+ INIT_PASSWORD);
			return "home";
		} else {
			model.addAttribute("msg", "Kayıt başarısız!");
			return "register";
		}

	}

}
