package com.creating.www.beans.routers;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.creating.www.utils.ElecUtil;

/**
 * 电路Bean
 * 
 * @author Kevin
 * 
 */
public class ElecBean implements Cloneable {
	public int bussid;// 电路号
	public int type = WORK;// 电路类型 WORK,PROTECT
	public static final int WORK = 1;// 工作电路类型
	public static final int PROTECT = 2;// 保护电路类型
	public String layerType;// 电路层级类型
	public Set<Integer> servers;// 服务层电路集合
	public Set<Integer> clients;// 客户层电路集合
	public List<RouterNode> forwardPath;// 正向路由盘ID集合
	public List<RouterNode> reversePath;// 反向路由盘ID集合

	public Map<RouterNode,Integer> _forwardcRouterPath;//正向全量路由路径
	public Map<RouterNode,Integer> _reversecRouterPath;//反向全量路由路径
	
	public Set<Integer> desendants;// 该电路所有子电路
	public Set<Integer> ancenstors;// 该电路所有父电路
	public boolean toServervisited;// false为未访问
	public boolean toClentvisited;// false为未访问

	public ElecBean() {

	}

	public ElecBean(int id) {
		this.bussid = id;
	}

	public int getBussid() {
		return bussid;
	}

	public void setBussid(int bussid) {
		this.bussid = bussid;
	}

	public String getType() {
		return ElecUtil.reverseElecType(this.type);
	}

	public void setType(String type) {
	this.type=ElecUtil.reverseElecType(type);
	}

	public String getLayerType() {
		return layerType;
	}

	public void setLayerType(String layerType) {
		this.layerType = layerType;
	}

	public String getServers() {
		return ElecUtil.transformLayerBussids(servers);
	}

	public void setServers(String servers) {
		this.servers =ElecUtil.transformLayerBussids(servers);
	}

	public String getClients() {
		return ElecUtil.transformLayerBussids(clients);
	}

	public void setClients(String clients) {
		this.clients = ElecUtil.transformLayerBussids(clients);
	}

	public String getForwardPath() {
		return ElecUtil.transformRouterPath(forwardPath);
	}

	public void setForwardPath(String forwardPath) {
		this.forwardPath = ElecUtil.transformRouterPath(forwardPath);
	}

	public String getReversePath() {
		return ElecUtil.transformRouterPath(reversePath);
	}

	public void setReversePath(String reversePath) {
		this.reversePath = ElecUtil.transformRouterPath(reversePath);
	}

	public Set<Integer> getAncenstors() {
		return ancenstors;
	}

	public void setAncenstors(Set<Integer> ancenstors) {
		this.ancenstors = ancenstors;
	}

	/**
	 * 默认初始化String类型字段会是空句柄。
	 **/
	public String writeResult() {
		return bussid + "," + layerType + "," + ancenstors.toString().replaceAll(",", " ") + "," + desendants.toString().replaceAll(",", " ") + "," + (forwardPath == null ? "none" : forwardPath.toString().replaceAll(","," ")) + "," + (reversePath == null ? "none" : reversePath.toString().replaceAll(","," "))+"\r\n";
	}

	public static String writeResultTitle() {
		return "id,type,ancenstors,desendants,forward,reverse";
	}

	@Override
	public String toString() {
		 return "[电路ID:"+(bussid==0?"无":bussid)+", 电路层级:"+ (layerType==null?"无":layerType)
		 +", 服务层:"+(servers==null?"无":servers)+", 客户层:"+(clients==null?"无":clients)+", 子电路:"+(desendants==null?"无":desendants)
		 +", 父电路:"+(ancenstors==null?"无":ancenstors)+",正向路径 :"+
		 (forwardPath==null?"无":forwardPath.toString().replaceAll(","," ")) +",反向路径:"+
		 (reversePath==null?"无":reversePath.toString().replaceAll(","," ")) +"]";
	}

	@Override
	public ElecBean clone() {
		ElecBean copy = null;
		try {
			copy = (ElecBean) super.clone();
			copy.bussid = 0;
			copy.reversePath = null;
			copy.forwardPath = null;
			return copy;
		} catch (CloneNotSupportedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return copy;
	}
	@Override
	public int hashCode() {
		return bussid;
	}
}
