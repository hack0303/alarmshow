package com.creating.www.utils;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.creating.www.beans.routers.ElecBean;
import com.creating.www.beans.routers.RouterNode;

public class ElecUtil {
	public static final String WORK_ELEC = "工作电路";
	public static final String PROTECTED_ELEC = "保护电路";

	public static final String BUSSINESS_PATTERN = " ";

	public static int reverseElecType(String type) {
		if (type.equals(WORK_ELEC))
			return ElecBean.WORK;
		else if (type.equals(PROTECTED_ELEC))
			return ElecBean.PROTECT;
		return 0;
	}

	public static String reverseElecType(int type) {
		if (type == ElecBean.WORK)
			return WORK_ELEC;
		else if (type == ElecBean.PROTECT)
			return PROTECTED_ELEC;
		return "未知";
	}

	public static Set<Integer> transformLayerBussids(String bussids) {
		if (bussids == null)
			return null;
		Set<Integer> SET = new HashSet<Integer>();
		for (String s : bussids.split(BUSSINESS_PATTERN)) {
			if (s.trim().equals(""))
				continue;
			Integer v = Integer.valueOf(s);
			SET.add(v);
		}
		return SET;
	}

	public static String transformLayerBussids(Set<Integer> bussids) {
		if (bussids == null)
			return null;
		StringBuilder sb = new StringBuilder();
		for (Integer id : bussids) {
			sb.append(id).append(BUSSINESS_PATTERN);
		}
		return sb.toString();
	}

	public static String transformRouterPath(List<RouterNode> routerpath) {
		if (routerpath == null)
			return null;
		StringBuilder sb = new StringBuilder();
		for (RouterNode aNode : routerpath) {
			sb.append(aNode);
		}
		return sb.toString();
	}

	public static List<RouterNode> transformRouterPath(String routerpath) {
		if (routerpath == null)
			return null;
		String[] phase001 = routerpath.split(RouterNode.symbol003);
		List<RouterNode> routernodes = new ArrayList<RouterNode>();
		for (String part : phase001) {
			if (part.trim().equals(""))
				continue;
			RouterNode rNode = new RouterNode(part.split(RouterNode.symbol002));
			routernodes.add(rNode);
		}
		return routernodes;
	}
}
