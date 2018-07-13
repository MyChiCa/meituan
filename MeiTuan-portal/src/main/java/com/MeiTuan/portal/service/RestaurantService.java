package com.MeiTuan.portal.service;

import java.util.List;

import com.MeiTuan.portal.pojo.TRestaurant;

public interface RestaurantService {

	//处理全部的餐馆信息
	public List<TRestaurant> selectAllRest();

	public List<TRestaurant> showRestByPage(int page, int pageSize);

	public List<TRestaurant> selectRestById(int rstrId);
}
