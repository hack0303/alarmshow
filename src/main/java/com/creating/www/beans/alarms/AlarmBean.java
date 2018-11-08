package com.creating.www.beans.alarms;

import java.util.Date;

public class AlarmBean {
	/**
	 * <td class="col-xs-1 text-center">告警ID</td>
	 * <td class="col-xs-1 text-center">业务号</td>
	 * <td class="col-xs-1 text-center">盘号</td>
	 * <td class="col-xs-1 text-center">端口号</td>
	 * <td class="col-xs-1 text-center">告警码</td>
	 * <td class="col-xs-1 text-center">第一次发生时间</td>
	 * <td class="col-xs-1 text-center">网管清除时间</td>
	 */
	private Integer almID;//告警ID
	private String mBussinessID;//业务号
	private Integer boardID;//盘号
	private String portName;//端口号
	@Override
	public String toString() {
		return "AlarmBean [almID=" + almID + ", mBussinessID=" + mBussinessID + ", boardID=" + boardID + ", portName="
				+ portName + ", alarmCode=" + alarmCode + ", firstCreateTime=" + firstCreateTime + ", clearTime="
				+ clearTime + "]";
	}
	private Integer alarmCode;//告警码
	private Date firstCreateTime;//第一次发生时间
	private Date clearTime;//网管清除时间
	public Integer getAlmID() {
		return almID;
	}
	public void setAlmID(Integer almID) {
		this.almID = almID;
	}
	public String getmBussinessID() {
		return mBussinessID;
	}
	public void setmBussinessID(String mBussinessID) {
		this.mBussinessID = mBussinessID;
	}
	public Integer getBoardID() {
		return boardID;
	}
	public void setBoardID(Integer boardID) {
		this.boardID = boardID;
	}
	public String getPortName() {
		return portName;
	}
	public void setPortName(String portName) {
		this.portName = portName;
	}
	public Integer getAlarmCode() {
		return alarmCode;
	}
	public void setAlarmCode(Integer alarmCode) {
		this.alarmCode = alarmCode;
	}
	public Date getFirstCreateTime() {
		return firstCreateTime;
	}
	public void setFirstCreateTime(Date firstCreateTime) {
		this.firstCreateTime = firstCreateTime;
	}
	public Date getClearTime() {
		return clearTime;
	}
	public void setClearTime(Date clearTime) {
		this.clearTime = clearTime;
	}
}
