package com.MeiTuan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MeiTuan.mapper.TFoodMapper;
import com.MeiTuan.mapper.TMenuMapper;
import com.MeiTuan.pojo.TBusiness;
import com.MeiTuan.pojo.TFood;
import com.MeiTuan.pojo.TMenu;


@Service
public class FoodServiceImpl implements com.MeiTuan.service.FoodService {

@Autowired
private TFoodMapper tFoodMapper;
private TMenuMapper tMenuMapper;
    /*
     * 显示所有菜色
     * @see com.meituan.service.FoodService#showAllfood()
     */
	@Override
	public List<TFood> showAllfood(TBusiness tBusiness) {
		List<TFood> list = tFoodMapper.selectAllFood(tBusiness);
		return list;
	}
	@Override
	public void delFood(Integer foodId) {
		tFoodMapper.deleteByPrimaryKey(foodId);		
	}
	@Override
	public List<TMenu> selectAllMenu() {
		List<TMenu> menuList= tMenuMapper.selectAllMenu();
		return menuList;
	}
	@Override
	public TFood selectById(Integer foodId) {
		TFood tFood = tFoodMapper.selectByPrimaryKey(foodId);
		return tFood;
	}
	@Override
	public void updateFood(TFood tFood) {
		tFoodMapper.updateByPrimaryKey(tFood);
		
	}
	@Override
	public void addFood(TFood tFood) {
		tFoodMapper.insert(tFood);
	}

}
