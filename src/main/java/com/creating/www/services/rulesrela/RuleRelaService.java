package com.creating.www.services.rulesrela;

import java.util.List;

import com.creating.www.beans.alarms.AlarmBean;
import com.creating.www.beans.routers.ElecBean;
import com.creating.www.beans.rules.RuleBean;
import com.creating.www.utils.QueryUtil;

public class RuleRelaService {

	public List<RuleBean> queryAllRules()
	{
		List<RuleBean> alls=new QueryUtil<RuleBean>().query(com.creating.www.daos.rules.QueryStatement.Q002);
	    return alls;
	}
	
}
