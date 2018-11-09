package com.creating.www.services.elecsrela;

import java.util.List;

import com.creating.www.beans.alarms.AlarmBean;
import com.creating.www.beans.routers.ElecBean;
import com.creating.www.utils.QueryUtil;

public class ElecRelaService {

	public List<ElecBean> queryAllElecs()
	{
		List<ElecBean> alls=new QueryUtil<ElecBean>().query(com.creating.www.daos.elecs.QueryStatement.Q002);
	    return alls;
	}
	
}
