package com.fhy.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.fhy.pojo.User;

/**
 * 登陆拦截器
 * @author fhy
 *
 */
public class LoginInterceptor implements HandlerInterceptor {
	
	//不拦截login请求
	private static final String[] IGNORE_URI = {"/log","/login","/zc","/zhuce","/index","/selectbytype","/selectkeyword","/isuser"};
	/**
	 * 该方法将在整个完成之后执行，主要作用是用于清理资源，
	 * 该方法也只能在当前Interceptor的preHandle方法的返回值为true时才会执行 
	 */
	public void afterCompletion(HttpServletRequest request,HttpServletResponse response,Object handler,Exception exception)throws Exception{
		System.out.println("LoginInterceptor afterCompletion -->");
	}
	/**
	 * 该方法将在Controller的方法调用之后执行，方法中可以对ModelAndView进行操作，
	 * 该方法也只能在Interceptor的preHandle方法的返回值为true时才执行。
	 */
	public void postHandle(HttpServletRequest request,HttpServletResponse response,Object handle,ModelAndView mv) throws Exception{
		System.out.println("LoginInterceptor postHandle -->");
	}
	/**
	 * 
	 */
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handle) throws Exception{
		System.out.println("LoginInterceptor preHandle -->");
		//flag用于判断用户是否登陆，默认false
		boolean flag = false;
		//获取请求路径进行判断
		String servletPath = request.getServletPath();
		//判断请求是否需要拦截
		for (String s : IGNORE_URI){
			if  (servletPath.contains(s)){
				flag = true;
				break;
			}
		}
		//拦截请求
		if(!flag){
			//1获取session中的用户
			User user = (User) request.getSession().getAttribute("user");
			//2判断用户是否已经登陆
			if(user==null){
				//如果用户没登录，则设置提示信息，跳转到登陆页面
				System.out.println("LoginInterceptor 请求拦截：");
				//ModelAndView mav = new ModelAndView();
				//request.setAttribute("message", "请先登录在访问网站");
				//mav.addObject("message", "请先登录在访问网站");
				request.getRequestDispatcher("login").forward(request, response);
			}else{
				//如果用户已经登陆，则验证通过，放行
				System.out.println("LoginInterceptor 放行请求：");
				flag = true;
			}
		}
		return flag;
	}
}
