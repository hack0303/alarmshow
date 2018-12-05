package com.creating.www.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.creating.www.beans.UserBean;
import com.creating.www.daos.users.QueryStatement;
import com.creating.www.services.login.LoginService;

@RestController
@RequestMapping("/login")
public class LoginController {
	static LoginService loginServ=new LoginService();
	@RequestMapping("")
	public ModelAndView base(Model model) 
	{
		return new ModelAndView("login");
	}
	@PostMapping("/in")
	public ModelAndView loginin(@ModelAttribute  UserBean loginUser,HttpServletRequest request) 
	{
	//	System.out.println(loginUser!=null?loginUser.getUserDetail().getAccount():"session_null");
		HttpSession hs=request.getSession();
		UserBean session_user=(UserBean) hs.getAttribute("user");
		if(session_user==null) { 
			UserBean afterCheck=loginServ.check(QueryStatement.Q003,loginUser.getUserDetail().getAccount());
		//	System.out.println(afterCheck!=null?afterCheck.getUserDetail().getNickname():"null");
			if(afterCheck==null) return new ModelAndView("redirect:/app/login");
		    hs.setAttribute("user",afterCheck);	
		}
		return new ModelAndView("forward:/backstage.jsp");
	}
	@RequestMapping("/out")
	public ModelAndView loginout(HttpServletRequest request,Model model) 
	{
		HttpSession hs=request.getSession(false);
	    if(hs!=null) hs.removeAttribute("user");
	    return new ModelAndView("redirect:/app/login");
	}
	@ExceptionHandler({Exception.class})
    public ModelAndView handleException(Exception exception) {
    	return new ModelAndView("redirect:/error.jsp");
    }
}
