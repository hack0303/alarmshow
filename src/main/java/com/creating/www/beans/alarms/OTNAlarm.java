/**
 * 
 */
package com.creating.www.beans.alarms;

import java.util.Date;

/**
 * @author Chack Yao
 * @firstcreatetime 2018年12月7日
 *
 */
public class OTNAlarm extends AlarmBean {

	/**
	 * <td class="col-xs-1 text-center">告警ID</td>
	 * <td class="col-xs-1 text-center">业务号</td>
	 * <td class="col-xs-1 text-center">盘号</td>
	 * <td class="col-xs-1 text-center">端口号</td>
	 * <td class="col-xs-1 text-center">告警码</td>
	 * <td class="col-xs-1 text-center">第一次发生时间</td>
	 * <td class="col-xs-1 text-center">网管清除时间</td>
	 */
	private String mBussinessID;//业务号
	private Integer boardID;//盘号
	private String portName;//端口号
	@Override
	public String toString() {
		return "AlarmBean [almID=" + getAlmID() + ", mBussinessID=" + mBussinessID + ", boardID=" + boardID + ", portName="
				+ portName + ", alarmCode=" + alarmCode + ", firstCreateTime=" + getFirstCreateTime() + ", clearTime="
				+ getClearTime() + "]";
	}
	private Integer alarmCode;//告警码
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
}
