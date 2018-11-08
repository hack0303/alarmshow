package com.creating.www.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {

	@RequestMapping("/{param}")
	@ResponseBody
	public String value(@PathVariable String param) 
	{
		System.out.println(param+"-------------------------------");
		return "中文";
	}
	@RequestMapping("/001")
	@ResponseBody
	public String value001(@RequestParam String lang) 
	{
		System.out.println(lang);
		return "a";
	}
	
}
