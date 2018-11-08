package com.creating.www.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/global/")
public class GlobalJumpController {

	@RequestMapping("{name}")
	public String jump(@PathVariable String name) 
	{
		return name;
	}
	
}
