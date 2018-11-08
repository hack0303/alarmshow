package com.creating.www.beans.xalarms;

import java.util.Date;

public class InfoFields {
	public int objectId;// 盘号
	private String portName;// 线路号
	public int objectTypeId;// 盘类型
	public Date latestCreateTime;// 最近发生时间
	public Date clearTime;// clearTime
	public String layerType;// 告警所属层级
    public static final String PATTERN="/";
	public InfoFields() {
		// TODO Auto-generated constructor stub
	}
	public void setPortName(String origin)
	{
		portName=origin2PortName(origin);
	}
	private static final String SPLIT_PATTERN08 = "/";
    public static String origin2PortName(String str) 
    {
    	if(str==null||str.equals("")) return null;
    	return str.split(SPLIT_PATTERN08)[0];
    }
	public String getPortName() 
	{
		return portName;
	}

}
