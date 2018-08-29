package com.fhy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fhy.pojo.Ztype;
import com.fhy.service.ZtypeService;

@Controller
public class ZtypeController {

	@Autowired
	private ZtypeService ztypeService;
	
	@RequestMapping("ztypelist")
	@ResponseBody
	public List<Ztype> ztypelist(int id){
		
		List<Ztype> zt = ztypeService.selectByTypeId(id);
		return zt;
	}
}
