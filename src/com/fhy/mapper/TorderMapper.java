package com.fhy.mapper;

import com.fhy.pojo.Torder;

public interface TorderMapper {

	//添加订单记录
    int insertSelective(Torder record);

    Torder selectByPrimaryKey(Integer id);
    //修改 删除订单记录
    int updateByPrimaryKeySelective(Torder record);
}