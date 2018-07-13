package com.MeiTuan.portal.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.MeiTuan.portal.pojo.TFood;
import com.MeiTuan.portal.service.FoodService;

@Controller
@RequestMapping("/food")
public class FoodController {
@Autowired
FoodService foodService;
@Autowired
private ServletRequest request;

	@RequestMapping("/gulugulu")
	public String showFoodByType(){
		List<TFood> list1 = new ArrayList<TFood>();
		List<TFood> list2 = new ArrayList<TFood>();
		List<TFood> list3 = new ArrayList<TFood>();
		List<TFood> list4 = new ArrayList<TFood>();
		List<TFood> list5 = new ArrayList<TFood>();
		List<TFood> list6 = new ArrayList<TFood>();
		List<TFood> list7 = new ArrayList<TFood>();
		List<TFood> list8 = new ArrayList<TFood>();
		List<TFood> list9 = new ArrayList<TFood>();
		List<TFood> list10 = new ArrayList<TFood>();
		list1 = foodService.selectFoodByType(1);
		list2 = foodService.selectFoodByType(2);
		list3 = foodService.selectFoodByType(3);
		list4 = foodService.selectFoodByType(4);
		list5 = foodService.selectFoodByType(5);
		list6 = foodService.selectFoodByType(6);
		list7 = foodService.selectFoodByType(7);
		list8 = foodService.selectFoodByType(10);
		list9 = foodService.selectFoodByType(11);
		list10 = foodService.selectFoodByType(12);
		request.setAttribute("list1", list1);
		request.setAttribute("list2", list2);
		request.setAttribute("list3", list3);
		request.setAttribute("list4", list4);
		request.setAttribute("list5", list5);
		request.setAttribute("list6", list6);
		request.setAttribute("list7", list7);
		request.setAttribute("list8", list8);
		request.setAttribute("list9", list9);
		request.setAttribute("list10", list10);
		
		return "gulugulu";
	}
	
}
