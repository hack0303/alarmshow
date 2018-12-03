package com.creating.www.beans.results;

import com.creating.www.beans.alarms.AlarmBean;

public class GroupBean {
private Integer id;//条目ID
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Integer getBatchid() {
	return batchid;
}
public void setBatchid(Integer batchid) {
	this.batchid = batchid;
}
public AlarmBean getGroupHeader() {
	return groupHeader;
}
public void setGroupHeader(AlarmBean groupHeader) {
	this.groupHeader = groupHeader;
}
private Integer batchid;//批次
private AlarmBean groupHeader;//组号
private String memberids;//成员
public String getMemberids() {
	return memberids;
}
public void setMemberids(String memberids) {
	this.memberids =memberids;
}
@Override
public String toString() {
	return "GroupBean [id=" + id + ", batchid=" + batchid + ", groupHeader=" + groupHeader + ", memberids=" + memberids
			+ "]";
}


}
