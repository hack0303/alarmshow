package com.creating.www.services.alarmsrela;

import java.util.List;

import com.creating.www.beans.LimitBean;
import com.creating.www.beans.alarms.AlarmBean;
import com.creating.www.beans.alarms.AlarmPairBean;
import com.creating.www.utils.QueryUtil;

public class AlarmRelaService {

	public List<AlarmBean> queryAllAlarms()
	{
		List<AlarmBean> alls=QueryUtil.query(com.creating.www.daos.alarms.QueryStatement.Q002);
	    return alls;
	}
	public List<AlarmPairBean> queryAllAlarmPair()
	{
		List<AlarmPairBean> alls=QueryUtil.query(com.creating.www.daos.alarms.QueryStatement.Q005);
	    return alls;
	}
	public List<AlarmBean> queryAllAlarmsWithLimit(LimitBean pageBean){
		List<AlarmBean> part=QueryUtil.queryAllWithLimit(com.creating.www.daos.alarms.QueryStatement.Q006,pageBean);
		return part;
		
	}
	public int countAlarm() 
	{
		return QueryUtil.countByID(com.creating.www.daos.alarms.QueryStatement.Q007);  
	}
}
