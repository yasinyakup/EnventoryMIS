package com.kalyon.mis.entity;

import javax.validation.constraints.NotEmpty;

import org.springframework.stereotype.Component;

@Component
public class Login {

	@NotEmpty(message = "Boş bırakmayın!!!")
	private String userName;
	
	@NotEmpty(message = "Boş bırakmayın!!!")
	private String password;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
