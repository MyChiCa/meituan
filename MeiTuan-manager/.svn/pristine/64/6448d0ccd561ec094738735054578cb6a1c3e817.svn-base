package com.MeiTuan.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.MeiTuan.pojo.TUser;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.meituan.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {

	@InitBinder
    protected void init(HttpServletRequest request, ServletRequestDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }
@Autowired
UserService userService;
    @RequestMapping(value="/showData",method = {RequestMethod.POST,RequestMethod.GET })
    public String getAllUser(HttpServletRequest request,Model model){
    	String pageNum = request.getParameter("pageNum");
        String pageSize =request.getParameter("pageSize");
        int num = 1;
        int size = 10;
        if (pageNum != null && !"".equals(pageNum)) {
            num = Integer.parseInt(pageNum);
        }   
        if (pageSize != null && !"".equals(pageSize)) {
            size = Integer.parseInt(pageSize);
        }
        PageHelper.startPage(num, size);
    	List<TUser> userList = userService.selectAllUser();
    	PageInfo<TUser> page = new PageInfo<TUser>(userList);
    	request.setAttribute("page", page);
    	return "user/userManage";
    }
    @RequestMapping("/show")
    public String Usershow(){
    	return "user/userManage";
    }
    
    
   @RequestMapping("/edit")
    public String editUser(){
        return "user/userInfo";
   }
    
   @RequestMapping("/delete")
    public String deleteById(Integer userId){
	   userService.delById(userId);
	   return "redirect:showData";
   }
   
   @RequestMapping("/showById")
   @ResponseBody
    public TUser showById(Integer userId){
	   TUser user = userService.findById(userId);
	   return user;
   }
   
   @RequestMapping("/updateUser")
   public String updateUser(TUser tUser){
	   userService.updateUser(tUser);
	   return "redirect:showData";
   }
}
