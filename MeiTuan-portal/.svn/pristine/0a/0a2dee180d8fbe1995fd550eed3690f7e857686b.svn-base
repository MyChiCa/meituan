package com.MeiTuan.portal.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MeiTuan.portal.mapper.TUserMapper;
import com.MeiTuan.portal.pojo.TUser;
import com.MeiTuan.portal.service.UserService;
@Service
public class UserServiceImpl implements UserService{
@Autowired
TUserMapper tUserMapper;

    @Override
    public TUser ifexitUser(String telephone) {
	  TUser user = tUserMapper.selectBytelephone(telephone);
	  return user;
   }
/*
 * 注册
 * @see com.MeiTuan.portal.service.UserService#createUser(com.MeiTuan.portal.pojo.TUser)
 */
	@Override
	public void createUser(TUser user) {
        if(user!=null){
           user.setRegistrationTime(new Date());
		   tUserMapper.insert(user);	
      }
	}
	
	/*
	 * 登录验证
	 * @see com.MeiTuan.portal.service.UserService#login(long, java.lang.String, java.lang.String, java.lang.String)
	 */
	@Override
	public TUser login(String telephone, String password,String userName,String email) {
		TUser user = tUserMapper.findUserByNameAndPwd(telephone,password,userName,email);
		if(user!=null && user.getLoginPassword().equals(password)){
			user.setLoginTime(new Date());
			tUserMapper.insertLogintime(telephone,user.getLoginTime());
			return user;
		}
		return null;
	}
	
	//修改地址
	@Override
	public void modifyAddress(TUser tUser) {
		tUserMapper.modifyAddress(tUser);
	}
	
}
