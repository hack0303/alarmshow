/**
 * 
 */
package com.creating.www.services.alarmsrela;

import java.util.List;

import org.jboss.jandex.Main;

import com.creating.www.AlmBean;
import com.creating.www.context.MainCache;
import com.creating.www.services.IAlmService;

/**
 * @author Chack Yao
 * @firstcreatetime 2018年12月7日
 *
 */
public class AlmServiceImpl implements IAlmService<AlmBean,Long> {

	/* (non-Javadoc)
	 * @see com.creating.www.services.IService#execute()
	 */
	@Override
	public void execute() {
		// TODO Auto-generated method stub
		
	}
	@Override
	public AlmBean one(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.creating.www.services.IAlmService#all()
	 */
	@Override
	public List<AlmBean> all() {
		return MainCache.almBeans;
	}

	/* (non-Javadoc)
	 * @see com.creating.www.services.IAlmService#part(int, int)
	 */
	@Override
	public AlmBean part(int offset, int length) {
		// TODO Auto-generated method stub
		return null;
	}

}
