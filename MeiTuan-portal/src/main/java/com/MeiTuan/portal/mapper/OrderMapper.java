package com.MeiTuan.portal.mapper;

import com.MeiTuan.portal.pojo.Order;

public interface OrderMapper {

	//下单
	void insertOrder(Order tOrder);
	//查找订单
	Order orderMapper(int orderId);
	
	//最终状态
	void updateFinishState(int orderId);
}
