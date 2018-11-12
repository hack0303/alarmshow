package com.creating.www.services.login;

import com.creating.www.beans.UserBean;
import com.creating.www.utils.QueryUtil;

public class LoginService {

	public void check(UserBean user) {

	}
	public UserBean check(String statement, String key) {
		UserBean result=null;
		if(statement.contains("#account")) result=QueryUtil.queryByKey(statement, key);
		else if(statement.contains("#uid")) result=QueryUtil.queryByKey(statement, key);
		return result;
	}
}
