package com.fhy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fhy.mapper.GcarMapper;
import com.fhy.pojo.Gcar;
import com.fhy.service.GcarService;
@Service
public class GcarServiceImpl implements GcarService {

	@Autowired
	private GcarMapper gcarMapper;
	
	public int insertSelective(Gcar gcar) {
		return gcarMapper.insertSelective(gcar);
	}

	
	public int updateByPrimaryKeySelective(Gcar gcar) {
		return gcarMapper.updateByPrimaryKeySelective(gcar);
	}

}
