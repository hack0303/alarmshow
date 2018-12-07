package com.creating.www.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.creating.www.AlmBean;
import com.creating.www.beans.resources.AlarmRelaResourceBean;
import com.creating.www.context.CustomerAppContext;
import com.creating.www.context.MainCache;
import com.creating.www.export.Parser;
import com.creating.www.export.alms.parsers.AlmBeanFromFileParser;
import com.creating.www.local.ExecuteContext;
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
	@RequestMapping("/{category}")
	@ResponseBody
	public String jump(@PathVariable String category,@RequestParam("file")MultipartFile file,HttpServletRequest request) 
	{
		if(category.equals("alarmsdata")) {
		AlarmRelaResourceBean arBean=FileUtil.generate(file,category+".csv");
		@SuppressWarnings("unchecked")
		Parser<File,List<AlmBean>> parser=(Parser<File, List<AlmBean>>) CustomerAppContext.xmlAC.getBean(AlmBeanFromFileParser.class.getSimpleName());
		MainCache.almBeans=parser.parse(arBean.getDest());
		ExecuteContext executeContext=(ExecuteContext) request.getSession().getAttribute("running-context");
		if(executeContext==null) 
		{
			executeContext=new ExecuteContext();
		}
		executeContext.setAlarmsdata(arBean);
		}
		else if(category.equals("rulesdata")) 
		{
		FileUtil.generate(file, category+".csv");	
		}else 
		{
			return "404";
		}
		return "200";
	}
	
}
