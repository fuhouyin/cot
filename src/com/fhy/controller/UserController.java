package com.fhy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fhy.pojo.User;
import com.fhy.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.fhy.util.Page;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	//主界面显示
	@RequestMapping("index")
	public String index(){
		return "main/index";
	}
	
	//登陆后主界面显示
	@RequestMapping("main")
	public String main(){
		return "main/main";
	}
	
	//登陆界面显示
	@RequestMapping("log")
	public String log(){
		return "login/login";
	}
	
	//用户登陆
	@RequestMapping("login")
	public ModelAndView login(String username,String password,HttpSession session,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		session = request.getSession();//创建一个session
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		User u = userService.login(user);
		if(u != null){
			session.setAttribute("user", u);//将user存到session中
			//System.out.println("===login方法==="+u.toString());
			int sta = u.getStatus();
			int auth = u.getAuth();
			if(sta == 1){
				if(auth == 1){
					mav.setViewName("admin/admin");//后台
				}else{
					mav.setViewName("main/main");//前台
				}
			}else{
				mav.addObject("message","您不被允许登陆，请联系管理员");
				mav.setViewName("login/login");//出错提示
			}
		}else{
			mav.addObject("message", "您还未登录或您的登陆名或密码错误");
			mav.setViewName("login/login");//出错提示
		}
		return mav;
	}
	
	//用户注销
	@RequestMapping("logout")
    public String logout(HttpSession session){
		//通过session.invalidata()方法来注销当前的session
		//System.out.println("===logout方法===");
		session.invalidate();
        return "login/login";
    }
	
	//注册界面
	@RequestMapping("zc")
	public String zc(){
		return "zhuce/zhuce";
	}
	
	//用户注册
	@RequestMapping("zhuce")
	public ModelAndView zhuce(User user,HttpSession session){
		ModelAndView mav = new ModelAndView();
		userService.zhuce(user);
		user.setId(user.getId());
		session.setAttribute("user", user);
		//System.out.println("===zhuce方法==="+user.toString());
		mav.setViewName("main/main");
		return mav;
	}
	
	//显示修改密码界面
	@RequestMapping("pwdedit")
	public String pwdedit(){
		return "me/my_person_pedit"; 
	}
	
	//修改密码
	@RequestMapping("pedit")
	public ModelAndView pedit(String qpassword,HttpSession session){
		ModelAndView mav = new ModelAndView();
		User u = (User) session.getAttribute("user");
		User user = new User();
		user.setPassword(qpassword);
		user.setId(u.getId());
		userService.updateByPrimaryKeySelective(user);
		System.out.println("+++pedit方法+++"+qpassword);
		mav.addObject("message","密码修改成功");
		mav.setViewName("me/my_person");
		return mav;
	}
	
	
	//用户列表
	@RequestMapping("userlist")
	public ModelAndView userlist(Page page){
		ModelAndView mav = new ModelAndView();
		PageHelper.offsetPage(page.getStart(),5);
		List<User> us = userService.selectall();
		int total = (int) new PageInfo<>(us).getTotal();
		page.caculateLast(total);
		mav.addObject("us", us);
		mav.setViewName("admin/admin_user");
		return mav;
	}
	


	//恢复登陆
	@RequestMapping("updateuserup")
	public ModelAndView updateuserup(User user,Page page){
		ModelAndView mav = new ModelAndView();
		User u = new User();
		u.setId(user.getId());
		u.setStatus(1);
		userService.updateByPrimaryKeySelective(u);
		
		PageHelper.offsetPage(page.getStart(),5);
		List<User> us = userService.selectall();
		int total = (int) new PageInfo<>(us).getTotal();
		page.caculateLast(total-1);
		mav.addObject("us", us);
		
		mav.setViewName("admin/admin_user");
		return mav;
	}
	 
	//禁止登陆
	@RequestMapping("updateuserdown")
	public ModelAndView updateuserdown(User user,Page page){
		ModelAndView mav = new ModelAndView();
		User u = new User();
		u.setId(user.getId());
		u.setStatus(0);
		userService.updateByPrimaryKeySelective(u);
		
		PageHelper.offsetPage(page.getStart(),5);
		List<User> us = userService.selectall();
		int total = (int) new PageInfo<>(us).getTotal();
		page.caculateLast(total-1);
		mav.addObject("us", us);
		
		mav.setViewName("admin/admin_user");
		return mav;
	}
}
