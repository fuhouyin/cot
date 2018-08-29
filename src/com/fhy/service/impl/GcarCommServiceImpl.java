package com.fhy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fhy.mapper.GcarCommMapper;
import com.fhy.pojo.GcarComm;
import com.fhy.service.GcarCommService;
@Service
public class GcarCommServiceImpl implements GcarCommService {

	@Autowired
	private GcarCommMapper gcarCommMapper;
	
	//插入商品详情
	public int insertSelective(GcarComm gcarcomm) {
		return gcarCommMapper.insertSelective(gcarcomm);
	}

	//查询购物车
	public List<GcarComm> selectByuserid(Integer user_id) {
		return gcarCommMapper.selectByuserid(user_id);
	}

	

}
