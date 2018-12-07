package com.creating.www.context;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.web.context.support.XmlWebApplicationContext;

public class CustomerAppContext {
public static SqlSessionFactory _SQL_SESSION_FACTORY=null;
static 
{
SqlSessionFactoryBuilder builder=new SqlSessionFactoryBuilder();
String resource="mybatis-config.xml";
InputStream is = null;
try {
	is = Resources.getResourceAsStream(resource);
} catch (IOException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
SqlSessionFactory ssf=builder.build(is);
_SQL_SESSION_FACTORY=ssf;
}
public static XmlWebApplicationContext xmlAC=null;
}
