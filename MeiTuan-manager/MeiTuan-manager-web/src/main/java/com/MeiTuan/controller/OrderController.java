package com.MeiTuan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.MeiTuan.pojo.OrderExtend;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.meituan.service.impl.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
@Autowired
private OrderService orderService;
	/*
	 * 显示所有订单
	 */
        @RequestMapping(value="/showData",method = {RequestMethod.POST,RequestMethod.GET })
        public String showAllFood(HttpServletRequest request,Model model){
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
	            List<OrderExtend> orderList = orderService.showAllorder();
	            PageInfo<OrderExtend> pages = new PageInfo<OrderExtend>(orderList);
	            request.setAttribute("pages", pages);
	            return "order/adminAllOrders";
            }
        /*
         * 删除对应ID的订单
         */
        @RequestMapping("/deleteOrderState")
        public String deleteOrderState(Integer orderId){
        	orderService.deleteById(orderId);
			return "order/adminAllOrders";
        }
}
