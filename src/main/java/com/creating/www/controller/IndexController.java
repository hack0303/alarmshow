package com.creating.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class IndexController {
	@GetMapping("")
	public ModelAndView execute(Model model) 
	{	
		return new ModelAndView("redirect:/index.jsp");
	}
	@ResponseBody
	@ExceptionHandler({Exception.class})
	public String handleException(Exception e) 
	{
		return "exception";
	}
	
}
