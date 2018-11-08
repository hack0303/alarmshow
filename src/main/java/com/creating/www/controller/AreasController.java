package com.creating.www.controller;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.creating.www.beans.alarms.AlarmBean;
import com.creating.www.services.alarmsrela.AlarmRelaService;

@RestController
@RequestMapping("/areas/")
public class AreasController {
     static AlarmRelaService alarmRelaServ=new AlarmRelaService();
	@RequestMapping("left/{pathname001}/{pathname002}")
	public ModelAndView jump(@PathVariable String pathname001,@PathVariable String pathname002) 
{
	 ModelAndView _mv=new ModelAndView("/"+pathname001+"/"+pathname002);
	 if(pathname002.equals("alarms")) 
	 {
		 
		 List<AlarmBean> list=alarmRelaServ.queryAllAlarms();
		 System.out.println("-----------------"+list.size());
		 _mv.addObject("alarms",list);
		 
	 }else if(pathname002.equals("elecs")) 
	 {
		 
	 }else if(pathname002.equals("rules")) 
	 {
		 
	 }
      return _mv;	
}
}
