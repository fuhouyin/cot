package com.fhy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fhy.mapper.OrderCommMapper;
import com.fhy.pojo.OrderComm;
import com.fhy.service.OrderCommService;
@Service
public class OrderCommServiceImpl implements OrderCommService {

	@Autowired
	private OrderCommMapper orderCommMapper;
	
	//添加订单详情
	public int insertSelective(OrderComm ordercomm) {
		return orderCommMapper.insertSelective(ordercomm);
	}

	//删除 修改
	public int updateByPrimaryKeySelective(OrderComm ordercomm) {
		return orderCommMapper.updateByPrimaryKeySelective(ordercomm);
	}

	//查询订单
	public List<OrderComm> selectByUserId(int user_id) {
		return orderCommMapper.selectByUserId(user_id);
	}

	//后台
    //查询订单记录
	public List<OrderComm> selectorderall() {
		return orderCommMapper.selectorderall();
	}

}
