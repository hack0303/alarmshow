package com.creating.www.beans;

import java.io.Serializable;
import java.util.Date;

public class UserBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
 private String uid;//数据库ID
 private UserDetail userDetail;//账号
 private String password;//密码
 private Date lastLoginTime;//最近登录时间

public UserBean() {
}
 public UserBean(UserDetail userDetail,String password)
 {
	 this.userDetail=userDetail;
	 this.password=password;
 }

public UserDetail getUserDetail() {
	return userDetail;
}
public void setUserDetail(UserDetail userDetail) {
	this.userDetail = userDetail;
}
public String getUid() {
	return uid;
}
public void setUid(String uid) {
	this.uid = uid;
}

public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Date getLastLoginTime() {
	return lastLoginTime;
}
public void setLastLoginTime(Date lastLoginTime) {
	this.lastLoginTime = lastLoginTime;
}
@Override
public String toString() {
	return String.format("[id=%s,userdetail=%s,password=%s,lastlogintime=%s]",uid,userDetail,password,lastLoginTime);
}
}
