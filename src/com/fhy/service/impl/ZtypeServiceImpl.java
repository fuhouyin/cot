package com.fhy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fhy.mapper.ZtypeMapper;
import com.fhy.pojo.Ztype;
import com.fhy.service.ZtypeService;
@Service
public class ZtypeServiceImpl implements ZtypeService {

	@Autowired
	private ZtypeMapper ztypeMapper;
	
	//
	public List<Ztype> selectByTypeId(int id) {
		return ztypeMapper.selectByTypeId(id);
	}

}
