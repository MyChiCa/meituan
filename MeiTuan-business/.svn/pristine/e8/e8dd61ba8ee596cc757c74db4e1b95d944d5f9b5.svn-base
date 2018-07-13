package com.MeiTuan.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.MeiTuan.pojo.TBusiness;
import com.MeiTuan.service.MenuService;

@Controller
public class MenuController {
	
	@Autowired
	private MenuService menuService;
      /*
       * 新增菜单
       */
	 @RequestMapping(value="/addMenu",method = {RequestMethod.POST,RequestMethod.GET })
	 public String addMemu(HttpServletRequest request) throws UnsupportedEncodingException{
		 TBusiness business = (TBusiness) request.getSession().getAttribute("business");
		 int id = business.getRstrId();
		 String name = (String) request.getParameter("menuName");
		 System.out.println(name);
		 menuService.addMenu(id,name);
		 return "forward:food/showData";
	 }
}
