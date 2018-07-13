package com.meituan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MeiTuan.mapper.TFoodMapper;
import com.MeiTuan.mapper.TMenuMapper;
import com.MeiTuan.pojo.TFood;
import com.MeiTuan.pojo.TMenu;
import com.meituan.service.FoodService;


@Service
public class FoodServiceImpl implements FoodService {

@Autowired
private TFoodMapper tFoodMapper;
@Autowired
private TMenuMapper tMenuMapper;
    /*
     * 显示所有菜色
     * @see com.meituan.service.FoodService#showAllfood()
     */
	@Override
	public List<TFood> showAllfood() {
		List<TFood> list = tFoodMapper.selectAllFood();
		return list;
	}
	@Override
	public void delFood(Integer foodId) {
		tFoodMapper.deleteByPrimaryKey(foodId);		
	}
	@Override
	public List<TMenu> selectAllMenu(Integer foodId) {
		List<TMenu> menuList= tMenuMapper.selectAllMenu(foodId);
		return menuList;
	}

}
