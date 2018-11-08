package com.creating.www.beans;

public class UserDetail {
private String account;//账号
private String nickname;//昵称

public UserDetail(){
	
}
public UserDetail(String nickname) 
{
this.nickname=nickname;
}


public String getAccount() {
	return account;
}
public void setAccount(String account) {
	this.account = account;
}
public String getNickname() {
	return nickname;
}

public void setNickname(String nickname) {
	this.nickname = nickname;
}

}
