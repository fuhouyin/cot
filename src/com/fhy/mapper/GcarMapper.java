package com.fhy.mapper;

import com.fhy.pojo.Gcar;

public interface GcarMapper {

	//创建购物车
    int insertSelective(Gcar record);
    //修改删除
    int updateByPrimaryKeySelective(Gcar record);

}