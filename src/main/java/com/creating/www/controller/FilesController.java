package com.creating.www.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.creating.www.utils.FileUtil;

@RestController
@RequestMapping("/upload")
public class FilesController {
	@RequestMapping("")
	public String jump(@RequestParam("file")MultipartFile file) 
	{
		FileUtil.generate(file);
		return "eee";
	}
	
}
