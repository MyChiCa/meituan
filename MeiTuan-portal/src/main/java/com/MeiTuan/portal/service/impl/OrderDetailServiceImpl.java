package com.MeiTuan.portal.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MeiTuan.portal.mapper.TFoodMapper;
import com.MeiTuan.portal.mapper.TOrderDetailsMapper;
import com.MeiTuan.portal.pojo.TCart;
import com.MeiTuan.portal.pojo.TFood;
import com.MeiTuan.portal.pojo.TOrderDetails;
import com.MeiTuan.portal.service.OrderDetailService;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {
	
@Autowired
TOrderDetailsMapper tOrderDetailsMapper;
@Autowired
TFoodMapper tFoodMapper;

	@Override
	public TFood findFoodById(int odId) {
		TFood tFood = tFoodMapper.selectByPrimaryKey(odId);
		return tFood;
	}


	//查找食物id对应详情
	@Override
	public TOrderDetails findOrderDetailsByFood(Integer foodId) {
		TOrderDetails tOrderDetails = null;
		tOrderDetails = tOrderDetailsMapper.selectODByFood(foodId);
		return tOrderDetails;
	}

	//插入orderdetail
	@Override
	public void insertODDetail(TFood tFood) {
		tOrderDetailsMapper.insertODDetail(tFood);
	}

	//更新已有食物orderdetail
	@Override
	public void updateOrderDetail(Float foodPrice) {
		tOrderDetailsMapper.updateOrderDetail(foodPrice);
	}

	//获得所有的总的数量和价格
	@Override
	public TOrderDetails selectSum() {
		TOrderDetails tOrderDetails = null;
		tOrderDetails = tOrderDetailsMapper.selectSum();
		return tOrderDetails;
	}

	//数量减一
	@Override
	public void subFoodById(TFood tFood) {
		tOrderDetailsMapper.subFoodById(tFood);
	}

	//数量加一
	@Override
	public void plusFoodById(TFood tFood) {
		tOrderDetailsMapper.plusFoodById(tFood);
	}

	//删除所有
	@Override
	public void deleteAllOD() {
		tOrderDetailsMapper.deleteAllOD();
	}

	//为商品添加订单号
	@Override
	public void updataOrderdDet(int orderId) {
		tOrderDetailsMapper.updateOrderdDet(orderId);
	}
	
}
