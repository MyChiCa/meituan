package com.MeiTuan.portal.mapper;



import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.MeiTuan.portal.pojo.TUser;
import com.MeiTuan.portal.pojo.TUserExample;

public interface TUserMapper {
    int countByExample(TUserExample example);

    int deleteByExample(TUserExample example);

    int deleteByPrimaryKey(Integer userId);

    int insert(TUser record);

    int insertSelective(TUser record);

    List<TUser> selectByExample(TUserExample example);

    TUser selectByPrimaryKey(Integer userId);

    int updateByExampleSelective(@Param("record") TUser record, @Param("example") TUserExample example);

    int updateByExample(@Param("record") TUser record, @Param("example") TUserExample example);

    int updateByPrimaryKeySelective(TUser record);

    int updateByPrimaryKey(TUser record);
    
    //验证用户
	TUser findUserByNameAndPwd(@Param("telephone")String telephone ,@Param("password")String password,@Param("userName")String userName,@Param("email")String email);

	TUser selectBytelephone(String telephone);

	int insertLogintime(@Param("telephone")String telephone,@Param("loginTime")Date loginTime);
	
	//修改送货地址
	void modifyAddress(TUser tUser);
}