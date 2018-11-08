package com.creating.www.utils;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.creating.www.context.CustomerAppContext;

public class QueryUtil<Bean> {
	@SuppressWarnings("unchecked")
	public Bean queryByKey(String statement,String key) {
		SqlSession SESSION = CustomerAppContext._SQL_SESSION_FACTORY.openSession();
		Bean userBean = null;
		try {
			userBean = (Bean) (SESSION.selectOne(statement, key));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			SESSION.close();
		}
		;
		return userBean;
	}
	@SuppressWarnings("unchecked")
	public List<Bean> query(String statement) {
		SqlSession SESSION = CustomerAppContext._SQL_SESSION_FACTORY.openSession();
		List<Bean> beans = null;
		try {
			beans = (List<Bean>) (SESSION.selectList(statement));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			SESSION.close();
		}
		;
		return beans;
	}
}
