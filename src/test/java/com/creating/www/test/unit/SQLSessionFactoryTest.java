package com.creating.www.test.unit;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;

import com.creating.www.beans.UserBean;
import com.creating.www.beans.alarms.AlarmBean;
import com.creating.www.context.CustomerAppContext;
import com.creating.www.daos.users.QueryStatement;
import com.creating.www.services.alarmsrela.AlarmRelaService;
import com.creating.www.services.login.LoginService;

public class SQLSessionFactoryTest {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Ignore
	@Test
	public void test() {
		assertNotNull("会话工厂为空",CustomerAppContext._SQL_SESSION_FACTORY);
	    SqlSession session=CustomerAppContext._SQL_SESSION_FACTORY.openSession();
		Connection conn=session.getConnection();
		Statement st = null;
		try {
			st = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String value="";
		ResultSet rs=null;
		try {
			rs=st.executeQuery("select id,account,password,last_login_time \r\n" + 
					"from user \r\n" + 
					"where id = 1");
			if(rs.next()) 
			{
				value=rs.getString("account");
				System.out.println(value);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(rs!=null)
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(st!=null)
			try {
				st.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		if(conn!=null)
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		session.close();
		assertEquals("account不符合预期","root",value);
	}
	@Ignore
	@Test
	public void test002() 
	{
		assertNotNull("会话工厂为空",CustomerAppContext._SQL_SESSION_FACTORY);
	    UserBean user=new LoginService().check(QueryStatement.Q003,"root");
	    assertNotNull("没有查询到此对象",user);
	    assertEquals("不符合预期","root", user.getUserDetail().getAccount());
	}
	@Test
	public void test003() 
	{
		assertNotNull("会话工厂为空",CustomerAppContext._SQL_SESSION_FACTORY);
	    List<AlarmBean> list=new AlarmRelaService().queryAllAlarms();
	    assertNotNull(list);
	    for(AlarmBean aBean:list) 
	    {
	    	System.out.println(aBean);
	    }
	}

}
