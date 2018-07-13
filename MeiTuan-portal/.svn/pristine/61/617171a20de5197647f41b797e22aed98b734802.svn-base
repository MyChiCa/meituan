package com.MeiTuan.portal.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.MeiTuan.portal.pojo.TUser;
import com.MeiTuan.portal.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
@Autowired
UserService userService;
@Autowired
private HttpServletRequest request;
 /*
  * 验证该用户是否已注册
  */
     @RequestMapping("/ifExitUser")
     public ModelAndView ifExitUser(TUser existUser,Model model){
    	 existUser = userService.ifexitUser(existUser.getTelephone());
    			if(existUser!=null){
    				//查询到该用户
    				String message = "该用户已存在";
    				return new ModelAndView("/WEB-INF/jsp/register.jsp","message",message);
    			}
    			return null;
     }
 /*
  * 注册
  */
      @RequestMapping("/insert")
      public String insert(TUser tuser,Model model){
	    userService.createUser(tuser); 
	    model.addAttribute("msg", "注册成功");
	    return "login";     
 }
      
 /*
  * 登录功能
  */
      @RequestMapping(value="/login",method={RequestMethod.POST ,RequestMethod.GET})
      public String login(TUser user,Model model,HttpServletRequest request)throws Exception{
    	   TUser loginUser=userService.login(user.getTelephone(),user.getLoginPassword(),user.getUserName(),user.getEmail());
    	   if(loginUser!=null){
    		   model.addAttribute(loginUser);
    		   HttpSession session = request.getSession();
    		   session.setAttribute("loginUser", loginUser);
    		   return "redirect:/restaurant/restaurantPage"; 
    	   }
    	   else{
    		   return "redirect:/login";    		   
    	   }
      }
      
      //获得用户的地址相关信息
      @RequestMapping("/address")
      @ResponseBody
      public TUser getAddress(){
    	  String address = request.getParameter("addr");
    	  System.out.println(address);
    	  TUser tUser = (TUser)request.getSession().getAttribute("loginUser");
    	  tUser.setAddress(address);
    	  userService.modifyAddress(tUser);
    	  return tUser;
      }
      
      //注销
      @RequestMapping("/logout")
      public String userLogout(){
    	  request.getSession().invalidate();
    	  return "/login";
      }

}
