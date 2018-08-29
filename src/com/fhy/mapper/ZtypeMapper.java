package com.fhy.mapper;

import java.util.List;

import com.fhy.pojo.Ztype;

public interface ZtypeMapper {
    
	//查询
    Ztype selectByPrimaryKey(Integer id);
    //查询
    List<Ztype> selectByTypeId(int id);

}