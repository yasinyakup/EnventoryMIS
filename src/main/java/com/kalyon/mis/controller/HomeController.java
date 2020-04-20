package com.kalyon.mis.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.kalyon.mis.entity.Category;
import com.kalyon.mis.entity.Department;
import com.kalyon.mis.entity.Employee;
import com.kalyon.mis.entity.ItemUsage;
import com.kalyon.mis.entity.Login;
import com.kalyon.mis.entity.Position;
import com.kalyon.mis.entity.Workshop;
import com.kalyon.mis.repository.CategoryRepository;
import com.kalyon.mis.repository.DepartmentRepository;
import com.kalyon.mis.repository.EmployeeRepository;
import com.kalyon.mis.repository.ItemRepository;
import com.kalyon.mis.repository.ItemUsageRepository;
import com.kalyon.mis.repository.PositionRepository;
import com.kalyon.mis.repository.UserRepository;
import com.kalyon.mis.repository.WorkshopRepository;
import com.kalyon.mis.service.PositionEditor;

@Controller
public class HomeController {
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private WorkshopRepository workshopRepository;
	
	@Autowired
	private ItemUsageRepository itemUsageRepository;
	
	@Autowired
	private PositionRepository positionRepository;
	
	@Autowired
	private DepartmentRepository departmentRepository;
	
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ItemRepository itemRepository;
	
	@GetMapping("/home")
	public String goHome(Model model) {
		List<Category> categories = categoryRepository.findAll();
		List<Workshop> workshops = workshopRepository.findAll();
		List<ItemUsage> itemUsages = itemUsageRepository.findAll();
		model.addAttribute("categories", categories);
		model.addAttribute("workshops", workshops);
		model.addAttribute("itemUsages", itemUsages);
		return "home";
	}

	@GetMapping("/login")
	public String goLogin() {
		
		return "login";
	}
	
	
	@GetMapping("/register")
	public String goRegister() {
		
		return "register";
	}
	
	@GetMapping("/employees")
	public String goEmployees(Model model) {
		
		model.addAttribute("employees", employeeRepository.findAll());
		return "employees";
	}
	
	
	@GetMapping("/users")
	public String goUsers(Model model) {
		
		model.addAttribute("users", userRepository.findAll());
		return "users";
	}
	
	
	@GetMapping("/tables")
	public String goTables() {
		
		return "tables";
	}
	
	@GetMapping("/items")
	public String goItems(Model model) {
		model.addAttribute("items", itemRepository.findAll());
		return "items";
	}
	
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
	
//	@InitBinder
//	public void initBinder(WebDataBinder binder) {
//		
//		binder.registerCustomEditor(Position.class,"positon", new PositionEditor());
//	
//	}
	
}
