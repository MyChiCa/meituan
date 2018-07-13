package com.meituan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MeiTuan.mapper.TRestaurantMapper;
import com.MeiTuan.mapper.TRestaurantTypeMapper;
import com.MeiTuan.pojo.TRestaurant;
import com.MeiTuan.pojo.TRestaurantType;
import com.meituan.service.RestaurantService;

@Service
public class RestaurantServiceImpl implements RestaurantService {

@Autowired
private TRestaurantMapper tRestaurantMapper;
@Autowired
private TRestaurantTypeMapper tRestaurantTypeMapper;
	@Override
	public List<TRestaurant> showAllRestaurant() {
		List<TRestaurant> rest = tRestaurantMapper.selectAllRest();
		return rest;
	}
	@Override
	public TRestaurant findById(Integer rstrId) {
		TRestaurant tRestaurant = tRestaurantMapper.selectByPrimaryKey(rstrId);
		return tRestaurant;
	}
	@Override
	public void updateById(TRestaurant tRestaurant) {
		tRestaurantMapper.updateByPrimaryKey(tRestaurant);		
	}
	@Override
	public void deleteById(Integer rstrId) {
		tRestaurantMapper.deleteByPrimaryKey(rstrId);
	}
	/*
	 * 增加新店铺
	 * @see com.meituan.service.RestaurantService#insertRstr(com.MeiTuan.pojo.TRestaurant)
	 */
	@Override
	public void insertRstr(TRestaurant tRestaurant) {
		tRestaurantMapper.insert(tRestaurant);		
	}
	@Override
	public List<TRestaurantType> findAllType() {
		List <TRestaurantType> list = tRestaurantTypeMapper.selectAllType();
		return list;
	}

}
