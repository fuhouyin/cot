package com.fhy.service;

import java.util.List;

import com.fhy.pojo.OrderComm;

public interface OrderCommService {

	//添加订单详情
	int insertSelective(OrderComm ordercomm);
	//删除 修改
	int updateByPrimaryKeySelective(OrderComm ordercomm);
	//查询订单
    List<OrderComm> selectByUserId(int user_id);
    
    //后台
    //查询订单记录
    List<OrderComm> selectorderall();
}
