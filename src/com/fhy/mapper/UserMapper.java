package com.fhy.mapper;

import java.util.List;

import com.fhy.pojo.User;

public interface UserMapper {
    
    //登陆
    User login(User user);
    //注册
    int zhuce(User user);
    //查询by账号
    Object selectByUsername(User user);
    //密码、状态、身份的修改
    int updateByPrimaryKeySelective(User user);
    //查询密码
    User selectBypwd(User user);
    
    //后台
    //查询所有用户
    List<User> selectall();
}