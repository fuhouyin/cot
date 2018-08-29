package com.fhy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fhy.mapper.UserMapper;
import com.fhy.pojo.User;
import com.fhy.service.UserService;
@Service
public class UserServiceImpl implements UserService {

		@Autowired
		private UserMapper userMapper;
	
		//登陆
		public User login(User user) {
			return userMapper.login(user);
		}

		//注册
		public int zhuce(User user) {
			return userMapper.zhuce(user);
		}

		//查询账号是否存在
		public Object selectByUsername(User user) {
			return userMapper.selectByUsername(user);
		}

		//密码、状态、身份的修改
		public int updateByPrimaryKeySelective(User user) {
			return userMapper.updateByPrimaryKeySelective(user);
		}

		//查询密码
		public User selectBypwd(User user) {
			return userMapper.selectBypwd(user);
		}

		//后台
		//查询所有用户
		public List<User> selectall() {
			return userMapper.selectall();
		}

}
