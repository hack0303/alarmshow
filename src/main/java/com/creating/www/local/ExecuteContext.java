/**
 * 
 */
package com.creating.www.local;

import java.io.Serializable;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.creating.www.beans.resources.AlarmRelaResourceBean;

/**
 * @author Chack Yao
 * @firstcreatetime 2018年12月7日
 *
 */
public class ExecuteContext implements Executeable,Serializable {
    static Logger logger=LogManager.getLogger();
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private AlarmRelaResourceBean alarmsdata = null;
	private AlarmRelaResourceBean rulesdata = null;
	public AlarmRelaResourceBean getAlarmsdata() {
		return alarmsdata;
	}
	public void setAlarmsdata(AlarmRelaResourceBean alarmsdata) {
		this.alarmsdata = alarmsdata;
	}
	public AlarmRelaResourceBean getRulesdata() {
		return rulesdata;
	}
	public void setRulesdata(AlarmRelaResourceBean rulesdata) {
		this.rulesdata = rulesdata;
	}
	/* (non-Javadoc)
	 * @see com.creating.www.local.Executeable#go()
	 */
	@Override
	public void go() {
		logger.debug("在跑了,别催我....");
	}
}
