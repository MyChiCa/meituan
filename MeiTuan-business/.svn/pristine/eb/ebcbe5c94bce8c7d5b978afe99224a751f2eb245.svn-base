package com.MeiTuan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.MeiTuan.mapper.TOrderExtendMapper;
import com.MeiTuan.pojo.OrderExtend;
import com.MeiTuan.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{

@Autowired
private TOrderExtendMapper tOrderExtendMapper;
    /*
     * 显示所有订单
     * @see com.MeiTuan.service.OrderService#showAllOrders()
     */
	@Override
	public List<OrderExtend> showAllOrders() {
		List<OrderExtend> list = tOrderExtendMapper.showAllOrders();
		return list;
	}
	/*
	 * 商家接单
	 * @see com.MeiTuan.service.OrderService#updateState(java.lang.Integer)
	 */
	@Override
	public void updateState(Integer id) {
		tOrderExtendMapper.updateState(id);		
	}
	/*
	 * 商家取消订单
	 * @see com.MeiTuan.service.OrderService#CancelOrder(int)
	 */
	@Override
	public void CancelOrder(int orderId) {
        tOrderExtendMapper.CancelOrder(orderId);	
	}
	
	/*
	 * 商家查看未接订单
	 * @see com.MeiTuan.service.OrderService#showNot()
	 */
	@Override
	public List<OrderExtend> showNot() {
		List<OrderExtend> list = tOrderExtendMapper.showNot();
		return list;
	}
	
	/*
	 * 商家查看已完成订单
	 * @see com.MeiTuan.service.OrderService#showCom()
	 */
	@Override
	public List<OrderExtend> showCom() {
		List<OrderExtend> list = tOrderExtendMapper.showCom();
		return list;
	}
	
	/*
	 * 商家查看已被取消的订单
	 * @see com.MeiTuan.service.OrderService#showCan()
	 */
	@Override
	public List<OrderExtend> showCan() {
		List<OrderExtend> list = tOrderExtendMapper.showCan();
		return list;
	}

}
