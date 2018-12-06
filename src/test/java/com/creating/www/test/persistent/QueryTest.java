/**
 * 
 */
package com.creating.www.test.persistent;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.creating.www.beans.LimitBean;
import com.creating.www.beans.alarms.AlarmBean;
import com.creating.www.services.alarmsrela.AlarmRelaService;
import com.creating.www.utils.QueryUtil;

/**
 * @author Chack Yao
 * @firstcreatetime 2018年12月6日
 *
 */
public class QueryTest {
	static {
		System.setProperty("log4j.configureFile","log4j2.xml");
	}
	public static SqlSessionFactory _SQL_SESSION_FACTORY=null;
	static Logger logger=LogManager.getLogger();
	/**
	 * @throws java.lang.Exception
	 */
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
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

	/**
	 * @throws java.lang.Exception
	 */
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		assertNotNull(_SQL_SESSION_FACTORY);
		LimitBean lb=new LimitBean();
		lb.setOffset(5);
		lb.setLength(10);
		List<AlarmBean> abs=QueryUtil.queryAllWithLimit(com.creating.www.daos.alarms.QueryStatement.Q006,lb);
	    assertNotNull(abs);
	    logger.debug(abs);
	    logger.debug("数量 {}",(Integer)QueryUtil.countByID(com.creating.www.daos.alarms.QueryStatement.Q007));
	}

}
