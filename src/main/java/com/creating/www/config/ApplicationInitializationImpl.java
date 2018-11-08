package com.creating.www.config;

import java.util.EnumSet;
import javax.servlet.DispatcherType;
import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.XmlWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

public class ApplicationInitializationImpl implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		// TODO Auto-generated method stub
		XmlWebApplicationContext xmlAC = new XmlWebApplicationContext();
		xmlAC.setConfigLocation("/WEB-INF/app-context.xml");
		
		CharacterEncodingFilter filter=new CharacterEncodingFilter("UTF-8",true);
		FilterRegistration.Dynamic filter_register=servletContext.addFilter("encodingFilter", filter);
		EnumSet<DispatcherType> dispatcherTypes=EnumSet.noneOf(DispatcherType.class);
		dispatcherTypes.add(DispatcherType.INCLUDE);
		dispatcherTypes.add(DispatcherType.REQUEST);
		dispatcherTypes.add(DispatcherType.FORWARD);
		dispatcherTypes.add(DispatcherType.ASYNC);
		dispatcherTypes.add(DispatcherType.ERROR);
		filter_register.addMappingForUrlPatterns(dispatcherTypes,true,"/*");
		ServletRegistration.Dynamic registration = servletContext.addServlet("dispatcher",
				new DispatcherServlet(xmlAC));
		registration.setLoadOnStartup(1);
		registration.addMapping("/app/*");
		
	}

}
