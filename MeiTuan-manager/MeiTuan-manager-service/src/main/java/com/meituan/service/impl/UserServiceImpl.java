package com.meituan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MeiTuan.mapper.TUserMapper;
import com.MeiTuan.pojo.TUser;
import com.meituan.service.UserService;


@Service
public class UserServiceImpl implements UserService{
@Autowired
private TUserMapper tUserMapper;
	@Override
	public List<TUser> selectAllUser() {
		List<TUser> list = tUserMapper.selectAllUser();
		return list;
	}
	@Override
	public void delById(Integer userId) {
		tUserMapper.deleteByPrimaryKey(userId);
	}
	@Override
	public TUser findById(Integer userId) {
		TUser user = tUserMapper.selectByPrimaryKey(userId);
		return user;		
	}
	@Override
	public void updateUser(TUser tUser) {
		tUserMapper.updateByPrimaryKey(tUser);
	}
	
}
