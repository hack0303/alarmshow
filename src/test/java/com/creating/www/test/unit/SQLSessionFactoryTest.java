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
import com.creating.www.beans.alarms.AlarmPairBean;
import com.creating.www.beans.results.AnalysisBean;
import com.creating.www.beans.results.GroupBean;
import com.creating.www.beans.routers.ElecBean;
import com.creating.www.beans.routers.RouterNode;
import com.creating.www.beans.rules.RuleBean;
import com.creating.www.context.CustomerAppContext;
import com.creating.www.daos.users.QueryStatement;
import com.creating.www.services.alarmsrela.AlarmRelaService;
import com.creating.www.services.elecsrela.ElecRelaService;
import com.creating.www.services.login.LoginService;
import com.creating.www.services.results.ResultsService;
import com.creating.www.services.rulesrela.RuleRelaService;
import com.creating.www.utils.ElecUtil;

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
	@Ignore
	@Test
	public void testAlarms() 
	{
		assertNotNull("会话工厂为空",CustomerAppContext._SQL_SESSION_FACTORY);
	    List<AlarmBean> list=new AlarmRelaService().queryAllAlarms();
	    assertNotNull(list);
	    for(AlarmBean aBean:list) 
	    {
	    	System.out.println(aBean);
	    }
	}
	@Ignore
	@Test
	public void testRules() 
	{
		assertNotNull("会话工厂为空",CustomerAppContext._SQL_SESSION_FACTORY);
	    List<RuleBean> list=new RuleRelaService().queryAllRules();
	    assertNotNull(list);
	    for(RuleBean aBean:list) 
	    {
	    	System.out.println(aBean);
	    }
	}
	@Ignore
	@Test
	public void testElecs() 
	{
		assertNotNull("会话工厂为空",CustomerAppContext._SQL_SESSION_FACTORY);
	    List<ElecBean> list=new ElecRelaService().queryAllElecs();
	    assertNotNull(list);
	    for(ElecBean aBean:list) 
	    {
	    	System.out.println(aBean);
	    }
	}
	@Ignore
	@Test
	public void testFunc() 
	{
		List<RouterNode> list=ElecUtil.transformRouterPath("NEId:13172739--BoardId:19726417--PortName:PTP-PO=1/OCH=1--------->NEId:13172748--BoardId:19726661--PortName:PTP-PO=1/OCH=1--------->NEId:13172748--BoardId:19726661--PortName:PTP-PO=49/OTS=1/OMS=1/OCH=1--------->NEId:13172748--BoardId:19726664--PortName:PTP-PO=2/OTS=1/OMS=1/OCH=1--------->NEId:13172748--BoardId:19726664--PortName:PTP-PO=3/OTS=1/OMS=1/OCH=49--------->NEId:13172750--BoardId:19726717--PortName:PTP-PO=3/OTS=1/OMS=1/OCH=49--------->NEId:13172750--BoardId:19726717--PortName:PTP-PO=2/OTS=1/OMS=1/OCH=1--------->NEId:13172750--BoardId:19726733--PortName:PTP-PO=49/OTS=1/OMS=1/OCH=1--------->NEId:13172750--BoardId:19726733--PortName:PTP-PO=1/OCH=1--------->NEId:13172750--BoardId:19726711--PortName:PTP-PO=1/OCH=1--------->");
	    assertNotNull("返回结果为空",list);
	    System.out.println(list);
	}
	@Ignore
	@Test
	public void testAlarmRela() 
	{
		assertNotNull("会话工厂为空",CustomerAppContext._SQL_SESSION_FACTORY);
	    List<AlarmPairBean> list=new AlarmRelaService().queryAllAlarmPair();
	    assertNotNull(list);
	    for(AlarmPairBean aBean:list) 
	    {
	    	System.out.println(aBean);
	    }
	}
	@Ignore
	@Test
	public void testAnalysisBean() 
	{
		assertNotNull("会话工厂为空",CustomerAppContext._SQL_SESSION_FACTORY);
	    List<AnalysisBean> list=new ResultsService().queryAllResults();
	    assertNotNull(list);
	    for(AnalysisBean aBean:list) 
	    {
	    	System.out.println(aBean);
	    }
	}
	@Test
	public void testGroupBean() 
	{
		assertNotNull("会话工厂为空",CustomerAppContext._SQL_SESSION_FACTORY);
	    List<GroupBean> list=new ResultsService().queryAllGroups();
	    assertNotNull(list);
	    for(GroupBean aBean:list) 
	    {
	    	System.out.println(aBean);
	    }
	}
}
