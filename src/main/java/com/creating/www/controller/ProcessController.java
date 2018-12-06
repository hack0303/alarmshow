/**
 * 
 */
package com.creating.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.creating.www.beans.results.ProcessResultBean;

/**
 * @author Chack Yao
 * @firstcreatetime 2018年12月5日
 *
 */
@Controller
@RequestMapping("/process")
public class ProcessController {
	@PostMapping(path="/",consumes = "application/json",produces = "application/json;charset=UTF-8")
	@ResponseBody
	public ProcessResultBean get(@RequestBody ProcessResultBean process) 
	{
		int count=process.getProcessedCount();
		if(count<100)process.setProcessedCount(100);
			//process.setProcessedCount(++count);
		return process;
	}

}
