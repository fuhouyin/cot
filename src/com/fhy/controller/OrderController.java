package com.fhy.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




import com.fhy.pojo.Gcar;
import com.fhy.pojo.Torder;
import com.fhy.pojo.OrderComm;
import com.fhy.pojo.User;
import com.fhy.service.GcarService;
import com.fhy.service.OrderCommService;
import com.fhy.service.TorderService;
import com.fhy.util.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class OrderController {

	@Autowired
	private TorderService torderService;
	@Autowired
	private OrderCommService orderCommService;
	@Autowired
	private GcarService gcarService;
	
	//添加订单
	@RequestMapping("insertorder")
	public ModelAndView insertorder(HttpSession session,int comm_id,String comm_num,String comm_price,int id){
		ModelAndView mav = new ModelAndView();
		User user = (User) session.getAttribute("user");
		
		Torder to = new Torder();
		to.setOstatus(1);
		to.setOtime(new Date().toString());
		//to.setTotal((long) 2);
		to.setUserId(user.getId());
		torderService.insertSelective(to);
		
		OrderComm oc = new OrderComm();
		oc.setCommId(comm_id);
		oc.setCommNum(comm_num);
		oc.setCommPrice(comm_price);
		oc.setOid(to.getId());
		orderCommService.insertSelective(oc);
		
		Gcar gcar = new Gcar();
		gcar.setId(id);
		gcar.setGstatus(0);
		gcarService.updateByPrimaryKeySelective(gcar);
		System.out.println(gcar);
		
		mav.addObject("message","购买成功");
		mav.setViewName("me/my_person");
		return mav;
	}
	
	//查询订单
	@RequestMapping("orderByUserid")
	public ModelAndView orderByUserid(HttpSession session,Page page){
		ModelAndView mav = new ModelAndView();
		User user = (User) session.getAttribute("user");
		
		
		PageHelper.offsetPage(page.getStart(),5);
		List<OrderComm> oc = orderCommService.selectByUserId(user.getId());
		int total = (int) new PageInfo<>(oc).getTotal();
		page.caculateLast(total);
		mav.addObject("oc",oc);
		session.setAttribute("oc",oc);
		System.out.println("++++"+oc);
		mav.setViewName("order/my_order");
		return mav;
	}
	
	//删除订单
	@RequestMapping("delorder")
	public ModelAndView delorder(int id,Page page,HttpSession session){
		ModelAndView mav = new ModelAndView();
		User user = (User) session.getAttribute("user");
		
		Torder torder = new Torder();
		torder.setId(id);
		torder.setOstatus(0);
		torderService.updateByPrimaryKeySelective(torder);
		
		PageHelper.offsetPage(page.getStart(),5);
		List<OrderComm> oc = orderCommService.selectByUserId(user.getId());
		int total = (int) new PageInfo<>(oc).getTotal();
		page.caculateLast(total);
		mav.addObject("oc",oc);
		session.setAttribute("oc",oc);
		mav.setViewName("order/my_order");
		return mav;
	}
	
	//后台
    //查询订单记录
	@RequestMapping("torderlist")
	public ModelAndView torderlist(Page page,HttpSession session){
		ModelAndView mav = new ModelAndView();
		PageHelper.offsetPage(page.getStart(),5);
		List<OrderComm> oc = orderCommService.selectorderall();
		int total = (int) new PageInfo<>(oc).getTotal();
		page.caculateLast(total);
		mav.addObject("oc",oc);
		session.setAttribute("oc",oc);
		mav.setViewName("admin/admin_order");
		return mav;
	}
}
