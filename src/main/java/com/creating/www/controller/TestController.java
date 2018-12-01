package com.creating.www.controller;

import java.net.MalformedURLException;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.create.www.core.Client;
import com.creating.www.AlmBean;
import com.creating.www.ICallBack;
import com.creating.www.impl.PONAlarm;

@RestController
@RequestMapping("/test")
public class TestController {

	/**
	@RequestMapping("/{param}")
	@ResponseBody
	public String value(@PathVariable String param) 
	{
		System.out.println(param+"-------------------------------");
		return "中文";
	}
	*/
	@RequestMapping("/rmi")
	@ResponseBody
	public String test(PONAlarm ponAlarm) 
	{
		List<AlmBean> arg0=new ArrayList<AlmBean>();
		arg0.add(ponAlarm);
		try {
			((ICallBack)Client.getRemoteObject()).onReport(arg0);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NotBoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ponAlarm.getId().toString();
		
	}
	@RequestMapping("/001")
	@ResponseBody
	public String value001(@RequestParam String lang) 
	{
		System.out.println(lang);
		return "a";
	}
	
}
