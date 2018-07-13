package com.MeiTuan.portal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.MeiTuan.portal.pojo.TRestaurant;
import com.MeiTuan.portal.service.RestaurantService;

@Controller
@RequestMapping("/restaurant")
public class RestuarantController {
@Autowired
RestaurantService restaurantService;
@Autowired
private  HttpServletRequest request;

	@RequestMapping("/restaurantPage")
	public String showRestuarant(){
		List<TRestaurant> list = null;
		list = restaurantService.selectAllRest();

		String pages = request.getParameter("pages");
		//当前页
		int page = 1;
		//总页数
		int totalPage = 0;
		//每页显示的大小
		int pageSize = 9;
		if(pages != null){
			page = Integer.parseInt(pages);
		}
		totalPage = (int) Math.ceil(list.size()/(pageSize*1.0));
		
		List<TRestaurant> currentList = restaurantService.showRestByPage(page, pageSize);
		request.setAttribute("currentList", currentList);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("page", page);
		return "restaurant";
	}
	
	@RequestMapping("/restaurantById")
	public String showRestById(){
		String id = request.getParameter("id");
		List<TRestaurant> list = null;
		if(id != ""){
			int rstrId = Integer.parseInt(id);
			list = restaurantService.selectRestById(rstrId);
		}
		String pages = request.getParameter("pages");
		//当前页
		int page = 1;
		//总页数
		int totalPage = 0;
		//每页显示的大小
		int pageSize = 9;
		if(pages != null){
			page = Integer.parseInt(pages);
		}
		totalPage = (int) Math.ceil(list.size()/(pageSize*1.0));
		
		List<TRestaurant> currentList = restaurantService.showRestByPage(page, pageSize);
		request.setAttribute("currentList", currentList);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("page", page);
		return "restaurant";
	}
}
