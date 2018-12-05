/**
 * 
 */
package com.creating.www.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Chack Yao
 * @firstcreatetime 2018年12月5日
 *
 */
@RestController
@RequestMapping("/running")
public class RunningController {
    @GetMapping("/run")
	public ModelAndView run() 
	{
		return new ModelAndView("running/loading");
	}
    @GetMapping("/reset")
   	public ModelAndView reset() 
   	{
   		return new ModelAndView("");
   	}
	
}
