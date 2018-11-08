package com.creating.www.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/register")
public class RegisterController {
	@RequestMapping("")
	public ModelAndView base(Model model) 
	{
		return new ModelAndView("register");
	}

}
