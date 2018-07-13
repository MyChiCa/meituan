package com.meituan.service;

import java.util.List;

import com.MeiTuan.pojo.TUser;

public interface UserService {
     public List<TUser> selectAllUser();
     public void delById(Integer userId);
     public TUser findById(Integer userId);
     public void updateUser(TUser tUser);
}
