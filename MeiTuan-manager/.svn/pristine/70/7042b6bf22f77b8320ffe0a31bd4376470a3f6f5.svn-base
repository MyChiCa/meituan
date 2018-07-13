package com.meituan.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.MeiTuan.mapper.TAdminMapper;
import com.MeiTuan.pojo.TAdmin;
import com.meituan.service.AdminService;

/*
 * 管理员登录验证
 */
@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	TAdminMapper tAdminMapping;
	@Override
	public TAdmin findAdmin(TAdmin admin) {
	 
		TAdmin tAdmin = tAdminMapping.selectByTelAndPasw(admin);
		return tAdmin;
	}
	@Override
	public void updateAdmin(TAdmin admin) {
		 tAdminMapping.updateByPrimaryKey(admin);
	}

    
}
