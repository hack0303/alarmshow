/**
 * 
 */
package com.creating.www.beans.resources;

import java.io.File;
import java.io.Serializable;

/**
 * @author Chack Yao
 * @firstcreatetime 2018年12月5日
 *
 */
public class AlarmRelaResourceBean implements Serializable{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private String origin="";
private File dest=null;
/**
 * 
 */
public AlarmRelaResourceBean() {
	// TODO Auto-generated constructor stub
}
public String getOrigin() {
	return origin;
}
public void setOrigin(String origin) {
	this.origin = origin;
}
public File getDest() {
	return dest;
}
public void setDest(File dest) {
	this.dest = dest;
}
}
