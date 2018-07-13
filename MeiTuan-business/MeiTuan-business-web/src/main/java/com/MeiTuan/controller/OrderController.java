package com.MeiTuan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.MeiTuan.pojo.OrderExtend;
import com.MeiTuan.service.OrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Controller
@RequestMapping("/order")
public class OrderController {
	
@Autowired
private OrderService orderService;
	@RequestMapping("/show")
    public String AdminOrder(){
   	 return "order/adminAllOrders";
    }
    
    @RequestMapping(value="/showData",method = {RequestMethod.POST,RequestMethod.GET })
    public String showAllOrder(HttpServletRequest request,Model model){
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
       List<OrderExtend> orders = orderService.showAllOrders();
       PageInfo<OrderExtend> pages = new PageInfo<OrderExtend>(orders);
       request.setAttribute("pages", pages); 
       return "order/adminAllOrders";
    }
    /*
     * 商家接单
     */
    @RequestMapping(value="/updateOrderState",method = {RequestMethod.POST,RequestMethod.GET })
    public String updateOrderState(HttpServletRequest request){
    	String id = request.getParameter("orderId");
    	int orderId = 0;
    	if(id != null){
    		orderId = Integer.parseInt(id);
    	}
    	orderService.updateState(orderId);
    	return "redirect:showData";
    }
    
    /*
     * 商家取消订单
     */
    @RequestMapping(value="/CancelOrder",method = {RequestMethod.POST,RequestMethod.GET })
    public String CancelOrder(HttpServletRequest request){
    	String id = request.getParameter("orderId");
    	int orderId = 0;
    	if(id != null){
    		orderId = Integer.parseInt(id);
    	}
    	orderService.CancelOrder(orderId);
    	return "redirect:showData";
    }
    /*
     * 商家查看未完成订单
     */
      @RequestMapping(value="/showNot",method = {RequestMethod.POST,RequestMethod.GET })
      public String showNot(HttpServletRequest request){
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
         List<OrderExtend> orders = orderService.showNot();
         PageInfo<OrderExtend> pages = new PageInfo<OrderExtend>(orders);
         request.setAttribute("pages", pages); 
         return "order/adminAllOrders";
      }
    /*
     * 商家查看已完成订单
     */
      @RequestMapping(value="/showCom",method = {RequestMethod.POST,RequestMethod.GET })
      public String showCom(HttpServletRequest request){
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
         List<OrderExtend> orders = orderService.showCom();
         PageInfo<OrderExtend> pages = new PageInfo<OrderExtend>(orders);
         request.setAttribute("pages", pages); 
         return "order/adminAllOrders";
      }
    /*
     * 商家查看已取消的订单
     */
      @RequestMapping(value="/showCan",method = {RequestMethod.POST,RequestMethod.GET })
      public String showCan(HttpServletRequest request){
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
         List<OrderExtend> orders = orderService.showCan();
         PageInfo<OrderExtend> pages = new PageInfo<OrderExtend>(orders);
         request.setAttribute("pages", pages); 
         return "order/adminAllOrders";
      }
}
