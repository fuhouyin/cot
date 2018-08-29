package com.fhy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fhy.mapper.MyUserMapper;
import com.fhy.pojo.MyUser;
import com.fhy.service.MyUserService;
@Service
public class MyUserServiceImpl implements MyUserService {

	@Autowired
	private MyUserMapper myUserMapper;
	
	//查询用户信息记录是否存在
	public MyUser selectByuserid(int id) {
		return myUserMapper.selectByuserid(id);
	}

	//添加用户信息记录
	public int adduserinfo(MyUser myuser) {
		return myUserMapper.adduserinfo(myuser);
	}

	//查询用户信息
	public MyUser userinfo(int user_id) {
		return myUserMapper.userinfo(user_id);
	}

	//修改删除
	public int updateByPrimaryKeySelective(MyUser myuser) {
		return myUserMapper.updateByPrimaryKeySelective(myuser);
	}

}
