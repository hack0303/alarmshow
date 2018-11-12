package com.creating.www.services.results;

import java.util.List;

import com.creating.www.beans.alarms.AlarmBean;
import com.creating.www.beans.alarms.AlarmPairBean;
import com.creating.www.beans.results.AnalysisBean;
import com.creating.www.utils.QueryUtil;

public class ResultsService {

	public List<AnalysisBean> queryAllResults()
	{
		List<AnalysisBean> alls=QueryUtil.query(com.creating.www.daos.results.QueryStatement.Q002);
	    return alls;
	}
}
