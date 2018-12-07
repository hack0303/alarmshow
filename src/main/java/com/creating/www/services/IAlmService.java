/**
 * 
 */
package com.creating.www.services;

import java.util.List;

/**
 * @author Chack Yao
 * @firstcreatetime 2018年12月7日
 *
 */
public interface IAlmService<T,ID> extends IService {

	public T one(ID id);
	public List<T> all();
	public T part(int offset,int length);
	
}
