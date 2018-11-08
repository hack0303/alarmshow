package com.creating.www.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/rule")
public class RulesController {
   static final String basePath="rules/";
	@RequestMapping("/{name}")
	public ModelAndView jump(@PathVariable String name) 
	{
		ModelAndView _mv=new ModelAndView();
		_mv.setViewName(basePath+name);
		return _mv;
	}
	
}
