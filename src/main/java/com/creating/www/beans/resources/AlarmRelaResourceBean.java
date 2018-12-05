/**
 * 
 */
package com.creating.www.beans.resources;

/**
 * @author Chack Yao
 * @firstcreatetime 2018年12月5日
 *
 */
public class AlarmRelaResourceBean {
private String ruleResource="";
private String almsResource="";
/**
 * 
 */
public AlarmRelaResourceBean() {
	// TODO Auto-generated constructor stub
}
/**
 * 
 */
public AlarmRelaResourceBean(String ruleResource,String almsResource) {
	this.ruleResource=ruleResource;
	this.almsResource=almsResource;
}
public String getRuleResource() {
	return ruleResource;
}
public void setRuleResource(String ruleResource) {
	this.ruleResource = ruleResource;
}
public String getAlmsResource() {
	return almsResource;
}
public void setAlmsResource(String almsResource) {
	this.almsResource = almsResource;
}

}
