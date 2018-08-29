package com.fhy.mapper;

import java.util.List;

import com.fhy.pojo.OrderComm;

public interface OrderCommMapper {

	//添加订单详情
	int insertSelective(OrderComm record);

    OrderComm selectByPrimaryKey(Integer id);
    //删除 修改
    int updateByPrimaryKeySelective(OrderComm record);
    //查询订单
    List<OrderComm> selectByUserId(int user_id);
    
    //后台
    //查询订单记录
    List<OrderComm> selectorderall();
}