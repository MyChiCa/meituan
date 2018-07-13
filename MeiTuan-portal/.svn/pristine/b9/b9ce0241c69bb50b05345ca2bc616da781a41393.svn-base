package com.MeiTuan.portal.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.MeiTuan.portal.pojo.TCart;
import com.MeiTuan.portal.pojo.TFood;
import com.MeiTuan.portal.pojo.TOrderDetails;
import com.MeiTuan.portal.service.OrderDetailService;

@Controller
@RequestMapping("/orderDetails")
public class OrderDetailController {
@Autowired
OrderDetailService orDetaileService;
@Autowired
private HttpServletRequest request;

	@RequestMapping("/putInCart")
	@ResponseBody
	public TCart insertOrderDetById(Model model){
		TFood tFood = null;
		String id = request.getParameter("id");
		int odId = 0;
		if(id != null){
			odId = Integer.parseInt(id);
			//获得id对应食物
			tFood = orDetaileService.findFoodById(odId);
		}
		TOrderDetails tOrderDetails = orDetaileService.findOrderDetailsByFood(tFood.getFoodId());
		//如果对象为空，则进行插入操作
		if(tOrderDetails == null)
			orDetaileService.insertODDetail(tFood);
		//如果对象不为空，则进行修改操作
		else
			orDetaileService.updateOrderDetail(tFood.getFoodPrice());
		//获得增加后的食物详情
		TOrderDetails tOrderDetails2 = orDetaileService.findOrderDetailsByFood(odId);
		//获得总数
		TOrderDetails tOrderDetails3 = orDetaileService.selectSum();
		TCart tCart = new TCart();
		tCart.setNumber(tOrderDetails2.getFoodNum());
		tCart.setMoney(tOrderDetails2.getFoodMoney());	
		tCart.setSumNumber(tOrderDetails3.getSumNumber());
		tCart.setSumMoney(tOrderDetails3.getSumMoney());
		tCart.setFoodName(tFood.getFoodName());
		return tCart;
	}
	
	@RequestMapping("/subInCart")
	@ResponseBody
	public TCart subOrderDetById(Model model){
		TFood tFood = null;
		String id = request.getParameter("id");
		int odId = 0;
		if(id != null){
			odId = Integer.parseInt(id);
			//获得id对应食物
			tFood = orDetaileService.findFoodById(odId);
		}
		orDetaileService.subFoodById(tFood);
		
		//获取数据
		TOrderDetails tOrderDetails = orDetaileService.findOrderDetailsByFood(odId);
		TOrderDetails tOrderDetails2 = orDetaileService.selectSum();

		TCart tCart = new TCart();
		tCart.setNumber(tOrderDetails.getFoodNum());
		tCart.setMoney(tOrderDetails.getFoodMoney());	
		tCart.setSumNumber(tOrderDetails2.getSumNumber());
		tCart.setSumMoney(tOrderDetails2.getSumMoney());
		tCart.setFoodName(tFood.getFoodName());
		return tCart;
	}
	
	@RequestMapping("/plusInCart")
	@ResponseBody
	public TCart plusOrderDetById(Model model){
		TFood tFood = null;
		String id = request.getParameter("id");
		int odId = 0;
		if(id != null){
			odId = Integer.parseInt(id);
			//获得id对应食物
			tFood = orDetaileService.findFoodById(odId);
		}
		orDetaileService.plusFoodById(tFood);
		
		//获取数据
		TOrderDetails tOrderDetails = orDetaileService.findOrderDetailsByFood(odId);
		TOrderDetails tOrderDetails2 = orDetaileService.selectSum();

		TCart tCart = new TCart();
		tCart.setNumber(tOrderDetails.getFoodNum());
		tCart.setMoney(tOrderDetails.getFoodMoney());	
		tCart.setSumNumber(tOrderDetails2.getSumNumber());
		tCart.setSumMoney(tOrderDetails2.getSumMoney());
		tCart.setFoodName(tFood.getFoodName());
		return tCart;
	}
	
	@RequestMapping("/deleteFromCart")
	@ResponseBody
	public void deleteOrderDe(){
		orDetaileService.deleteAllOD();
	}
}
