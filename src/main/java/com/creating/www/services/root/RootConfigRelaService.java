package com.creating.www.services.root;

import java.util.List;

import com.creating.www.beans.root.ConfigParamBean;
import com.creating.www.utils.QueryUtil;

public class RootConfigRelaService {
	public List<ConfigParamBean> queryAllConfigParams()
	{
		List<ConfigParamBean> alls=new QueryUtil<ConfigParamBean>().query(com.creating.www.daos.root.QueryStatement.Q002);
	    return alls;
	}
}
