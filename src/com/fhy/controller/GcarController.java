package com.fhy.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fhy.pojo.Gcar;
import com.fhy.pojo.GcarComm;
import com.fhy.pojo.User;
import com.fhy.service.GcarCommService;
import com.fhy.service.GcarService;
import com.fhy.util.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class GcarController {

	@Autowired
	private GcarService gcarService;
	@Autowired
	private GcarCommService gcarCommService;
	
	//添加购物车 并添加商品详情
	@RequestMapping("insertgcar")
	public ModelAndView insertgcar(HttpSession session,int comm_id,String comm_num,String comm_price){
		ModelAndView mav = new ModelAndView();
		User user = (User) session.getAttribute("user");
		Gcar gc = new Gcar();
		gc.setUserId(user.getId());
		gc.setGtime(new Date().toString());
		gc.setGstatus(1);
		gcarService.insertSelective(gc);
		
		GcarComm gcc = new GcarComm();
		gcc.setgId(gc.getId());
		gcc.setCommId(comm_id);
		gcc.setCommNum(comm_num);
		gcc.setCommPrice(comm_price);
		System.out.println("++++"+gcc);
		gcarCommService.insertSelective(gcc);
		
		mav.addObject("message","添加成功");
		mav.setViewName("me/my_person");
		return mav;
		
	}
	
	//查询购物车
	@RequestMapping("selectByuserid")
	public ModelAndView selectByuserid(HttpSession session,Page page){
		ModelAndView mav = new ModelAndView();
		User user = (User) session.getAttribute("user");
		
		PageHelper.offsetPage(page.getStart(),5);
		List<GcarComm> gcc = gcarCommService.selectByuserid(user.getId());
		int total = (int) new PageInfo<>(gcc).getTotal();
		page.caculateLast(total);
		mav.addObject("gcc",gcc);
		session.setAttribute("gcc",gcc);
		System.out.println("++++"+gcc);
		mav.setViewName("gcar/gcar");
		return mav;
	}
	
	//删除购物车
	@RequestMapping("delgcar")
	public ModelAndView delgcar(int id,Page page,HttpSession session){
		ModelAndView mav = new ModelAndView();
		User user = (User) session.getAttribute("user");
		
		Gcar gcar = new Gcar();
		gcar.setId(id);
		gcar.setGstatus(0);
		gcarService.updateByPrimaryKeySelective(gcar);
		System.out.println(gcar);
		
		PageHelper.offsetPage(page.getStart(),5);
		List<GcarComm> gcc = gcarCommService.selectByuserid(user.getId());
		int total = (int) new PageInfo<>(gcc).getTotal();
		page.caculateLast(total);
		mav.addObject("gcc",gcc);
		session.setAttribute("gcc",gcc);
		System.out.println("++++"+gcc);
		mav.setViewName("gcar/gcar");
		return mav;
	}
}
