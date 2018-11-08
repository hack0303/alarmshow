package com.creating.www.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/alarm")
public class AlarmsController {
    static final String basepath="alarms/";
	@RequestMapping("/{pathname}")
	public ModelAndView jump(@PathVariable String pathname) 
	{
		return new ModelAndView(basepath+pathname);
	}
	
}
