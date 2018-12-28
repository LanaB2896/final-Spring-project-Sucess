package com.springsecurity.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.springsecurity.web.Repository.UserRepository;
import com.springsecurity.web.Security.Authority;
import com.springsecurity.web.domain.User;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private PasswordEncoder passwordEncoder;

	public User save(User user) {
		String encodedPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);

		Authority authority = new Authority();
		authority.setAuthority("ROLE_USER");
		authority.setUser(user);

		user.getAuthorities().add(authority);
//	user= userRepository.save(user);
//return user;
		return userRepository.save(user);
	}

}