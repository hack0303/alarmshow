package com.creating.www.beans.rules;

public class RuleBean {
	/**
	 * <tr><td>规则编号</td><td>根告警代码</td><td>衍生告警代码</td><td>根层次</td><td>衍生层次</td></tr>
	 * */
private Integer ruleID;//规则编号
private Integer srcCode;//根告警代码
private Integer dscCode;//衍生告警代码
private String srcLayerLevel;//根层次
private String dscLayerLevel;//衍生层次
public Integer getRuleID() {
	return ruleID;
}
public void setRuleID(Integer ruleID) {
	this.ruleID = ruleID;
}
public Integer getSrcCode() {
	return srcCode;
}
public void setSrcCode(Integer srcCode) {
	this.srcCode = srcCode;
}
public Integer getDscCode() {
	return dscCode;
}
public void setDscCode(Integer dscCode) {
	this.dscCode = dscCode;
}
public String getSrcLayerLevel() {
	return srcLayerLevel;
}
public void setSrcLayerLevel(String srcLayerLevel) {
	this.srcLayerLevel = srcLayerLevel;
}
public String getDscLayerLevel() {
	return dscLayerLevel;
}
public void setDscLayerLevel(String dscLayerLevel) {
	this.dscLayerLevel = dscLayerLevel;
}
@Override
public int hashCode() {
	return ruleID;
}
}
