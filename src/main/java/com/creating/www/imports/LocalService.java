/**
 * 
 */
package com.creating.www.imports;

import java.util.List;

import com.creating.www.AlmBean;
import com.creating.www.beans.LimitBean;

/**
 * @author Chack Yao
 * @firstcreatetime 2018年12月7日
 *
 */
public class LocalService {

	public static List<AlmBean> returnPartAlms(List<AlmBean> allDatas,LimitBean bean)
	{
		return allDatas.subList(bean.getOffset(),bean.getOffset()+bean.getLength());
		
	}
}
