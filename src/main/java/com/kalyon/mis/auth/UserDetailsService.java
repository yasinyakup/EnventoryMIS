package com.kalyon.mis.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.kalyon.mis.entity.User;
import com.kalyon.mis.repository.UserRepository;

@Service
public class UserDetailsService implements org.springframework.security.core.userdetails.UserDetailsService {

	@Autowired
	UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		User user = this.userRepository.findByName(username);

		if (user == null) {
			System.out.println("user not found");
			throw new UsernameNotFoundException("cannot find username: " + username);			
		}
		System.out.println("user found");

		return new UserPrinciple(user);
	}

}
