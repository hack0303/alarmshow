package com.creating.www.beans.routers;

import java.util.Map;
import java.util.TreeMap;

import com.creating.www.beans.routers.interfaces.Order;
import com.creating.www.beans.xalarms.InfoFields;
import com.creating.www.context.MainCache;

public class RouterNode implements Order,Comparable<RouterNode>{
	public final int NEId;// 网元
	public final int boardId;// 盘号
	public String portName;// 端口名
	public static RouterNodeFactory rNodeFactory=new RouterNodeFactory();//
    public static class RouterNodeFactory
    {
    	public static RouterNode newRouterNode(InfoFields extraInfo,Integer alarmCode) 
    	{
    		RouterNode rn=new RouterNode(0,extraInfo.objectId,extraInfo.getPortName());
    		ODEVITY numtype=null;
    		if(MainCache._OUTPUT_CODES!=null&&MainCache._OUTPUT_CODES.contains(alarmCode))
    		{//偶数
    			numtype=ODEVITY.EVEN;
    		}
    		else numtype=ODEVITY.ODD;
    		rn.setNUMTYPE(numtype);
    		//System.out.println("before contains"+rn);
    		synchronized(context) {
    		if(context.containsKey(rn)) rn=context.get(rn);
    		}
			return rn;
    	}
    	static Map<RouterNode,RouterNode> context=new TreeMap<RouterNode,RouterNode>(); 
    	public static void replace(Map<RouterNode,RouterNode> ctx) 
    	{
    		context=ctx;
    	}
    	public final void setRouterNode(final Map<RouterNode,RouterNode> context,RouterNode rNode) 
    	{
    		synchronized(context) {
    		if(!context.containsKey(rNode)) context.put(rNode,rNode);
    		}
    	}
    	public void setRouterNode(RouterNode rNode) 
    	{
    		setRouterNode(context, rNode);
    	}
    	public RouterNode getRouterNode(RouterNode rNode) 
    	{
    		synchronized(context) {
    		RouterNode out=context.get(rNode);
    		return out==null?null:out;
    		}
    	}
    	public static void clearCache() 
    	{
    		context=new TreeMap<RouterNode,RouterNode>(); 
    	}
    	
    }
	public RouterNode(int nEId, int boardId, String portName) {
		super();
		NEId = nEId;
		this.boardId = boardId;
		this.portName =portName;
	}

	public RouterNode() {
		NEId = 0;
		this.boardId = 0;
		this.portName ="test";
	}

	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		sb.append("NEId");
		sb.append("=");
		sb.append(NEId);
		sb.append("--");
		sb.append("BoardId");
		sb.append("=");
		sb.append(boardId);
		sb.append("--");
		sb.append("PortName");
		sb.append("=");
		sb.append(portName);
		sb.append("]");
		return sb.toString();
	}

	@Override
	public boolean equals(Object obj) {
		if (!(obj instanceof RouterNode))
			return false;
		RouterNode rNode = (RouterNode) obj;
		return (this.boardId == rNode.boardId) && (this.NEId == rNode.NEId) &&(this.portName.equals(rNode.portName));
	}
   public boolean equalsNotNEID(Object obj) 
   {
	   RouterNode rNode=(RouterNode)obj;
	   return this.boardId==rNode.boardId&&this.portName.equals(this.portName);
	   
   }
	@Override
	public int hashCode() {
		return NEId << 16 + this.boardId;
	}
	public ORIENTATION orientation=ORIENTATION.FORWARD;
	  public static enum ORIENTATION
	    {
	    	FORWARD,REVERSE;//正向,反向
	    }
	 public void setOrientation(ORIENTATION point_to) 
	 {
		 orientation=point_to;
	 }
    public int orderIndex;
    /**
     * EVEN 偶数
     * ODD 奇数
     * */
    public static enum ODEVITY
    {
    	EVEN,ODD;//偶数,奇数
    	public static ODEVITY getNUMBERTYPE(int number) 
    	{
    		int format=number&1;
    		if(format==0) return EVEN;
    		else return ODD;
    	}
    }
    public ODEVITY NUMBER_TYPE=ODEVITY.ODD;
	@Override
	public int index() {
		return orderIndex;
	}

	public void setIndex(int index) {
		this.orderIndex=index;
	}
	public void setIndexAndOdevity(int index) {
		this.orderIndex=index;
		this.NUMBER_TYPE=ODEVITY.getNUMBERTYPE(index);	
	}
	public void setNUMTYPE(ODEVITY numtype) 
	{
		this.NUMBER_TYPE=numtype;
	}
	public void setODEVITY(int index) 
	{
		this.NUMBER_TYPE=ODEVITY.getNUMBERTYPE(index);
	}
	public static void main(String[] args) 
	{
		RouterNode rn=new RouterNode();
		rn.setIndexAndOdevity(3);
		System.out.println(rn.NUMBER_TYPE);
		System.out.println(ODEVITY.ODD.compareTo(ODEVITY.EVEN));
	}

	@Override
	public int compareTo(RouterNode o) {
        RouterNode rn=o;
	//	int gapValue=this.NEId-rn.NEId;
	//	if(gapValue!=0) return gapValue;
		int gapValue=this.boardId-rn.boardId;
		if(gapValue!=0) return gapValue;
		gapValue=portName.compareTo(rn.portName);
		if(gapValue!=0) return gapValue;
		if(this.NUMBER_TYPE.equals(rn.NUMBER_TYPE)) return 0;
		if(this.NUMBER_TYPE.equals(ODEVITY.EVEN)) return -1;
		else return 1;
	}

}
