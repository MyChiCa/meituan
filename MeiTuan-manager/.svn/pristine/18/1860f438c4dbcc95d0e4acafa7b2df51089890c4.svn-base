package com.meituan.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MeiTuan.mapper.TOrderDetailsMapper;
import com.MeiTuan.mapper.TOrderExtendMapper;
import com.MeiTuan.mapper.TOrderMapper;
import com.MeiTuan.pojo.OrderExtend;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private TOrderExtendMapper tOrderExtendMapper;
	@Autowired
	private TOrderMapper tOrderMapper;
	@Autowired
	private TOrderDetailsMapper tOrderDetailsMapper;

	@Override
	public List<OrderExtend> showAllorder() {
		List<OrderExtend> list = tOrderExtendMapper.showAllOrders();
		return list;		
	}

	@Override
	public void deleteById(Integer orderId) {
		tOrderMapper.deleteByPrimaryKey(orderId);
		tOrderDetailsMapper.deleteByPrimaryKey(orderId);
	}     
}
