package com.MeiTuan.portal.service;

import java.util.List;

import com.MeiTuan.portal.pojo.OrderExtend;
import com.MeiTuan.portal.pojo.Order;

public interface OrderService {
	//获得扩展的订单，即联表
      public List<OrderExtend> showOrder(int orderId);
      //获得总价钱
      public OrderExtend showMoney(Integer id);
      //更新订单状态
	  public void updateState(Integer id);
	  //下单
	  public void insertOrder(Order tOrder);
	  //获得订单头
	  public Order findOrderhead(int orderId);
	  //改变订单状态为完成
	  public void updateFinishState(int orderId);

}

