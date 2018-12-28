package com.springsecurity.web.homeController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.springsecurity.web.domain.User;
import com.springsecurity.web.service.UserService;


@Controller
public class LoginController {
	 @Autowired
	 private UserService userService;
@GetMapping(value="/login")
public String login() {
	
	return "login";
}
@GetMapping(value="/register")
public String register(ModelMap model)
{
	model.put("register", new User());
	return "register";
}
@PostMapping(value="/register")
public String registerPost(@ModelAttribute("register") User user)
{
User savedUser= userService.save(user);
//System.out.println("save" +user);
//System.out.println("saved" +savedUser);
 return "redirect:/login";
}

@GetMapping("/success")
public String succes()
{
	return "successful";
}
@GetMapping("/admin")
public String admin() {
	
  return "Admin Page";
}
@GetMapping("/home")
public String home()
{
	return "home";
}
}






