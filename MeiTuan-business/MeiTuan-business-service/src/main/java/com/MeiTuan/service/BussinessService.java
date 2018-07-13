package com.MeiTuan.service;

import com.MeiTuan.pojo.TBusiness;

public interface BussinessService {

	TBusiness findBusiness(TBusiness tBusiness);

	void updateBusi(TBusiness tBusiness);

	void createBuss(TBusiness tBusiness);

}
