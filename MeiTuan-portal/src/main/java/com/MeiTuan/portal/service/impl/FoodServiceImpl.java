package com.MeiTuan.portal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MeiTuan.portal.mapper.TFoodMapper;
import com.MeiTuan.portal.pojo.TFood;
import com.MeiTuan.portal.service.FoodService;

@Service
public class FoodServiceImpl implements FoodService {
@Autowired
TFoodMapper tFoodMapper;

	@Override
	public List<TFood> selectFoodByType(int menuId) {
		List<TFood> list = null;
		list = tFoodMapper.selectFoodByType(menuId);
		return list;
	}

}
