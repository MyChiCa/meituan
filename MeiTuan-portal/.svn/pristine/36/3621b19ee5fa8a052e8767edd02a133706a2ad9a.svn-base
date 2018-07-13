package com.MeiTuan.portal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MeiTuan.portal.mapper.TRestaurantMapper;
import com.MeiTuan.portal.pojo.TRestaurant;
import com.MeiTuan.portal.service.RestaurantService;
@Service
public class RestauranServiceImpl implements RestaurantService {
@Autowired
TRestaurantMapper trestaurantMapper;
	//处理餐馆的全部信息
	@Override
	public List<TRestaurant> selectAllRest() {
		List<TRestaurant> list = null;
		list = trestaurantMapper.selectAll();
		return list;
	}
	//按页展示餐馆信息
	@Override
	public List<TRestaurant> showRestByPage(int page, int pageSize) {
		List<TRestaurant> list = null;
		list = trestaurantMapper.selectByPage(page, pageSize);
		return list;
	}
	//根据餐馆类型展示餐馆信息
	@Override
	public List<TRestaurant> selectRestById(int rstrId) {
		List<TRestaurant> list = null;
		list = trestaurantMapper.selectById(rstrId);
		return list;
	}
}
