package com.fhy.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fhy.pojo.Comm;
import com.fhy.pojo.User;
import com.fhy.service.CommService;
import com.fhy.util.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class CommController {

	@Autowired
	private CommService commService;
	
	//显示添加商品页面
	@RequestMapping("commadd")
	public String commadd(){
		return "comm/comm_add";
	}
	
	//添加商品
	@RequestMapping("addcomm")
	public ModelAndView addcomm(HttpSession session,@RequestParam(value="file") MultipartFile file,HttpServletRequest request,ModelMap model){
		
		System.out.println(file.getSize());
        //getRealPath()得到的是磁盘上的真实路径，getContextPath()得到的是访问的虚拟路径s  
        String path = request.getSession().getServletContext().getRealPath("upload");  
        //得到上传文件的名字  
        String fileName = file.getOriginalFilename();  
        System.out.println(path);  
        File targetFile = new File(path,fileName);  
        //创建目录（file.mkdirs()创建路径中不存在的父目录;file.mkdir()只是创建最后的目录，如果路径中有一个目录不存在则创建失败）  
        if(!targetFile.exists()){  
            targetFile.mkdirs();  
        }  
        //System.out.println(id+"商品id为++++++");  
        //保存  
        try {  
            file.transferTo(targetFile);  
            System.out.println(request.getContextPath()+"/upload/"+fileName);  
            System.out.println(request.getLocalAddr());  
            System.out.println(request.getContextPath());  
            model.addAttribute("fileUrl", request.getContextPath()+"/upload/"+fileName);  
        } catch (IllegalStateException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        } catch (IOException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
		
		
		ModelAndView mav = new ModelAndView();
		User user = (User)session.getAttribute("user");
		Comm c = new Comm();
		c.setUserId(user.getId());//出售者
		c.setCommImg(fileName);
		c.setCommStatus(1);//默认1为出售，0为下架
		c.setCommName(request.getParameter("comm_name"));
		c.setCommPrice(request.getParameter("comm_price"));
		c.setTypeId(Integer.parseInt(request.getParameter("type_id")));
		c.setZtypeId(Integer.parseInt(request.getParameter("ztype_id")));
		c.setCommRemark(request.getParameter("comm_remark"));
		
		System.out.println(c.toString()+"商品信息");
		System.out.println(user.getId()+"user的id===+++===");
		commService.insertSelective(c);
		mav.addObject("message","商品添加成功");
		mav.setViewName("me/my_person");
		return mav;
	}
	
	//查询自己出售的商品
	@RequestMapping("my_comm")
	public ModelAndView my_comm(HttpSession session,Page page){
		ModelAndView mav = new ModelAndView();
		User user = (User) session.getAttribute("user");
		PageHelper.offsetPage(page.getStart(),5);
		List<Comm> c = commService.my_comm(user.getId());
		int total = (int) new PageInfo<>(c).getTotal();
		page.caculateLast(total);
		mav.addObject("c",c);
		mav.setViewName("comm/my_comm");
		return mav;
		
	}
	
	//通过一级类别查询商品
	@RequestMapping("selectbytype")
	public ModelAndView selectbytype(int id){
		ModelAndView mav = new ModelAndView();
		List<Comm> c = commService.selectbytype(id);
		mav.addObject("c",c);
		mav.setViewName("comm/comm");
		return mav;
	}
	
	//通过二级类别查询商品
	@RequestMapping("selectbyztype")
	public ModelAndView selectbyztype(int id){
		ModelAndView mav = new ModelAndView();
		List<Comm> c = commService.selectbyztype(id);
		mav.addObject("c",c);
		mav.setViewName("comm/comm");
		return mav;
	}
	
	//查看商品详情
	@RequestMapping("comminfo")
	public ModelAndView comminfo(int id,HttpSession session){
		ModelAndView mav = new ModelAndView();
		Comm co = commService.comminfo(id);
		co.setId(id);
		session.setAttribute("co", co);
		System.out.println(co+"++++++++++++");
		mav.setViewName("comm/comm_xx");
		return mav;
	}
	
	//按关键字查找 by前台
	@RequestMapping("selectkeyword")
	public ModelAndView selectkeyword(String keyword){
		ModelAndView mav = new ModelAndView();
		System.out.println(keyword+"++++++++++++++");
		List<Comm> c = commService.selectKeyWord(keyword);
		mav.addObject("c", c);
		mav.setViewName("comm/comm");
		return mav;
	}
	
	//商品下架 by前台
	@RequestMapping("mycommdown")
	public ModelAndView mycommoditydown(Comm comm,Page page,HttpSession session){
		ModelAndView mav = new ModelAndView();
		Comm cc = new Comm();
		cc.setId(comm.getId());
		cc.setCommStatus(0);
		commService.updateByPrimaryKeySelective(cc);
			
		
		User user = (User) session.getAttribute("user");
		PageHelper.offsetPage(page.getStart(),5);
		List<Comm> c = commService.my_comm(user.getId());
		int total = (int) new PageInfo<>(c).getTotal();
		page.caculateLast(total);
		mav.addObject("c",c);
		mav.setViewName("comm/my_comm");
		return mav;
	}
	
	//修改商品界面
	@RequestMapping("commedit")
	public ModelAndView commedit(int id,HttpSession session){
		ModelAndView mav = new ModelAndView();
		Comm co = commService.selectbyid(id);
		System.out.println(co+"修改商品界面查询");
		session.setAttribute("co", co);
		mav.addObject("co", co);
		mav.setViewName("comm/comm_edit");
		return mav;
	}
	
	//修改商品
	@RequestMapping("editcomm")
	public ModelAndView editcomm(int id,Comm comm,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
        
        Comm c = new Comm();
		c.setId(id);
		c.setCommStatus(1);//默认1为出售，0为下架
		c.setCommName(request.getParameter("comm_name"));
		c.setCommPrice(request.getParameter("comm_price"));
		c.setTypeId(Integer.parseInt(request.getParameter("type_id")));
		c.setZtypeId(Integer.parseInt(request.getParameter("ztype_id")));
		c.setCommRemark(request.getParameter("comm_remark"));
		
		System.out.println(c.toString()+"商品信息");
		commService.updateByPrimaryKeySelective(c);
		mav.addObject("message","商品修改成功");
		mav.setViewName("me/my_person");
		return mav;
	}
	
	//修改图片界面
	@RequestMapping("editimg")
	public String editimg(int id,HttpSession session){
		session.setAttribute("c_id", id);
		return "comm/comm_editimg";
	}
	
	//修改图片
	@RequestMapping("editcommimg")
	public ModelAndView editcommimg(int id,HttpSession session,@RequestParam(value="file") MultipartFile file,HttpServletRequest request,ModelMap model){
		
		System.out.println(file.getSize());
        //getRealPath()得到的是磁盘上的真实路径，getContextPath()得到的是访问的虚拟路径s  
        String path = request.getSession().getServletContext().getRealPath("upload");  
        //得到上传文件的名字  
        String fileName = file.getOriginalFilename();  
        System.out.println(path);  
        File targetFile = new File(path,fileName);  
        //创建目录（file.mkdirs()创建路径中不存在的父目录;file.mkdir()只是创建最后的目录，如果路径中有一个目录不存在则创建失败）  
        if(!targetFile.exists()){  
            targetFile.mkdirs();  
        }  
        //System.out.println(id+"商品id为++++++");  
        //保存  
        try {  
            file.transferTo(targetFile);  
            System.out.println(request.getContextPath()+"/upload/"+fileName);  
            System.out.println(request.getLocalAddr());  
            System.out.println(request.getContextPath());  
            model.addAttribute("fileUrl", request.getContextPath()+"/upload/"+fileName);  
        } catch (IllegalStateException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        } catch (IOException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        
        ModelAndView mav = new ModelAndView();
        Comm co = commService.selectbyid(id);
        Comm ccc = new Comm();
        ccc.setId(id);
        ccc.setCommImg(fileName);
        ccc.setZtypeId(co.getZtypeId());
        System.out.println("filiname"+ccc);
        commService.updateByPrimaryKeySelective(ccc);
        mav.addObject("message","图片修改成功");
		mav.setViewName("me/my_person");
		return mav;
	}
	
	
	//后台
    //查询所有商品
	@RequestMapping("commlist")
	public ModelAndView commlist(Page page){
		ModelAndView mav = new ModelAndView();
		PageHelper.offsetPage(page.getStart(),5);
		List<Comm> c = commService.selectcommall();
		int total = (int) new PageInfo<>(c).getTotal();
		page.caculateLast(total);
		mav.addObject("c", c);
		mav.setViewName("admin/admin_comm");
		return mav;
	}
	
	//下架商品
	@RequestMapping("commdown")
	public ModelAndView commdown(Comm comm,Page page){
		ModelAndView mav = new ModelAndView();
		Comm cc = new Comm();
		cc.setId(comm.getId());
		cc.setCommStatus(0);
		commService.updateByPrimaryKeySelective(cc);
		
		PageHelper.offsetPage(page.getStart(),5);
		List<Comm> c = commService.selectcommall();
		int total = (int) new PageInfo<>(c).getTotal();
		page.caculateLast(total);
		mav.addObject("c", c);
		mav.setViewName("admin/admin_comm");
		return mav;
	}
	
	//上架商品
	@RequestMapping("commup")
	public ModelAndView commup(Comm comm,Page page){
		ModelAndView mav = new ModelAndView();
		Comm cc = new Comm();
		cc.setId(comm.getId());
		cc.setCommStatus(1);
		commService.updateByPrimaryKeySelective(cc);
		
		PageHelper.offsetPage(page.getStart(),5);
		List<Comm> c = commService.selectcommall();
		int total = (int) new PageInfo<>(c).getTotal();
		page.caculateLast(total);
		mav.addObject("c", c);
		mav.setViewName("admin/admin_comm");
		return mav;
	}
	
	//查看商品详情
	@RequestMapping("hcomminfo")
	public ModelAndView hcomminfo(int id,HttpSession session){
		ModelAndView mav = new ModelAndView();
		Comm co = commService.comminfo(id);
		co.setId(id);
		session.setAttribute("co", co);
		System.out.println(co+"++++++++++++");
		mav.setViewName("admin/admin_commxx");
		return mav;
	}
		
}
