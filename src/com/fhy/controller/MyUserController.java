package com.fhy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fhy.pojo.MyUser;
import com.fhy.pojo.User;
import com.fhy.service.MyUserService;

@Controller
public class MyUserController {

	@Autowired
	private MyUserService myUserService;
	//显示个人中心界面
	@RequestMapping("my")
	public String my(HttpSession session){
		User u = (User) session.getAttribute("user");
		MyUser myuser = new MyUser();
		if(myUserService.selectByuserid(u.getId()) != null){  //判断个人信息表中有没有此人的数据，有就返回，没有就添加一条
			return "me/my_person";
		}else{
			myuser.setUserId(u.getId());
			myUserService.adduserinfo(myuser);
			//System.out.println("===adduserinfo方法==="+myuser.toString());
			return "me/my_person";
		}
	}
	
	//显示个人信息的界面
	@RequestMapping("userinfo")
	public ModelAndView userinfo(HttpSession session){
		ModelAndView mav = new ModelAndView();
		User user = (User) session.getAttribute("user");
		//System.out.println(user.toString()+"session信息");
		MyUser my = myUserService.userinfo(user.getId());
		//System.out.println("+++userinfo方法+++");
		session.setAttribute("my", my);
		mav.setViewName("me/my_person_edit");
		return mav;
	}
	
	//修改 删除
	@RequestMapping("update")
	public ModelAndView update(HttpSession session,HttpServletRequest request,MyUser myuser){
		ModelAndView mav = new ModelAndView();
		MyUser my = (MyUser) session.getAttribute("my");
		//要录入的信息
		MyUser my1 = new MyUser();
		my1.setId(my.getId());
		my1.setUserId(my.getUserId());
		my1.setName(myuser.getName());
		my1.setWeixin(myuser.getWeixin());
		my1.setAddress(myuser.getAddress());
		my1.setPca(myuser.getPca());
		my1.setPhone(myuser.getPhone());
		//System.out.println(my1.toString()+"要修改的信息");
		myUserService.updateByPrimaryKeySelective(my1);
		//System.out.println("+++update方法+++");
		mav.addObject("message","个人信息修改成功");
		mav.setViewName("me/my_person");
		return mav;
	}
	
	//通过userid查询用户详细信息
	@RequestMapping("myuserinfo")
	public ModelAndView myuserinfo(int user_id,HttpSession session){
		ModelAndView mav = new ModelAndView();
		MyUser my = myUserService.selectByuserid(user_id);
		session.setAttribute("my", my);
		mav.setViewName("admin/admin_myuser");
		return mav;
	}

}
