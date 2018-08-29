package com.fhy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fhy.mapper.CommMapper;
import com.fhy.pojo.Comm;
import com.fhy.service.CommService;
@Service
public class CommServiceImpl implements CommService {

	@Autowired
	private CommMapper commMapper;
	
	//录入商品信息
	public int insertSelective(Comm comm) {
		return commMapper.insertSelective(comm);
	}

	//修改商品信息
	public int updateByPrimaryKeySelective(Comm comm) {
		return commMapper.updateByPrimaryKeySelective(comm);
	}

	//查询自己出售的商品
	public List<Comm> my_comm(int user_id) {
		return commMapper.my_comm(user_id);
	}

	//通过一级类别查询商品
	public List<Comm> selectbytype(int id) {
		return commMapper.selectbytype(id);
	}

	//通过二级类别查询商品
	public List<Comm> selectbyztype(int id) {
		return commMapper.selectbyztype(id);
	}

	//查看商品详情
	public Comm comminfo(int id) {
		return commMapper.comminfo(id);
	}

	//按条件查询
	public List<Comm> selectKeyWord(String keyword) {
		return commMapper.selectKeyWord(keyword);
	}
	
	//按ID查询
	public Comm selectbyid(int id) {
		return commMapper.selectbyid(id);
	}

	//后台
    //查询所有商品
	public List<Comm> selectcommall() {
		return commMapper.selectcommall();
	}


}
