package com.fhy.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fhy.pojo.User;
import com.fhy.service.UserService;

@Controller
public class AjaxController {
	
	@Autowired
	private UserService userService;
	
	//判断账号是否存在
	@RequestMapping(value="/isuser",method=RequestMethod.POST)
	@ResponseBody
	public int isuser(@RequestParam("username") String username){
		User user = new User();
		user.setUsername(username);
		if(userService.selectByUsername(user) == null){
			return 0;	
		}else{
			return 1;
		}
	}
	
	//判断原密码与输入的是否一致
	@RequestMapping(value="/ispwd",method=RequestMethod.POST)
	@ResponseBody
	public int ispwd(@RequestParam("password") String password,HttpSession session){
		User u = (User) session.getAttribute("user");
		User user = userService.selectBypwd(u);
		System.out.println(password+"++++++++");
		System.out.println(user.getPassword()+"===========");
		if(user.getPassword().equals(password)){
			return 1;
		}else{
			return 0;
		}
	}
	
}
