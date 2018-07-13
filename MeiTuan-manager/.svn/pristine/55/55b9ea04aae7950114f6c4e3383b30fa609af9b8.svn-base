package com.MeiTuan.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.MeiTuan.pojo.TAdmin;
import com.meituan.service.AdminService;

@Controller
@RequestMapping("/admin")
public class adminController {
	
@Autowired
private AdminService adminService;
      @RequestMapping("login")
      public String login(){
    	  return "adminLogin";
      }
 
      @RequestMapping("/loginValidate")
      public String loginValidate(Model model,TAdmin admin,HttpServletRequest request){
    	  TAdmin result = adminService.findAdmin(admin);
    	  if(result==null){
    		  model.addAttribute("errorMsg", "用户名或密码错误");
    		  return "adminLogin";
    	  }else{
    		  HttpSession session = request.getSession();
    		  session.setAttribute("admin", result);
    		  return "admin";
    	  }   	  
      }
      @RequestMapping("/showInfo")
      @ResponseBody
      public TAdmin showInfo(HttpServletRequest request){
    	  HttpSession session = request.getSession();
    	  TAdmin tAdmin = (TAdmin) session.getAttribute("admin");
    	  System.out.println(tAdmin);
    	  return tAdmin;
      }
    /*
     * 修改管理员信息
     */
      @RequestMapping("/update")
      public String updateAdmin(TAdmin tAdmin){
    	  adminService.updateAdmin(tAdmin);
    	  return "admin";
      }
}
