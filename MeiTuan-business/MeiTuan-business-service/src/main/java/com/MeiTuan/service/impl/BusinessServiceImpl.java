package com.MeiTuan.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MeiTuan.mapper.TBusinessMapper;
import com.MeiTuan.pojo.TBusiness;
import com.MeiTuan.service.BussinessService;

/*
 * 商家登录验证
 */
@Service
public class BusinessServiceImpl implements BussinessService {

   @Autowired
 private TBusinessMapper tBusinessMapper;
	@Override
	public TBusiness findBusiness(TBusiness tBusiness) {
		TBusiness tbusiness = tBusinessMapper.selectByTelAndPasw(tBusiness);
		return tbusiness;
	}

	@Override
	public void updateBusi(TBusiness tBusiness) {
		tBusinessMapper.updateByPrimaryKey(tBusiness);		
	}

	@Override
	public void createBuss(TBusiness tBusiness) {
		tBusinessMapper.insert(tBusiness);
		
	}


     
}
