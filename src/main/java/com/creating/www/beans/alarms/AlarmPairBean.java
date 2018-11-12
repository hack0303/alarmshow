package com.creating.www.beans.alarms;

import com.creating.www.beans.routers.ElecBean;
import com.creating.www.beans.rules.RuleBean;

public class AlarmPairBean {
private int id;
private int batchid;
private AlarmBean src;
private AlarmBean dsc;
private ElecBean elecBean;
private RuleBean ruleBean;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getBatchid() {
	return batchid;
}
public void setBatchid(int batchid) {
	this.batchid = batchid;
}
public AlarmBean getSrc() {
	return src;
}
public void setSrc(AlarmBean src) {
	this.src = src;
}
public AlarmBean getDsc() {
	return dsc;
}
public void setDsc(AlarmBean dsc) {
	this.dsc = dsc;
}
public ElecBean getElecBean() {
	return elecBean;
}
public void setElecBean(ElecBean elecBean) {
	this.elecBean = elecBean;
}
public RuleBean getRuleBean() {
	return ruleBean;
}
public void setRuleBean(RuleBean ruleBean) {
	this.ruleBean = ruleBean;
}
@Override
	public String toString() {
	return String.format("id=%d,batchid=%d,src=%d,dsc=%d,elecid=%d,ruleid=%d",this.id,this.batchid,this.src.getAlmID(),dsc.getAlmID(),this.elecBean.getBussid(),this.getRuleBean().getRuleID());
	}
}
