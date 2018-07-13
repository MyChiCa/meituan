package com.meituan.service;

import com.MeiTuan.pojo.TAdmin;

public interface AdminService {

	public TAdmin findAdmin(TAdmin admin);
    public void updateAdmin(TAdmin admin);
}
