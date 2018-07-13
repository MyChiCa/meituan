package com.MeiTuan.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.MeiTuan.mapper.TMenuMapper;
import com.MeiTuan.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService{
	
	@Autowired
	private TMenuMapper tMenuMapper;
    /*
     * 新增菜系
     * @see com.MeiTuan.service.MenuService#addMenu()
     */
	@Override
	public void addMenu(Integer id,String name) {
		tMenuMapper.insert(id,name);
	}

}
