package com.fhy.service;

import java.util.List;

import com.fhy.pojo.GcarComm;

public interface GcarCommService {
	
	//插入商品详情
	int insertSelective(GcarComm gcarcomm);
	//查询购物车
	List<GcarComm> selectByuserid(Integer user_id);
	
}
