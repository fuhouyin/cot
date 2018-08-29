package com.fhy.mapper;

import java.util.List;

import com.fhy.pojo.Comm;

public interface CommMapper {
	
	//录入商品信息
    int insertSelective(Comm comm);
    //修改商品信息
    int updateByPrimaryKeySelective(Comm comm);
    //查询自己出售的商品
    List<Comm> my_comm(int user_id);
    //通过一级类别查询商品
    List<Comm> selectbytype(int id);
    //通过二级类别查询商品
    List<Comm> selectbyztype(int id);
    //查看商品详细信息
    Comm comminfo(int id);
    //按条件查询
    List<Comm> selectKeyWord(String keyword);
    //按ID查询
    Comm selectbyid(int id);
    
    //后台
    //查询所有商品
    List<Comm> selectcommall();
}