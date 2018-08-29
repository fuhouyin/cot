package com.fhy.mapper;

import java.util.List;

import com.fhy.pojo.GcarComm;

public interface GcarCommMapper {
	
	//插入商品详情
    int insertSelective(GcarComm record);
    //查询购物车
    List<GcarComm> selectByuserid(Integer user_id);
    //修改 删除
    int updateByPrimaryKeySelective(GcarComm record);

}