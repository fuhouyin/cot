package com.fhy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fhy.pojo.Type;
import com.fhy.service.TypeService;

@Controller
public class TypeController {

	@Autowired
	private TypeService typeService;
	
	@RequestMapping("typelist")
	@ResponseBody
	public List<Type> typelist (HttpSession session,HttpServletRequest request,HttpServletResponse response){
		List<Type> t = typeService.typelist2();
		return t;
	} 
}
