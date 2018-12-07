package com.creating.www.beans.alarms;

import java.util.Date;

public class AlarmBean {
	private Integer almID;//告警ID
	private Date clearTime;//接收时间
	private Date firstCreateTime;//网管接收时间


	public Date getClearTime() {
		return clearTime;
	}

	public void setClearTime(Date clearTime) {
		this.clearTime = clearTime;
	}

	public Date getFirstCreateTime() {
		return firstCreateTime;
	}

	public void setFirstCreateTime(Date firstCreateTime) {
		this.firstCreateTime = firstCreateTime;
	}

	public Integer getAlmID() {
		return almID;
	}

	public void setAlmID(Integer almID) {
		this.almID = almID;
	}
}
