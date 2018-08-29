package com.fhy.service;

import com.fhy.pojo.Gcar;

public interface GcarService {

	//添加
	int insertSelective(Gcar gcar);
	 //修改删除
    int updateByPrimaryKeySelective(Gcar gcar);
}
