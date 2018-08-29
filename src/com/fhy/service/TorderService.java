package com.fhy.service;

import com.fhy.pojo.Torder;

public interface TorderService {
	
	//添加订单记录
	int insertSelective(Torder torder);
	//修改 删除订单记录
	int updateByPrimaryKeySelective(Torder torder);

}
