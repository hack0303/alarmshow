package com.creating.www.daos.alarms;

public class QueryStatement {
	/**
	 * select#alarm#logid+
	 */
	public static final String Q001 = "select#alarm#logid+";
	/**
	 * select#alarms#logid*
	 */
	public static final String Q002 = "select#alarms#logid*";
	/**
	 * select#alarmsrela#id+
	 */
	public static final String Q003 = "select#alarmsrela#id+";
	/**
	 * select#alarmsrela#batchid*
	 */
	public static final String Q004 = "select#alarmsrela#batchid*";
	/**
	 * select#alarmsrela#NULL*
	 */
	public static final String Q005 = "select#alarmsrela#NULL*";
	/**
	select#alarmsrela#LIMIT#NULL*
	*/
	public static final String Q006 = "select#alarm#LIMIT#NULL*";
	/**
	 * select#alarm#COUNT(ID)#NULL*
	 * */
	public static final String Q007="select#alarm#COUNT(ID)#NULL*";

}
