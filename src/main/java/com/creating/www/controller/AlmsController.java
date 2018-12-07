package com.creating.www.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.creating.www.AlmBean;
import com.creating.www.services.IAlmService;
import com.creating.www.services.alarmsrela.AlmServiceImpl;

@RestController
@RequestMapping("/alm")
public class AlmsController {
	static IAlmService<AlmBean,Long> service=new AlmServiceImpl();
	@RequestMapping("/{pathname}")
	public ModelAndView all(@PathVariable String pathname) 
	{
		return new ModelAndView("");
	}
	@RequestMapping("/{part}/{offset}")
	public ModelAndView partAlms(@PathVariable String path,@PathVariable String offset) 
	{
		return new ModelAndView("");
	}
	@RequestMapping("/{id}")
	public ModelAndView one(@PathVariable String path,@PathVariable String offset) 
	{
		return new ModelAndView("");
	}
	
	
	
}
