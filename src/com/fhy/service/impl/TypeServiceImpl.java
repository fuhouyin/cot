package com.fhy.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fhy.mapper.TypeMapper;
import com.fhy.pojo.Type;
import com.fhy.service.TypeService;
@Service
public class TypeServiceImpl implements TypeService {

	@Autowired
	private TypeMapper typeMapper;

	public Type typelist() {
		return typeMapper.typelist();
	}

	public List<Type> typelist2() {
		return typeMapper.typelist2();
	}

}
