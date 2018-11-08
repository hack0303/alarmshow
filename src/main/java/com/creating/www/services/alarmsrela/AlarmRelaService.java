package com.creating.www.services.alarmsrela;

import java.util.List;

import com.creating.www.beans.alarms.AlarmBean;
import com.creating.www.utils.QueryUtil;

public class AlarmRelaService {

	public List<AlarmBean> queryAllAlarms()
	{
		List<AlarmBean> alls=new QueryUtil<AlarmBean>().query(com.creating.www.daos.alarms.QueryStatement.Q002);
	    return alls;
	}
	
}
