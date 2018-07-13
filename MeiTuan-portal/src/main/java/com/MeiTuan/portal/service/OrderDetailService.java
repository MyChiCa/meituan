package com.MeiTuan.portal.service;

import com.MeiTuan.portal.pojo.TFood;
import com.MeiTuan.portal.pojo.TOrderDetails;

public interface OrderDetailService {

	//根据Id查找food
	public TFood findFoodById(int odId);
	
	//将food添加到订单详情中
	public void insertODDetail(TFood tFood);

	//查找食物id对应详情
	public TOrderDetails findOrderDetailsByFood(Integer foodId);

	//更新数据库中已有的食物数目
	public void updateOrderDetail(Float foodPrice);
	
	//总的数量和价格
	public TOrderDetails selectSum();
	//数量减一
	public void subFoodById(TFood tFood);
	//数量加一
	public void plusFoodById(TFood tFood);
	//删除添加到订单的数据
	public void deleteAllOD();
	//为商品添加订单号
	public void updataOrderdDet(int orderId);
}
