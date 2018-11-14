package com.creating.www.controller;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/root/")
public class ConfigController {
	@GetMapping("{pathname}")
	public ModelAndView jump(@PathVariable String pathname) 
	{	
		if(pathname.equals("config"))
		return new ModelAndView("root/config");
		else return null;
	}
	@ResponseBody
	@ExceptionHandler({Exception.class})
	public String handleException(Exception e) 
	{
		return "exception";
	}
	
}
