package com.MeiTuan.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
     @RequestMapping("/register")
     public String showIndex(){
    	 return "register";
    	 //orderConfirm
     }
     
     @RequestMapping("/footer")
	 public String getFoot(){
		 return "footer";
	 }
     
     @RequestMapping("/login")
     public String login(){
    	 return "login";
     }
     
     @RequestMapping("/orderConfirm")
     public String showOrder(){
    	 return "orderConfirm";
     }
     
     @RequestMapping("/acceptOrder")
     public String acceptOrder(){
    	 return "acceptOrder";
     }
}
