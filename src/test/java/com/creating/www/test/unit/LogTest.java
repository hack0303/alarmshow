package com.creating.www.test.unit;

import static org.junit.Assert.*;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class LogTest {
    static Logger logger=null;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		System.setProperty("log4j2.configurationFile","log4j2.xml");
		logger=LogManager.getLogger(LogTest.class.getName());
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

	@Test
	public void test() {
	  logger.debug("{} : {}",1,2);
	}

}
