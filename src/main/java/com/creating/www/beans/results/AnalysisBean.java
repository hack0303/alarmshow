package com.creating.www.beans.results;

import com.creating.www.beans.alarms.AlarmBean;

public class AnalysisBean {
private int id;
private int batchId;
private AlarmBean header;//头
private AlarmBean almBean;//me
private String isReturned;//是/否
private String isGroup;//是/否
private String returnType;//返回类型
public String getReturnType() {
	return returnType;
}
public void setReturnType(String returnType) {
	this.returnType = returnType;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getBatchId() {
	return batchId;
}
public void setBatchId(int batchId) {
	this.batchId = batchId;
}
public AlarmBean getHeader() {
	return header;
}
public void setHeader(AlarmBean header) {
	this.header = header;
}
public AlarmBean getAlmBean() {
	return almBean;
}
public void setAlmBean(AlarmBean almBean) {
	this.almBean = almBean;
}
public String getIsReturned() {
	return isReturned;
}
public void setIsReturned(String isReturned) {
	this.isReturned = isReturned;
}
public String getIsGroup() {
	return isGroup;
}
public void setIsGroup(String isGroup) {
	this.isGroup = isGroup;
}

@Override
	public String toString() {
		return String.format("id=%d,batchid=%d,head=%d,me=%d,isReturned=%s,isGroup=%s,returnType=%s",this.id,this.batchId,this.header.getAlmID(),this.almBean.getAlmID(),this.isReturned,this.isReturned,this.returnType);
	}
}
