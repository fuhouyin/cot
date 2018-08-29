package com.fhy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fhy.mapper.TorderMapper;
import com.fhy.pojo.Torder;
import com.fhy.service.TorderService;
@Service
public class TorderServiceImpl implements TorderService {

	@Autowired
	private TorderMapper torderMapper;
	
	//添加订单记录
	public int insertSelective(Torder torder) {
		return torderMapper.insertSelective(torder);
	}

	//修改 删除订单记录
	public int updateByPrimaryKeySelective(Torder record) {
		return torderMapper.updateByPrimaryKeySelective(record);
	}
	
	
}
