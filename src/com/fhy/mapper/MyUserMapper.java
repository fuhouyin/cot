package com.fhy.mapper;

import com.fhy.pojo.MyUser;

public interface MyUserMapper {
	
    //查询用户信息记录是否存在
    MyUser selectByuserid(int id);
    //注册时添加用户信息记录
    int adduserinfo(MyUser myuser);
    //查询用户信息
    MyUser userinfo(int user_id);
    //修改删除
    int updateByPrimaryKeySelective(MyUser myuser);
    
}