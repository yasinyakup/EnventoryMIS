package com.kalyon.mis.controller;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kalyon.mis.entity.Login;
import com.kalyon.mis.entity.User;
import com.kalyon.mis.repository.UserRepository;

@Controller
public class LoginController {

	@Autowired
	private UserRepository userRepository;
	

	@PostMapping("/userLogin")
	public String authenticated(@Valid @ModelAttribute("login") Login login, BindingResult result, Model model) {

		User user = userRepository.findByNameAndPassword(login.getUserName(), login.getPassword());
		if (!result.hasErrors()) {
			if (user != null) {
				model.addAttribute("msg", "Giriş Başarılı!");
				return "home";
			}else {
				model.addAttribute("msg", "Kullanıcı adı veya şifre yanlış");
				return "login";
			}

		} else {
			return "login";
		}

	}
}
