/**
 * 
 */
package com.creating.www.beans;

/**
 * @author Chack Yao
 * @firstcreatetime 2018年12月6日
 *
 */
public class LimitBean {
private int id;
private int offset;
private int length;
private int totalPageNumber;
public int getTotalPageNumber() {
	return totalPageNumber;
}
public void setTotalPageNumber(int totalPageNumber) {
	this.totalPageNumber = totalPageNumber;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getOffset() {
	return offset;
}
public void setOffset(int offset) {
	this.offset = offset;
}
public int getLength() {
	return length;
}
public void setLength(int length) {
	this.length = length;
}
}
